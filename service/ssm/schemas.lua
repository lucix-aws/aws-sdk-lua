local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.ssm"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AccountSharingInfo = schema.new({
    id = id.from(_N, "AccountSharingInfo"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "AccountSharingInfo", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        SharedDocumentVersion = schema.new({
            id = id.from(_N, "AccountSharingInfo", "SharedDocumentVersion"),
            type = "string",
            name = "SharedDocumentVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Activation = schema.new({
    id = id.from(_N, "Activation"),
    type = "structure",
    members = {
        ActivationId = schema.new({
            id = id.from(_N, "Activation", "ActivationId"),
            type = "string",
            name = "ActivationId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Activation", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DefaultInstanceName = schema.new({
            id = id.from(_N, "Activation", "DefaultInstanceName"),
            type = "string",
            name = "DefaultInstanceName",
            target_id = prelude.String.id,
        }),
        IamRole = schema.new({
            id = id.from(_N, "Activation", "IamRole"),
            type = "string",
            name = "IamRole",
            target_id = prelude.String.id,
        }),
        RegistrationLimit = schema.new({
            id = id.from(_N, "Activation", "RegistrationLimit"),
            type = "integer",
            name = "RegistrationLimit",
            target_id = prelude.Integer.id,
        }),
        RegistrationsCount = schema.new({
            id = id.from(_N, "Activation", "RegistrationsCount"),
            type = "integer",
            name = "RegistrationsCount",
            target_id = prelude.Integer.id,
        }),
        ExpirationDate = schema.new({
            id = id.from(_N, "Activation", "ExpirationDate"),
            type = "timestamp",
            name = "ExpirationDate",
            target_id = prelude.Timestamp.id,
        }),
        Expired = schema.new({
            id = id.from(_N, "Activation", "Expired"),
            type = "boolean",
            name = "Expired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "Activation", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Activation", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.AddTagsToResourceInput = schema.new({
    id = id.from(_N, "AddTagsToResourceRequest"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddTagsToResourceOutput = schema.new({
    id = id.from(_N, "AddTagsToResourceResult"),
    type = "structure",
})

M.InternalServerError = schema.new({
    id = id.from(_N, "InternalServerError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidResourceId = schema.new({
    id = id.from(_N, "InvalidResourceId"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.InvalidResourceType = schema.new({
    id = id.from(_N, "InvalidResourceType"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.TooManyTagsError = schema.new({
    id = id.from(_N, "TooManyTagsError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.TooManyUpdates = schema.new({
    id = id.from(_N, "TooManyUpdates"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyUpdates", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Alarm = schema.new({
    id = id.from(_N, "Alarm"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Alarm", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AlarmConfiguration = schema.new({
    id = id.from(_N, "AlarmConfiguration"),
    type = "structure",
    members = {
        IgnorePollAlarmFailure = schema.new({
            id = id.from(_N, "AlarmConfiguration", "IgnorePollAlarmFailure"),
            type = "boolean",
            name = "IgnorePollAlarmFailure",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Alarms = schema.new({
            id = id.from(_N, "AlarmConfiguration", "Alarms"),
            type = "list",
            name = "Alarms",
            target_id = prelude.Document.id,
            list_member = M.Alarm,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AlarmStateInformation = schema.new({
    id = id.from(_N, "AlarmStateInformation"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AlarmStateInformation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        State = schema.new({
            id = id.from(_N, "AlarmStateInformation", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AlreadyExistsException = schema.new({
    id = id.from(_N, "AlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateOpsItemRelatedItemInput = schema.new({
    id = id.from(_N, "AssociateOpsItemRelatedItemRequest"),
    type = "structure",
    members = {
        OpsItemId = schema.new({
            id = id.from(_N, "AssociateOpsItemRelatedItemInput", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssociationType = schema.new({
            id = id.from(_N, "AssociateOpsItemRelatedItemInput", "AssociationType"),
            type = "string",
            name = "AssociationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "AssociateOpsItemRelatedItemInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceUri = schema.new({
            id = id.from(_N, "AssociateOpsItemRelatedItemInput", "ResourceUri"),
            type = "string",
            name = "ResourceUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateOpsItemRelatedItemOutput = schema.new({
    id = id.from(_N, "AssociateOpsItemRelatedItemResponse"),
    type = "structure",
    members = {
        AssociationId = schema.new({
            id = id.from(_N, "AssociateOpsItemRelatedItemOutput", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemConflictException = schema.new({
    id = id.from(_N, "OpsItemConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OpsItemConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemInvalidParameterException = schema.new({
    id = id.from(_N, "OpsItemInvalidParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ParameterNames = schema.new({
            id = id.from(_N, "OpsItemInvalidParameterException", "ParameterNames"),
            type = "list",
            name = "ParameterNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Message = schema.new({
            id = id.from(_N, "OpsItemInvalidParameterException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemLimitExceededException = schema.new({
    id = id.from(_N, "OpsItemLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ResourceTypes = schema.new({
            id = id.from(_N, "OpsItemLimitExceededException", "ResourceTypes"),
            type = "list",
            name = "ResourceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Limit = schema.new({
            id = id.from(_N, "OpsItemLimitExceededException", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LimitType = schema.new({
            id = id.from(_N, "OpsItemLimitExceededException", "LimitType"),
            type = "string",
            name = "LimitType",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "OpsItemLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemNotFoundException = schema.new({
    id = id.from(_N, "OpsItemNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OpsItemNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemRelatedItemAlreadyExistsException = schema.new({
    id = id.from(_N, "OpsItemRelatedItemAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OpsItemRelatedItemAlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceUri = schema.new({
            id = id.from(_N, "OpsItemRelatedItemAlreadyExistsException", "ResourceUri"),
            type = "string",
            name = "ResourceUri",
            target_id = prelude.String.id,
        }),
        OpsItemId = schema.new({
            id = id.from(_N, "OpsItemRelatedItemAlreadyExistsException", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelCommandInput = schema.new({
    id = id.from(_N, "CancelCommandRequest"),
    type = "structure",
    members = {
        CommandId = schema.new({
            id = id.from(_N, "CancelCommandInput", "CommandId"),
            type = "string",
            name = "CommandId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceIds = schema.new({
            id = id.from(_N, "CancelCommandInput", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CancelCommandOutput = schema.new({
    id = id.from(_N, "CancelCommandResult"),
    type = "structure",
})

M.DuplicateInstanceId = schema.new({
    id = id.from(_N, "DuplicateInstanceId"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.InvalidCommandId = schema.new({
    id = id.from(_N, "InvalidCommandId"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.InvalidInstanceId = schema.new({
    id = id.from(_N, "InvalidInstanceId"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidInstanceId", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelMaintenanceWindowExecutionInput = schema.new({
    id = id.from(_N, "CancelMaintenanceWindowExecutionRequest"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "CancelMaintenanceWindowExecutionInput", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelMaintenanceWindowExecutionOutput = schema.new({
    id = id.from(_N, "CancelMaintenanceWindowExecutionResult"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "CancelMaintenanceWindowExecutionOutput", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
        }),
    },
})

M.DoesNotExistException = schema.new({
    id = id.from(_N, "DoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DoesNotExistException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistrationMetadataItem = schema.new({
    id = id.from(_N, "RegistrationMetadataItem"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "RegistrationMetadataItem", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "RegistrationMetadataItem", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateActivationInput = schema.new({
    id = id.from(_N, "CreateActivationRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateActivationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DefaultInstanceName = schema.new({
            id = id.from(_N, "CreateActivationInput", "DefaultInstanceName"),
            type = "string",
            name = "DefaultInstanceName",
            target_id = prelude.String.id,
        }),
        IamRole = schema.new({
            id = id.from(_N, "CreateActivationInput", "IamRole"),
            type = "string",
            name = "IamRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationLimit = schema.new({
            id = id.from(_N, "CreateActivationInput", "RegistrationLimit"),
            type = "integer",
            name = "RegistrationLimit",
            target_id = prelude.Integer.id,
        }),
        ExpirationDate = schema.new({
            id = id.from(_N, "CreateActivationInput", "ExpirationDate"),
            type = "timestamp",
            name = "ExpirationDate",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateActivationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        RegistrationMetadata = schema.new({
            id = id.from(_N, "CreateActivationInput", "RegistrationMetadata"),
            type = "list",
            name = "RegistrationMetadata",
            target_id = prelude.Document.id,
            list_member = M.RegistrationMetadataItem,
        }),
    },
})

M.CreateActivationOutput = schema.new({
    id = id.from(_N, "CreateActivationResult"),
    type = "structure",
    members = {
        ActivationId = schema.new({
            id = id.from(_N, "CreateActivationOutput", "ActivationId"),
            type = "string",
            name = "ActivationId",
            target_id = prelude.String.id,
        }),
        ActivationCode = schema.new({
            id = id.from(_N, "CreateActivationOutput", "ActivationCode"),
            type = "string",
            name = "ActivationCode",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidParameters = schema.new({
    id = id.from(_N, "InvalidParameters"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidParameters", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationAlreadyExists = schema.new({
    id = id.from(_N, "AssociationAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.AssociationLimitExceeded = schema.new({
    id = id.from(_N, "AssociationLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.S3OutputLocation = schema.new({
    id = id.from(_N, "S3OutputLocation"),
    type = "structure",
    members = {
        OutputS3Region = schema.new({
            id = id.from(_N, "S3OutputLocation", "OutputS3Region"),
            type = "string",
            name = "OutputS3Region",
            target_id = prelude.String.id,
        }),
        OutputS3BucketName = schema.new({
            id = id.from(_N, "S3OutputLocation", "OutputS3BucketName"),
            type = "string",
            name = "OutputS3BucketName",
            target_id = prelude.String.id,
        }),
        OutputS3KeyPrefix = schema.new({
            id = id.from(_N, "S3OutputLocation", "OutputS3KeyPrefix"),
            type = "string",
            name = "OutputS3KeyPrefix",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceAssociationOutputLocation = schema.new({
    id = id.from(_N, "InstanceAssociationOutputLocation"),
    type = "structure",
    members = {
        S3Location = schema.new({
            id = id.from(_N, "InstanceAssociationOutputLocation", "S3Location"),
            type = "structure",
            name = "S3Location",
            target_id = id.from(_N, "S3OutputLocation"),
            target = M.S3OutputLocation,
        }),
    },
})

M.Target = schema.new({
    id = id.from(_N, "Target"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Target", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "Target", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.TargetLocation = schema.new({
    id = id.from(_N, "TargetLocation"),
    type = "structure",
    members = {
        Accounts = schema.new({
            id = id.from(_N, "TargetLocation", "Accounts"),
            type = "list",
            name = "Accounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Regions = schema.new({
            id = id.from(_N, "TargetLocation", "Regions"),
            type = "list",
            name = "Regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TargetLocationMaxConcurrency = schema.new({
            id = id.from(_N, "TargetLocation", "TargetLocationMaxConcurrency"),
            type = "string",
            name = "TargetLocationMaxConcurrency",
            target_id = prelude.String.id,
        }),
        TargetLocationMaxErrors = schema.new({
            id = id.from(_N, "TargetLocation", "TargetLocationMaxErrors"),
            type = "string",
            name = "TargetLocationMaxErrors",
            target_id = prelude.String.id,
        }),
        ExecutionRoleName = schema.new({
            id = id.from(_N, "TargetLocation", "ExecutionRoleName"),
            type = "string",
            name = "ExecutionRoleName",
            target_id = prelude.String.id,
        }),
        TargetLocationAlarmConfiguration = schema.new({
            id = id.from(_N, "TargetLocation", "TargetLocationAlarmConfiguration"),
            type = "structure",
            name = "TargetLocationAlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        IncludeChildOrganizationUnits = schema.new({
            id = id.from(_N, "TargetLocation", "IncludeChildOrganizationUnits"),
            type = "boolean",
            name = "IncludeChildOrganizationUnits",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ExcludeAccounts = schema.new({
            id = id.from(_N, "TargetLocation", "ExcludeAccounts"),
            type = "list",
            name = "ExcludeAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Targets = schema.new({
            id = id.from(_N, "TargetLocation", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TargetsMaxConcurrency = schema.new({
            id = id.from(_N, "TargetLocation", "TargetsMaxConcurrency"),
            type = "string",
            name = "TargetsMaxConcurrency",
            target_id = prelude.String.id,
        }),
        TargetsMaxErrors = schema.new({
            id = id.from(_N, "TargetLocation", "TargetsMaxErrors"),
            type = "string",
            name = "TargetsMaxErrors",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAssociationInput = schema.new({
    id = id.from(_N, "CreateAssociationRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateAssociationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "CreateAssociationInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "CreateAssociationInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "CreateAssociationInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        Targets = schema.new({
            id = id.from(_N, "CreateAssociationInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        ScheduleExpression = schema.new({
            id = id.from(_N, "CreateAssociationInput", "ScheduleExpression"),
            type = "string",
            name = "ScheduleExpression",
            target_id = prelude.String.id,
        }),
        OutputLocation = schema.new({
            id = id.from(_N, "CreateAssociationInput", "OutputLocation"),
            type = "structure",
            name = "OutputLocation",
            target_id = id.from(_N, "InstanceAssociationOutputLocation"),
            target = M.InstanceAssociationOutputLocation,
        }),
        AssociationName = schema.new({
            id = id.from(_N, "CreateAssociationInput", "AssociationName"),
            type = "string",
            name = "AssociationName",
            target_id = prelude.String.id,
        }),
        AutomationTargetParameterName = schema.new({
            id = id.from(_N, "CreateAssociationInput", "AutomationTargetParameterName"),
            type = "string",
            name = "AutomationTargetParameterName",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "CreateAssociationInput", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "CreateAssociationInput", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        ComplianceSeverity = schema.new({
            id = id.from(_N, "CreateAssociationInput", "ComplianceSeverity"),
            type = "string",
            name = "ComplianceSeverity",
            target_id = prelude.String.id,
        }),
        SyncCompliance = schema.new({
            id = id.from(_N, "CreateAssociationInput", "SyncCompliance"),
            type = "string",
            name = "SyncCompliance",
            target_id = prelude.String.id,
        }),
        ApplyOnlyAtCronInterval = schema.new({
            id = id.from(_N, "CreateAssociationInput", "ApplyOnlyAtCronInterval"),
            type = "boolean",
            name = "ApplyOnlyAtCronInterval",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CalendarNames = schema.new({
            id = id.from(_N, "CreateAssociationInput", "CalendarNames"),
            type = "list",
            name = "CalendarNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TargetLocations = schema.new({
            id = id.from(_N, "CreateAssociationInput", "TargetLocations"),
            type = "list",
            name = "TargetLocations",
            target_id = prelude.Document.id,
            list_member = M.TargetLocation,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "CreateAssociationInput", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "CreateAssociationInput", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "CreateAssociationInput", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateAssociationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "CreateAssociationInput", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        AssociationDispatchAssumeRole = schema.new({
            id = id.from(_N, "CreateAssociationInput", "AssociationDispatchAssumeRole"),
            type = "string",
            name = "AssociationDispatchAssumeRole",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationOverview = schema.new({
    id = id.from(_N, "AssociationOverview"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "AssociationOverview", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        DetailedStatus = schema.new({
            id = id.from(_N, "AssociationOverview", "DetailedStatus"),
            type = "string",
            name = "DetailedStatus",
            target_id = prelude.String.id,
        }),
        AssociationStatusAggregatedCount = schema.new({
            id = id.from(_N, "AssociationOverview", "AssociationStatusAggregatedCount"),
            type = "map",
            name = "AssociationStatusAggregatedCount",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
        }),
    },
})

M.AssociationStatus = schema.new({
    id = id.from(_N, "AssociationStatus"),
    type = "structure",
    members = {
        Date = schema.new({
            id = id.from(_N, "AssociationStatus", "Date"),
            type = "timestamp",
            name = "Date",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "AssociationStatus", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "AssociationStatus", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AdditionalInfo = schema.new({
            id = id.from(_N, "AssociationStatus", "AdditionalInfo"),
            type = "string",
            name = "AdditionalInfo",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationDescription = schema.new({
    id = id.from(_N, "AssociationDescription"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AssociationDescription", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "AssociationDescription", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        AssociationVersion = schema.new({
            id = id.from(_N, "AssociationDescription", "AssociationVersion"),
            type = "string",
            name = "AssociationVersion",
            target_id = prelude.String.id,
        }),
        Date = schema.new({
            id = id.from(_N, "AssociationDescription", "Date"),
            type = "timestamp",
            name = "Date",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdateAssociationDate = schema.new({
            id = id.from(_N, "AssociationDescription", "LastUpdateAssociationDate"),
            type = "timestamp",
            name = "LastUpdateAssociationDate",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "AssociationDescription", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "AssociationStatus"),
            target = M.AssociationStatus,
        }),
        Overview = schema.new({
            id = id.from(_N, "AssociationDescription", "Overview"),
            type = "structure",
            name = "Overview",
            target_id = id.from(_N, "AssociationOverview"),
            target = M.AssociationOverview,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "AssociationDescription", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        AutomationTargetParameterName = schema.new({
            id = id.from(_N, "AssociationDescription", "AutomationTargetParameterName"),
            type = "string",
            name = "AutomationTargetParameterName",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "AssociationDescription", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        AssociationId = schema.new({
            id = id.from(_N, "AssociationDescription", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "AssociationDescription", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        ScheduleExpression = schema.new({
            id = id.from(_N, "AssociationDescription", "ScheduleExpression"),
            type = "string",
            name = "ScheduleExpression",
            target_id = prelude.String.id,
        }),
        OutputLocation = schema.new({
            id = id.from(_N, "AssociationDescription", "OutputLocation"),
            type = "structure",
            name = "OutputLocation",
            target_id = id.from(_N, "InstanceAssociationOutputLocation"),
            target = M.InstanceAssociationOutputLocation,
        }),
        LastExecutionDate = schema.new({
            id = id.from(_N, "AssociationDescription", "LastExecutionDate"),
            type = "timestamp",
            name = "LastExecutionDate",
            target_id = prelude.Timestamp.id,
        }),
        LastSuccessfulExecutionDate = schema.new({
            id = id.from(_N, "AssociationDescription", "LastSuccessfulExecutionDate"),
            type = "timestamp",
            name = "LastSuccessfulExecutionDate",
            target_id = prelude.Timestamp.id,
        }),
        AssociationName = schema.new({
            id = id.from(_N, "AssociationDescription", "AssociationName"),
            type = "string",
            name = "AssociationName",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "AssociationDescription", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "AssociationDescription", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        ComplianceSeverity = schema.new({
            id = id.from(_N, "AssociationDescription", "ComplianceSeverity"),
            type = "string",
            name = "ComplianceSeverity",
            target_id = prelude.String.id,
        }),
        SyncCompliance = schema.new({
            id = id.from(_N, "AssociationDescription", "SyncCompliance"),
            type = "string",
            name = "SyncCompliance",
            target_id = prelude.String.id,
        }),
        ApplyOnlyAtCronInterval = schema.new({
            id = id.from(_N, "AssociationDescription", "ApplyOnlyAtCronInterval"),
            type = "boolean",
            name = "ApplyOnlyAtCronInterval",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CalendarNames = schema.new({
            id = id.from(_N, "AssociationDescription", "CalendarNames"),
            type = "list",
            name = "CalendarNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TargetLocations = schema.new({
            id = id.from(_N, "AssociationDescription", "TargetLocations"),
            type = "list",
            name = "TargetLocations",
            target_id = prelude.Document.id,
            list_member = M.TargetLocation,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "AssociationDescription", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "AssociationDescription", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "AssociationDescription", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "AssociationDescription", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        TriggeredAlarms = schema.new({
            id = id.from(_N, "AssociationDescription", "TriggeredAlarms"),
            type = "list",
            name = "TriggeredAlarms",
            target_id = prelude.Document.id,
            list_member = M.AlarmStateInformation,
        }),
        AssociationDispatchAssumeRole = schema.new({
            id = id.from(_N, "AssociationDescription", "AssociationDispatchAssumeRole"),
            type = "string",
            name = "AssociationDispatchAssumeRole",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAssociationOutput = schema.new({
    id = id.from(_N, "CreateAssociationResult"),
    type = "structure",
    members = {
        AssociationDescription = schema.new({
            id = id.from(_N, "CreateAssociationOutput", "AssociationDescription"),
            type = "structure",
            name = "AssociationDescription",
            target_id = id.from(_N, "AssociationDescription"),
            target = M.AssociationDescription,
        }),
    },
})

M.InvalidDocument = schema.new({
    id = id.from(_N, "InvalidDocument"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidDocument", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDocumentVersion = schema.new({
    id = id.from(_N, "InvalidDocumentVersion"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidDocumentVersion", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOutputLocation = schema.new({
    id = id.from(_N, "InvalidOutputLocation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.InvalidSchedule = schema.new({
    id = id.from(_N, "InvalidSchedule"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidSchedule", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTag = schema.new({
    id = id.from(_N, "InvalidTag"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidTag", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTarget = schema.new({
    id = id.from(_N, "InvalidTarget"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidTarget", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTargetMaps = schema.new({
    id = id.from(_N, "InvalidTargetMaps"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidTargetMaps", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedPlatformType = schema.new({
    id = id.from(_N, "UnsupportedPlatformType"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedPlatformType", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAssociationBatchRequestEntry = schema.new({
    id = id.from(_N, "CreateAssociationBatchRequestEntry"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceId = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        AutomationTargetParameterName = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "AutomationTargetParameterName"),
            type = "string",
            name = "AutomationTargetParameterName",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        ScheduleExpression = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "ScheduleExpression"),
            type = "string",
            name = "ScheduleExpression",
            target_id = prelude.String.id,
        }),
        OutputLocation = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "OutputLocation"),
            type = "structure",
            name = "OutputLocation",
            target_id = id.from(_N, "InstanceAssociationOutputLocation"),
            target = M.InstanceAssociationOutputLocation,
        }),
        AssociationName = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "AssociationName"),
            type = "string",
            name = "AssociationName",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        ComplianceSeverity = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "ComplianceSeverity"),
            type = "string",
            name = "ComplianceSeverity",
            target_id = prelude.String.id,
        }),
        SyncCompliance = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "SyncCompliance"),
            type = "string",
            name = "SyncCompliance",
            target_id = prelude.String.id,
        }),
        ApplyOnlyAtCronInterval = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "ApplyOnlyAtCronInterval"),
            type = "boolean",
            name = "ApplyOnlyAtCronInterval",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CalendarNames = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "CalendarNames"),
            type = "list",
            name = "CalendarNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TargetLocations = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "TargetLocations"),
            type = "list",
            name = "TargetLocations",
            target_id = prelude.Document.id,
            list_member = M.TargetLocation,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "CreateAssociationBatchRequestEntry", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
    },
})

M.CreateAssociationBatchInput = schema.new({
    id = id.from(_N, "CreateAssociationBatchRequest"),
    type = "structure",
    members = {
        Entries = schema.new({
            id = id.from(_N, "CreateAssociationBatchInput", "Entries"),
            type = "list",
            name = "Entries",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CreateAssociationBatchRequestEntry, traits = { [traits.XML_NAME] = { name = "entries" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssociationDispatchAssumeRole = schema.new({
            id = id.from(_N, "CreateAssociationBatchInput", "AssociationDispatchAssumeRole"),
            type = "string",
            name = "AssociationDispatchAssumeRole",
            target_id = prelude.String.id,
        }),
    },
})

M.FailedCreateAssociation = schema.new({
    id = id.from(_N, "FailedCreateAssociation"),
    type = "structure",
    members = {
        Entry = schema.new({
            id = id.from(_N, "FailedCreateAssociation", "Entry"),
            type = "structure",
            name = "Entry",
            target_id = id.from(_N, "CreateAssociationBatchRequestEntry"),
            target = M.CreateAssociationBatchRequestEntry,
        }),
        Message = schema.new({
            id = id.from(_N, "FailedCreateAssociation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Fault = schema.new({
            id = id.from(_N, "FailedCreateAssociation", "Fault"),
            type = "string",
            name = "Fault",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAssociationBatchOutput = schema.new({
    id = id.from(_N, "CreateAssociationBatchResult"),
    type = "structure",
    members = {
        Successful = schema.new({
            id = id.from(_N, "CreateAssociationBatchOutput", "Successful"),
            type = "list",
            name = "Successful",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AssociationDescription, traits = { [traits.XML_NAME] = { name = "AssociationDescription" } } }),
        }),
        Failed = schema.new({
            id = id.from(_N, "CreateAssociationBatchOutput", "Failed"),
            type = "list",
            name = "Failed",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.FailedCreateAssociation, traits = { [traits.XML_NAME] = { name = "FailedCreateAssociationEntry" } } }),
        }),
    },
})

M.AttachmentsSource = schema.new({
    id = id.from(_N, "AttachmentsSource"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "AttachmentsSource", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "AttachmentsSource", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Name = schema.new({
            id = id.from(_N, "AttachmentsSource", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentRequires = schema.new({
    id = id.from(_N, "DocumentRequires"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DocumentRequires", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Version = schema.new({
            id = id.from(_N, "DocumentRequires", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
        RequireType = schema.new({
            id = id.from(_N, "DocumentRequires", "RequireType"),
            type = "string",
            name = "RequireType",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "DocumentRequires", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDocumentInput = schema.new({
    id = id.from(_N, "CreateDocumentRequest"),
    type = "structure",
    members = {
        Content = schema.new({
            id = id.from(_N, "CreateDocumentInput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Requires = schema.new({
            id = id.from(_N, "CreateDocumentInput", "Requires"),
            type = "list",
            name = "Requires",
            target_id = prelude.Document.id,
            list_member = M.DocumentRequires,
        }),
        Attachments = schema.new({
            id = id.from(_N, "CreateDocumentInput", "Attachments"),
            type = "list",
            name = "Attachments",
            target_id = prelude.Document.id,
            list_member = M.AttachmentsSource,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateDocumentInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "CreateDocumentInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "CreateDocumentInput", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        DocumentType = schema.new({
            id = id.from(_N, "CreateDocumentInput", "DocumentType"),
            type = "string",
            name = "DocumentType",
            target_id = prelude.String.id,
        }),
        DocumentFormat = schema.new({
            id = id.from(_N, "CreateDocumentInput", "DocumentFormat"),
            type = "string",
            name = "DocumentFormat",
            target_id = prelude.String.id,
        }),
        TargetType = schema.new({
            id = id.from(_N, "CreateDocumentInput", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDocumentInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.AttachmentInformation = schema.new({
    id = id.from(_N, "AttachmentInformation"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AttachmentInformation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentParameter = schema.new({
    id = id.from(_N, "DocumentParameter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DocumentParameter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "DocumentParameter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DocumentParameter", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DefaultValue = schema.new({
            id = id.from(_N, "DocumentParameter", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ReviewInformation = schema.new({
    id = id.from(_N, "ReviewInformation"),
    type = "structure",
    members = {
        ReviewedTime = schema.new({
            id = id.from(_N, "ReviewInformation", "ReviewedTime"),
            type = "timestamp",
            name = "ReviewedTime",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReviewInformation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Reviewer = schema.new({
            id = id.from(_N, "ReviewInformation", "Reviewer"),
            type = "string",
            name = "Reviewer",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentDescription = schema.new({
    id = id.from(_N, "DocumentDescription"),
    type = "structure",
    members = {
        Sha1 = schema.new({
            id = id.from(_N, "DocumentDescription", "Sha1"),
            type = "string",
            name = "Sha1",
            target_id = prelude.String.id,
        }),
        Hash = schema.new({
            id = id.from(_N, "DocumentDescription", "Hash"),
            type = "string",
            name = "Hash",
            target_id = prelude.String.id,
        }),
        HashType = schema.new({
            id = id.from(_N, "DocumentDescription", "HashType"),
            type = "string",
            name = "HashType",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DocumentDescription", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "DocumentDescription", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "DocumentDescription", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "DocumentDescription", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "DocumentDescription", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DocumentDescription", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusInformation = schema.new({
            id = id.from(_N, "DocumentDescription", "StatusInformation"),
            type = "string",
            name = "StatusInformation",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "DocumentDescription", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DocumentDescription", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "DocumentDescription", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DocumentParameter, traits = { [traits.XML_NAME] = { name = "DocumentParameter" } } }),
        }),
        PlatformTypes = schema.new({
            id = id.from(_N, "DocumentDescription", "PlatformTypes"),
            type = "list",
            name = "PlatformTypes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "PlatformType" } } }),
        }),
        DocumentType = schema.new({
            id = id.from(_N, "DocumentDescription", "DocumentType"),
            type = "string",
            name = "DocumentType",
            target_id = prelude.String.id,
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "DocumentDescription", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "DocumentDescription", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        DefaultVersion = schema.new({
            id = id.from(_N, "DocumentDescription", "DefaultVersion"),
            type = "string",
            name = "DefaultVersion",
            target_id = prelude.String.id,
        }),
        DocumentFormat = schema.new({
            id = id.from(_N, "DocumentDescription", "DocumentFormat"),
            type = "string",
            name = "DocumentFormat",
            target_id = prelude.String.id,
        }),
        TargetType = schema.new({
            id = id.from(_N, "DocumentDescription", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DocumentDescription", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AttachmentsInformation = schema.new({
            id = id.from(_N, "DocumentDescription", "AttachmentsInformation"),
            type = "list",
            name = "AttachmentsInformation",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AttachmentInformation, traits = { [traits.XML_NAME] = { name = "AttachmentInformation" } } }),
        }),
        Requires = schema.new({
            id = id.from(_N, "DocumentDescription", "Requires"),
            type = "list",
            name = "Requires",
            target_id = prelude.Document.id,
            list_member = M.DocumentRequires,
        }),
        Author = schema.new({
            id = id.from(_N, "DocumentDescription", "Author"),
            type = "string",
            name = "Author",
            target_id = prelude.String.id,
        }),
        ReviewInformation = schema.new({
            id = id.from(_N, "DocumentDescription", "ReviewInformation"),
            type = "list",
            name = "ReviewInformation",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReviewInformation, traits = { [traits.XML_NAME] = { name = "ReviewInformation" } } }),
        }),
        ApprovedVersion = schema.new({
            id = id.from(_N, "DocumentDescription", "ApprovedVersion"),
            type = "string",
            name = "ApprovedVersion",
            target_id = prelude.String.id,
        }),
        PendingReviewVersion = schema.new({
            id = id.from(_N, "DocumentDescription", "PendingReviewVersion"),
            type = "string",
            name = "PendingReviewVersion",
            target_id = prelude.String.id,
        }),
        ReviewStatus = schema.new({
            id = id.from(_N, "DocumentDescription", "ReviewStatus"),
            type = "string",
            name = "ReviewStatus",
            target_id = prelude.String.id,
        }),
        Category = schema.new({
            id = id.from(_N, "DocumentDescription", "Category"),
            type = "list",
            name = "Category",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CategoryEnum = schema.new({
            id = id.from(_N, "DocumentDescription", "CategoryEnum"),
            type = "list",
            name = "CategoryEnum",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateDocumentOutput = schema.new({
    id = id.from(_N, "CreateDocumentResult"),
    type = "structure",
    members = {
        DocumentDescription = schema.new({
            id = id.from(_N, "CreateDocumentOutput", "DocumentDescription"),
            type = "structure",
            name = "DocumentDescription",
            target_id = id.from(_N, "DocumentDescription"),
            target = M.DocumentDescription,
        }),
    },
})

M.DocumentAlreadyExists = schema.new({
    id = id.from(_N, "DocumentAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DocumentAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentLimitExceeded = schema.new({
    id = id.from(_N, "DocumentLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DocumentLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDocumentContent = schema.new({
    id = id.from(_N, "InvalidDocumentContent"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidDocumentContent", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDocumentSchemaVersion = schema.new({
    id = id.from(_N, "InvalidDocumentSchemaVersion"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidDocumentSchemaVersion", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaxDocumentSizeExceeded = schema.new({
    id = id.from(_N, "MaxDocumentSizeExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "MaxDocumentSizeExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoLongerSupportedException = schema.new({
    id = id.from(_N, "NoLongerSupportedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoLongerSupportedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMaintenanceWindowInput = schema.new({
    id = id.from(_N, "CreateMaintenanceWindowRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        StartDate = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "StartDate"),
            type = "string",
            name = "StartDate",
            target_id = prelude.String.id,
        }),
        EndDate = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "EndDate"),
            type = "string",
            name = "EndDate",
            target_id = prelude.String.id,
        }),
        Schedule = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "Schedule"),
            type = "string",
            name = "Schedule",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScheduleTimezone = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "ScheduleTimezone"),
            type = "string",
            name = "ScheduleTimezone",
            target_id = prelude.String.id,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Cutoff = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "Cutoff"),
            type = "integer",
            name = "Cutoff",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AllowUnassociatedTargets = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "AllowUnassociatedTargets"),
            type = "boolean",
            name = "AllowUnassociatedTargets",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateMaintenanceWindowOutput = schema.new({
    id = id.from(_N, "CreateMaintenanceWindowResult"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "CreateMaintenanceWindowOutput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
    },
})

M.IdempotentParameterMismatch = schema.new({
    id = id.from(_N, "IdempotentParameterMismatch"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IdempotentParameterMismatch", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceLimitExceededException = schema.new({
    id = id.from(_N, "ResourceLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemNotification = schema.new({
    id = id.from(_N, "OpsItemNotification"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "OpsItemNotification", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemDataValue = schema.new({
    id = id.from(_N, "OpsItemDataValue"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "OpsItemDataValue", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "OpsItemDataValue", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.RelatedOpsItem = schema.new({
    id = id.from(_N, "RelatedOpsItem"),
    type = "structure",
    members = {
        OpsItemId = schema.new({
            id = id.from(_N, "RelatedOpsItem", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateOpsItemInput = schema.new({
    id = id.from(_N, "CreateOpsItemRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OpsItemType = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "OpsItemType"),
            type = "string",
            name = "OpsItemType",
            target_id = prelude.String.id,
        }),
        OperationalData = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "OperationalData"),
            type = "map",
            name = "OperationalData",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.OpsItemDataValue,
        }),
        Notifications = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "Notifications"),
            type = "list",
            name = "Notifications",
            target_id = prelude.Document.id,
            list_member = M.OpsItemNotification,
        }),
        Priority = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        RelatedOpsItems = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "RelatedOpsItems"),
            type = "list",
            name = "RelatedOpsItems",
            target_id = prelude.Document.id,
            list_member = M.RelatedOpsItem,
        }),
        Source = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Title = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Category = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        ActualStartTime = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "ActualStartTime"),
            type = "timestamp",
            name = "ActualStartTime",
            target_id = prelude.Timestamp.id,
        }),
        ActualEndTime = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "ActualEndTime"),
            type = "timestamp",
            name = "ActualEndTime",
            target_id = prelude.Timestamp.id,
        }),
        PlannedStartTime = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "PlannedStartTime"),
            type = "timestamp",
            name = "PlannedStartTime",
            target_id = prelude.Timestamp.id,
        }),
        PlannedEndTime = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "PlannedEndTime"),
            type = "timestamp",
            name = "PlannedEndTime",
            target_id = prelude.Timestamp.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "CreateOpsItemInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateOpsItemOutput = schema.new({
    id = id.from(_N, "CreateOpsItemResponse"),
    type = "structure",
    members = {
        OpsItemId = schema.new({
            id = id.from(_N, "CreateOpsItemOutput", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
        }),
        OpsItemArn = schema.new({
            id = id.from(_N, "CreateOpsItemOutput", "OpsItemArn"),
            type = "string",
            name = "OpsItemArn",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemAccessDeniedException = schema.new({
    id = id.from(_N, "OpsItemAccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OpsItemAccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemAlreadyExistsException = schema.new({
    id = id.from(_N, "OpsItemAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OpsItemAlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        OpsItemId = schema.new({
            id = id.from(_N, "OpsItemAlreadyExistsException", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
        }),
    },
})

M.MetadataValue = schema.new({
    id = id.from(_N, "MetadataValue"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "MetadataValue", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateOpsMetadataInput = schema.new({
    id = id.from(_N, "CreateOpsMetadataRequest"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "CreateOpsMetadataInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Metadata = schema.new({
            id = id.from(_N, "CreateOpsMetadataInput", "Metadata"),
            type = "map",
            name = "Metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MetadataValue,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOpsMetadataInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateOpsMetadataOutput = schema.new({
    id = id.from(_N, "CreateOpsMetadataResult"),
    type = "structure",
    members = {
        OpsMetadataArn = schema.new({
            id = id.from(_N, "CreateOpsMetadataOutput", "OpsMetadataArn"),
            type = "string",
            name = "OpsMetadataArn",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsMetadataAlreadyExistsException = schema.new({
    id = id.from(_N, "OpsMetadataAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OpsMetadataAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsMetadataInvalidArgumentException = schema.new({
    id = id.from(_N, "OpsMetadataInvalidArgumentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OpsMetadataInvalidArgumentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsMetadataLimitExceededException = schema.new({
    id = id.from(_N, "OpsMetadataLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OpsMetadataLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsMetadataTooManyUpdatesException = schema.new({
    id = id.from(_N, "OpsMetadataTooManyUpdatesException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OpsMetadataTooManyUpdatesException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PatchFilter = schema.new({
    id = id.from(_N, "PatchFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "PatchFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "PatchFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PatchFilterGroup = schema.new({
    id = id.from(_N, "PatchFilterGroup"),
    type = "structure",
    members = {
        PatchFilters = schema.new({
            id = id.from(_N, "PatchFilterGroup", "PatchFilters"),
            type = "list",
            name = "PatchFilters",
            target_id = prelude.Document.id,
            list_member = M.PatchFilter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PatchRule = schema.new({
    id = id.from(_N, "PatchRule"),
    type = "structure",
    members = {
        PatchFilterGroup = schema.new({
            id = id.from(_N, "PatchRule", "PatchFilterGroup"),
            type = "structure",
            name = "PatchFilterGroup",
            target_id = id.from(_N, "PatchFilterGroup"),
            target = M.PatchFilterGroup,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ComplianceLevel = schema.new({
            id = id.from(_N, "PatchRule", "ComplianceLevel"),
            type = "string",
            name = "ComplianceLevel",
            target_id = prelude.String.id,
        }),
        ApproveAfterDays = schema.new({
            id = id.from(_N, "PatchRule", "ApproveAfterDays"),
            type = "integer",
            name = "ApproveAfterDays",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        ApproveUntilDate = schema.new({
            id = id.from(_N, "PatchRule", "ApproveUntilDate"),
            type = "string",
            name = "ApproveUntilDate",
            target_id = prelude.String.id,
        }),
        EnableNonSecurity = schema.new({
            id = id.from(_N, "PatchRule", "EnableNonSecurity"),
            type = "boolean",
            name = "EnableNonSecurity",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.PatchRuleGroup = schema.new({
    id = id.from(_N, "PatchRuleGroup"),
    type = "structure",
    members = {
        PatchRules = schema.new({
            id = id.from(_N, "PatchRuleGroup", "PatchRules"),
            type = "list",
            name = "PatchRules",
            target_id = prelude.Document.id,
            list_member = M.PatchRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PatchSource = schema.new({
    id = id.from(_N, "PatchSource"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PatchSource", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Products = schema.new({
            id = id.from(_N, "PatchSource", "Products"),
            type = "list",
            name = "Products",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Configuration = schema.new({
            id = id.from(_N, "PatchSource", "Configuration"),
            type = "string",
            name = "Configuration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePatchBaselineInput = schema.new({
    id = id.from(_N, "CreatePatchBaselineRequest"),
    type = "structure",
    members = {
        OperatingSystem = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "OperatingSystem"),
            type = "string",
            name = "OperatingSystem",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GlobalFilters = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "GlobalFilters"),
            type = "structure",
            name = "GlobalFilters",
            target_id = id.from(_N, "PatchFilterGroup"),
            target = M.PatchFilterGroup,
        }),
        ApprovalRules = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "ApprovalRules"),
            type = "structure",
            name = "ApprovalRules",
            target_id = id.from(_N, "PatchRuleGroup"),
            target = M.PatchRuleGroup,
        }),
        ApprovedPatches = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "ApprovedPatches"),
            type = "list",
            name = "ApprovedPatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ApprovedPatchesComplianceLevel = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "ApprovedPatchesComplianceLevel"),
            type = "string",
            name = "ApprovedPatchesComplianceLevel",
            target_id = prelude.String.id,
        }),
        ApprovedPatchesEnableNonSecurity = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "ApprovedPatchesEnableNonSecurity"),
            type = "boolean",
            name = "ApprovedPatchesEnableNonSecurity",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        RejectedPatches = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "RejectedPatches"),
            type = "list",
            name = "RejectedPatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RejectedPatchesAction = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "RejectedPatchesAction"),
            type = "string",
            name = "RejectedPatchesAction",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Sources = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.PatchSource,
        }),
        AvailableSecurityUpdatesComplianceStatus = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "AvailableSecurityUpdatesComplianceStatus"),
            type = "string",
            name = "AvailableSecurityUpdatesComplianceStatus",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePatchBaselineInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreatePatchBaselineOutput = schema.new({
    id = id.from(_N, "CreatePatchBaselineResult"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "CreatePatchBaselineOutput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceDataSyncDestinationDataSharing = schema.new({
    id = id.from(_N, "ResourceDataSyncDestinationDataSharing"),
    type = "structure",
    members = {
        DestinationDataSharingType = schema.new({
            id = id.from(_N, "ResourceDataSyncDestinationDataSharing", "DestinationDataSharingType"),
            type = "string",
            name = "DestinationDataSharingType",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceDataSyncS3Destination = schema.new({
    id = id.from(_N, "ResourceDataSyncS3Destination"),
    type = "structure",
    members = {
        BucketName = schema.new({
            id = id.from(_N, "ResourceDataSyncS3Destination", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Prefix = schema.new({
            id = id.from(_N, "ResourceDataSyncS3Destination", "Prefix"),
            type = "string",
            name = "Prefix",
            target_id = prelude.String.id,
        }),
        SyncFormat = schema.new({
            id = id.from(_N, "ResourceDataSyncS3Destination", "SyncFormat"),
            type = "string",
            name = "SyncFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Region = schema.new({
            id = id.from(_N, "ResourceDataSyncS3Destination", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AWSKMSKeyARN = schema.new({
            id = id.from(_N, "ResourceDataSyncS3Destination", "AWSKMSKeyARN"),
            type = "string",
            name = "AWSKMSKeyARN",
            target_id = prelude.String.id,
        }),
        DestinationDataSharing = schema.new({
            id = id.from(_N, "ResourceDataSyncS3Destination", "DestinationDataSharing"),
            type = "structure",
            name = "DestinationDataSharing",
            target_id = id.from(_N, "ResourceDataSyncDestinationDataSharing"),
            target = M.ResourceDataSyncDestinationDataSharing,
        }),
    },
})

M.ResourceDataSyncOrganizationalUnit = schema.new({
    id = id.from(_N, "ResourceDataSyncOrganizationalUnit"),
    type = "structure",
    members = {
        OrganizationalUnitId = schema.new({
            id = id.from(_N, "ResourceDataSyncOrganizationalUnit", "OrganizationalUnitId"),
            type = "string",
            name = "OrganizationalUnitId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceDataSyncAwsOrganizationsSource = schema.new({
    id = id.from(_N, "ResourceDataSyncAwsOrganizationsSource"),
    type = "structure",
    members = {
        OrganizationSourceType = schema.new({
            id = id.from(_N, "ResourceDataSyncAwsOrganizationsSource", "OrganizationSourceType"),
            type = "string",
            name = "OrganizationSourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OrganizationalUnits = schema.new({
            id = id.from(_N, "ResourceDataSyncAwsOrganizationsSource", "OrganizationalUnits"),
            type = "list",
            name = "OrganizationalUnits",
            target_id = prelude.Document.id,
            list_member = M.ResourceDataSyncOrganizationalUnit,
        }),
    },
})

M.ResourceDataSyncSource = schema.new({
    id = id.from(_N, "ResourceDataSyncSource"),
    type = "structure",
    members = {
        SourceType = schema.new({
            id = id.from(_N, "ResourceDataSyncSource", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AwsOrganizationsSource = schema.new({
            id = id.from(_N, "ResourceDataSyncSource", "AwsOrganizationsSource"),
            type = "structure",
            name = "AwsOrganizationsSource",
            target_id = id.from(_N, "ResourceDataSyncAwsOrganizationsSource"),
            target = M.ResourceDataSyncAwsOrganizationsSource,
        }),
        SourceRegions = schema.new({
            id = id.from(_N, "ResourceDataSyncSource", "SourceRegions"),
            type = "list",
            name = "SourceRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IncludeFutureRegions = schema.new({
            id = id.from(_N, "ResourceDataSyncSource", "IncludeFutureRegions"),
            type = "boolean",
            name = "IncludeFutureRegions",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        EnableAllOpsDataSources = schema.new({
            id = id.from(_N, "ResourceDataSyncSource", "EnableAllOpsDataSources"),
            type = "boolean",
            name = "EnableAllOpsDataSources",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateResourceDataSyncInput = schema.new({
    id = id.from(_N, "CreateResourceDataSyncRequest"),
    type = "structure",
    members = {
        SyncName = schema.new({
            id = id.from(_N, "CreateResourceDataSyncInput", "SyncName"),
            type = "string",
            name = "SyncName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3Destination = schema.new({
            id = id.from(_N, "CreateResourceDataSyncInput", "S3Destination"),
            type = "structure",
            name = "S3Destination",
            target_id = id.from(_N, "ResourceDataSyncS3Destination"),
            target = M.ResourceDataSyncS3Destination,
        }),
        SyncType = schema.new({
            id = id.from(_N, "CreateResourceDataSyncInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
        }),
        SyncSource = schema.new({
            id = id.from(_N, "CreateResourceDataSyncInput", "SyncSource"),
            type = "structure",
            name = "SyncSource",
            target_id = id.from(_N, "ResourceDataSyncSource"),
            target = M.ResourceDataSyncSource,
        }),
    },
})

M.CreateResourceDataSyncOutput = schema.new({
    id = id.from(_N, "CreateResourceDataSyncResult"),
    type = "structure",
})

M.ResourceDataSyncAlreadyExistsException = schema.new({
    id = id.from(_N, "ResourceDataSyncAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        SyncName = schema.new({
            id = id.from(_N, "ResourceDataSyncAlreadyExistsException", "SyncName"),
            type = "string",
            name = "SyncName",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceDataSyncCountExceededException = schema.new({
    id = id.from(_N, "ResourceDataSyncCountExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceDataSyncCountExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceDataSyncInvalidConfigurationException = schema.new({
    id = id.from(_N, "ResourceDataSyncInvalidConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceDataSyncInvalidConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteActivationInput = schema.new({
    id = id.from(_N, "DeleteActivationRequest"),
    type = "structure",
    members = {
        ActivationId = schema.new({
            id = id.from(_N, "DeleteActivationInput", "ActivationId"),
            type = "string",
            name = "ActivationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteActivationOutput = schema.new({
    id = id.from(_N, "DeleteActivationResult"),
    type = "structure",
})

M.InvalidActivation = schema.new({
    id = id.from(_N, "InvalidActivation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidActivation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidActivationId = schema.new({
    id = id.from(_N, "InvalidActivationId"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidActivationId", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationDoesNotExist = schema.new({
    id = id.from(_N, "AssociationDoesNotExist"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AssociationDoesNotExist", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAssociationInput = schema.new({
    id = id.from(_N, "DeleteAssociationRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteAssociationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "DeleteAssociationInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        AssociationId = schema.new({
            id = id.from(_N, "DeleteAssociationInput", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAssociationOutput = schema.new({
    id = id.from(_N, "DeleteAssociationResult"),
    type = "structure",
})

M.AssociatedInstances = schema.new({
    id = id.from(_N, "AssociatedInstances"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.DeleteDocumentInput = schema.new({
    id = id.from(_N, "DeleteDocumentRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteDocumentInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "DeleteDocumentInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "DeleteDocumentInput", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        Force = schema.new({
            id = id.from(_N, "DeleteDocumentInput", "Force"),
            type = "boolean",
            name = "Force",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteDocumentOutput = schema.new({
    id = id.from(_N, "DeleteDocumentResult"),
    type = "structure",
})

M.InvalidDocumentOperation = schema.new({
    id = id.from(_N, "InvalidDocumentOperation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidDocumentOperation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteInventoryInput = schema.new({
    id = id.from(_N, "DeleteInventoryRequest"),
    type = "structure",
    members = {
        TypeName = schema.new({
            id = id.from(_N, "DeleteInventoryInput", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SchemaDeleteOption = schema.new({
            id = id.from(_N, "DeleteInventoryInput", "SchemaDeleteOption"),
            type = "string",
            name = "SchemaDeleteOption",
            target_id = prelude.String.id,
        }),
        DryRun = schema.new({
            id = id.from(_N, "DeleteInventoryInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "DeleteInventoryInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.InventoryDeletionSummaryItem = schema.new({
    id = id.from(_N, "InventoryDeletionSummaryItem"),
    type = "structure",
    members = {
        Version = schema.new({
            id = id.from(_N, "InventoryDeletionSummaryItem", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
        Count = schema.new({
            id = id.from(_N, "InventoryDeletionSummaryItem", "Count"),
            type = "integer",
            name = "Count",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        RemainingCount = schema.new({
            id = id.from(_N, "InventoryDeletionSummaryItem", "RemainingCount"),
            type = "integer",
            name = "RemainingCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.InventoryDeletionSummary = schema.new({
    id = id.from(_N, "InventoryDeletionSummary"),
    type = "structure",
    members = {
        TotalCount = schema.new({
            id = id.from(_N, "InventoryDeletionSummary", "TotalCount"),
            type = "integer",
            name = "TotalCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        RemainingCount = schema.new({
            id = id.from(_N, "InventoryDeletionSummary", "RemainingCount"),
            type = "integer",
            name = "RemainingCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SummaryItems = schema.new({
            id = id.from(_N, "InventoryDeletionSummary", "SummaryItems"),
            type = "list",
            name = "SummaryItems",
            target_id = prelude.Document.id,
            list_member = M.InventoryDeletionSummaryItem,
        }),
    },
})

M.DeleteInventoryOutput = schema.new({
    id = id.from(_N, "DeleteInventoryResult"),
    type = "structure",
    members = {
        DeletionId = schema.new({
            id = id.from(_N, "DeleteInventoryOutput", "DeletionId"),
            type = "string",
            name = "DeletionId",
            target_id = prelude.String.id,
        }),
        TypeName = schema.new({
            id = id.from(_N, "DeleteInventoryOutput", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
        }),
        DeletionSummary = schema.new({
            id = id.from(_N, "DeleteInventoryOutput", "DeletionSummary"),
            type = "structure",
            name = "DeletionSummary",
            target_id = id.from(_N, "InventoryDeletionSummary"),
            target = M.InventoryDeletionSummary,
        }),
    },
})

M.InvalidDeleteInventoryParametersException = schema.new({
    id = id.from(_N, "InvalidDeleteInventoryParametersException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidDeleteInventoryParametersException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInventoryRequestException = schema.new({
    id = id.from(_N, "InvalidInventoryRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidInventoryRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOptionException = schema.new({
    id = id.from(_N, "InvalidOptionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidOptionException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTypeNameException = schema.new({
    id = id.from(_N, "InvalidTypeNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidTypeNameException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteMaintenanceWindowInput = schema.new({
    id = id.from(_N, "DeleteMaintenanceWindowRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "DeleteMaintenanceWindowInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMaintenanceWindowOutput = schema.new({
    id = id.from(_N, "DeleteMaintenanceWindowResult"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "DeleteMaintenanceWindowOutput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteOpsItemInput = schema.new({
    id = id.from(_N, "DeleteOpsItemRequest"),
    type = "structure",
    members = {
        OpsItemId = schema.new({
            id = id.from(_N, "DeleteOpsItemInput", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteOpsItemOutput = schema.new({
    id = id.from(_N, "DeleteOpsItemResponse"),
    type = "structure",
})

M.DeleteOpsMetadataInput = schema.new({
    id = id.from(_N, "DeleteOpsMetadataRequest"),
    type = "structure",
    members = {
        OpsMetadataArn = schema.new({
            id = id.from(_N, "DeleteOpsMetadataInput", "OpsMetadataArn"),
            type = "string",
            name = "OpsMetadataArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteOpsMetadataOutput = schema.new({
    id = id.from(_N, "DeleteOpsMetadataResult"),
    type = "structure",
})

M.OpsMetadataNotFoundException = schema.new({
    id = id.from(_N, "OpsMetadataNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OpsMetadataNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteParameterInput = schema.new({
    id = id.from(_N, "DeleteParameterRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteParameterInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteParameterOutput = schema.new({
    id = id.from(_N, "DeleteParameterResult"),
    type = "structure",
})

M.ParameterNotFound = schema.new({
    id = id.from(_N, "ParameterNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParameterNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteParametersInput = schema.new({
    id = id.from(_N, "DeleteParametersRequest"),
    type = "structure",
    members = {
        Names = schema.new({
            id = id.from(_N, "DeleteParametersInput", "Names"),
            type = "list",
            name = "Names",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteParametersOutput = schema.new({
    id = id.from(_N, "DeleteParametersResult"),
    type = "structure",
    members = {
        DeletedParameters = schema.new({
            id = id.from(_N, "DeleteParametersOutput", "DeletedParameters"),
            type = "list",
            name = "DeletedParameters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InvalidParameters = schema.new({
            id = id.from(_N, "DeleteParametersOutput", "InvalidParameters"),
            type = "list",
            name = "InvalidParameters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DeletePatchBaselineInput = schema.new({
    id = id.from(_N, "DeletePatchBaselineRequest"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "DeletePatchBaselineInput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePatchBaselineOutput = schema.new({
    id = id.from(_N, "DeletePatchBaselineResult"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "DeletePatchBaselineOutput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceInUseException = schema.new({
    id = id.from(_N, "ResourceInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteResourceDataSyncInput = schema.new({
    id = id.from(_N, "DeleteResourceDataSyncRequest"),
    type = "structure",
    members = {
        SyncName = schema.new({
            id = id.from(_N, "DeleteResourceDataSyncInput", "SyncName"),
            type = "string",
            name = "SyncName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncType = schema.new({
            id = id.from(_N, "DeleteResourceDataSyncInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteResourceDataSyncOutput = schema.new({
    id = id.from(_N, "DeleteResourceDataSyncResult"),
    type = "structure",
})

M.ResourceDataSyncNotFoundException = schema.new({
    id = id.from(_N, "ResourceDataSyncNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        SyncName = schema.new({
            id = id.from(_N, "ResourceDataSyncNotFoundException", "SyncName"),
            type = "string",
            name = "SyncName",
            target_id = prelude.String.id,
        }),
        SyncType = schema.new({
            id = id.from(_N, "ResourceDataSyncNotFoundException", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ResourceDataSyncNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyId = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyHash = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "PolicyHash"),
            type = "string",
            name = "PolicyHash",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResourcePolicyOutput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyResponse"),
    type = "structure",
})

M.MalformedResourcePolicyDocumentException = schema.new({
    id = id.from(_N, "MalformedResourcePolicyDocumentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "MalformedResourcePolicyDocumentException", "Message"),
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

M.ResourcePolicyConflictException = schema.new({
    id = id.from(_N, "ResourcePolicyConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourcePolicyConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourcePolicyInvalidParameterException = schema.new({
    id = id.from(_N, "ResourcePolicyInvalidParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ParameterNames = schema.new({
            id = id.from(_N, "ResourcePolicyInvalidParameterException", "ParameterNames"),
            type = "list",
            name = "ParameterNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Message = schema.new({
            id = id.from(_N, "ResourcePolicyInvalidParameterException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourcePolicyNotFoundException = schema.new({
    id = id.from(_N, "ResourcePolicyNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourcePolicyNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeregisterManagedInstanceInput = schema.new({
    id = id.from(_N, "DeregisterManagedInstanceRequest"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "DeregisterManagedInstanceInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterManagedInstanceOutput = schema.new({
    id = id.from(_N, "DeregisterManagedInstanceResult"),
    type = "structure",
})

M.DeregisterPatchBaselineForPatchGroupInput = schema.new({
    id = id.from(_N, "DeregisterPatchBaselineForPatchGroupRequest"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "DeregisterPatchBaselineForPatchGroupInput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PatchGroup = schema.new({
            id = id.from(_N, "DeregisterPatchBaselineForPatchGroupInput", "PatchGroup"),
            type = "string",
            name = "PatchGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterPatchBaselineForPatchGroupOutput = schema.new({
    id = id.from(_N, "DeregisterPatchBaselineForPatchGroupResult"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "DeregisterPatchBaselineForPatchGroupOutput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
        }),
        PatchGroup = schema.new({
            id = id.from(_N, "DeregisterPatchBaselineForPatchGroupOutput", "PatchGroup"),
            type = "string",
            name = "PatchGroup",
            target_id = prelude.String.id,
        }),
    },
})

M.DeregisterTargetFromMaintenanceWindowInput = schema.new({
    id = id.from(_N, "DeregisterTargetFromMaintenanceWindowRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "DeregisterTargetFromMaintenanceWindowInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WindowTargetId = schema.new({
            id = id.from(_N, "DeregisterTargetFromMaintenanceWindowInput", "WindowTargetId"),
            type = "string",
            name = "WindowTargetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Safe = schema.new({
            id = id.from(_N, "DeregisterTargetFromMaintenanceWindowInput", "Safe"),
            type = "boolean",
            name = "Safe",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.DeregisterTargetFromMaintenanceWindowOutput = schema.new({
    id = id.from(_N, "DeregisterTargetFromMaintenanceWindowResult"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "DeregisterTargetFromMaintenanceWindowOutput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        WindowTargetId = schema.new({
            id = id.from(_N, "DeregisterTargetFromMaintenanceWindowOutput", "WindowTargetId"),
            type = "string",
            name = "WindowTargetId",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetInUseException = schema.new({
    id = id.from(_N, "TargetInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TargetInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeregisterTaskFromMaintenanceWindowInput = schema.new({
    id = id.from(_N, "DeregisterTaskFromMaintenanceWindowRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "DeregisterTaskFromMaintenanceWindowInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WindowTaskId = schema.new({
            id = id.from(_N, "DeregisterTaskFromMaintenanceWindowInput", "WindowTaskId"),
            type = "string",
            name = "WindowTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterTaskFromMaintenanceWindowOutput = schema.new({
    id = id.from(_N, "DeregisterTaskFromMaintenanceWindowResult"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "DeregisterTaskFromMaintenanceWindowOutput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        WindowTaskId = schema.new({
            id = id.from(_N, "DeregisterTaskFromMaintenanceWindowOutput", "WindowTaskId"),
            type = "string",
            name = "WindowTaskId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeActivationsFilter = schema.new({
    id = id.from(_N, "DescribeActivationsFilter"),
    type = "structure",
    members = {
        FilterKey = schema.new({
            id = id.from(_N, "DescribeActivationsFilter", "FilterKey"),
            type = "string",
            name = "FilterKey",
            target_id = prelude.String.id,
        }),
        FilterValues = schema.new({
            id = id.from(_N, "DescribeActivationsFilter", "FilterValues"),
            type = "list",
            name = "FilterValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeActivationsInput = schema.new({
    id = id.from(_N, "DescribeActivationsRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeActivationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.DescribeActivationsFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeActivationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeActivationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeActivationsOutput = schema.new({
    id = id.from(_N, "DescribeActivationsResult"),
    type = "structure",
    members = {
        ActivationList = schema.new({
            id = id.from(_N, "DescribeActivationsOutput", "ActivationList"),
            type = "list",
            name = "ActivationList",
            target_id = prelude.Document.id,
            list_member = M.Activation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeActivationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidFilter = schema.new({
    id = id.from(_N, "InvalidFilter"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidFilter", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidNextToken = schema.new({
    id = id.from(_N, "InvalidNextToken"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidNextToken", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAssociationInput = schema.new({
    id = id.from(_N, "DescribeAssociationRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeAssociationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "DescribeAssociationInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        AssociationId = schema.new({
            id = id.from(_N, "DescribeAssociationInput", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        AssociationVersion = schema.new({
            id = id.from(_N, "DescribeAssociationInput", "AssociationVersion"),
            type = "string",
            name = "AssociationVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAssociationOutput = schema.new({
    id = id.from(_N, "DescribeAssociationResult"),
    type = "structure",
    members = {
        AssociationDescription = schema.new({
            id = id.from(_N, "DescribeAssociationOutput", "AssociationDescription"),
            type = "structure",
            name = "AssociationDescription",
            target_id = id.from(_N, "AssociationDescription"),
            target = M.AssociationDescription,
        }),
    },
})

M.InvalidAssociationVersion = schema.new({
    id = id.from(_N, "InvalidAssociationVersion"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidAssociationVersion", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationExecutionFilter = schema.new({
    id = id.from(_N, "AssociationExecutionFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "AssociationExecutionFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "AssociationExecutionFilter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "AssociationExecutionFilter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAssociationExecutionsInput = schema.new({
    id = id.from(_N, "DescribeAssociationExecutionsRequest"),
    type = "structure",
    members = {
        AssociationId = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionsInput", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AssociationExecutionFilter, traits = { [traits.XML_NAME] = { name = "AssociationExecutionFilter" } } }),
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationExecution = schema.new({
    id = id.from(_N, "AssociationExecution"),
    type = "structure",
    members = {
        AssociationId = schema.new({
            id = id.from(_N, "AssociationExecution", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        AssociationVersion = schema.new({
            id = id.from(_N, "AssociationExecution", "AssociationVersion"),
            type = "string",
            name = "AssociationVersion",
            target_id = prelude.String.id,
        }),
        ExecutionId = schema.new({
            id = id.from(_N, "AssociationExecution", "ExecutionId"),
            type = "string",
            name = "ExecutionId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "AssociationExecution", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        DetailedStatus = schema.new({
            id = id.from(_N, "AssociationExecution", "DetailedStatus"),
            type = "string",
            name = "DetailedStatus",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "AssociationExecution", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        LastExecutionDate = schema.new({
            id = id.from(_N, "AssociationExecution", "LastExecutionDate"),
            type = "timestamp",
            name = "LastExecutionDate",
            target_id = prelude.Timestamp.id,
        }),
        ResourceCountByStatus = schema.new({
            id = id.from(_N, "AssociationExecution", "ResourceCountByStatus"),
            type = "string",
            name = "ResourceCountByStatus",
            target_id = prelude.String.id,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "AssociationExecution", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        TriggeredAlarms = schema.new({
            id = id.from(_N, "AssociationExecution", "TriggeredAlarms"),
            type = "list",
            name = "TriggeredAlarms",
            target_id = prelude.Document.id,
            list_member = M.AlarmStateInformation,
        }),
    },
})

M.DescribeAssociationExecutionsOutput = schema.new({
    id = id.from(_N, "DescribeAssociationExecutionsResult"),
    type = "structure",
    members = {
        AssociationExecutions = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionsOutput", "AssociationExecutions"),
            type = "list",
            name = "AssociationExecutions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AssociationExecution, traits = { [traits.XML_NAME] = { name = "AssociationExecution" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationExecutionDoesNotExist = schema.new({
    id = id.from(_N, "AssociationExecutionDoesNotExist"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AssociationExecutionDoesNotExist", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationExecutionTargetsFilter = schema.new({
    id = id.from(_N, "AssociationExecutionTargetsFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "AssociationExecutionTargetsFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "AssociationExecutionTargetsFilter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAssociationExecutionTargetsInput = schema.new({
    id = id.from(_N, "DescribeAssociationExecutionTargetsRequest"),
    type = "structure",
    members = {
        AssociationId = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionTargetsInput", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionId = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionTargetsInput", "ExecutionId"),
            type = "string",
            name = "ExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionTargetsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AssociationExecutionTargetsFilter, traits = { [traits.XML_NAME] = { name = "AssociationExecutionTargetsFilter" } } }),
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionTargetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionTargetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OutputSource = schema.new({
    id = id.from(_N, "OutputSource"),
    type = "structure",
    members = {
        OutputSourceId = schema.new({
            id = id.from(_N, "OutputSource", "OutputSourceId"),
            type = "string",
            name = "OutputSourceId",
            target_id = prelude.String.id,
        }),
        OutputSourceType = schema.new({
            id = id.from(_N, "OutputSource", "OutputSourceType"),
            type = "string",
            name = "OutputSourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationExecutionTarget = schema.new({
    id = id.from(_N, "AssociationExecutionTarget"),
    type = "structure",
    members = {
        AssociationId = schema.new({
            id = id.from(_N, "AssociationExecutionTarget", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        AssociationVersion = schema.new({
            id = id.from(_N, "AssociationExecutionTarget", "AssociationVersion"),
            type = "string",
            name = "AssociationVersion",
            target_id = prelude.String.id,
        }),
        ExecutionId = schema.new({
            id = id.from(_N, "AssociationExecutionTarget", "ExecutionId"),
            type = "string",
            name = "ExecutionId",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "AssociationExecutionTarget", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "AssociationExecutionTarget", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "AssociationExecutionTarget", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        DetailedStatus = schema.new({
            id = id.from(_N, "AssociationExecutionTarget", "DetailedStatus"),
            type = "string",
            name = "DetailedStatus",
            target_id = prelude.String.id,
        }),
        LastExecutionDate = schema.new({
            id = id.from(_N, "AssociationExecutionTarget", "LastExecutionDate"),
            type = "timestamp",
            name = "LastExecutionDate",
            target_id = prelude.Timestamp.id,
        }),
        OutputSource = schema.new({
            id = id.from(_N, "AssociationExecutionTarget", "OutputSource"),
            type = "structure",
            name = "OutputSource",
            target_id = id.from(_N, "OutputSource"),
            target = M.OutputSource,
        }),
    },
})

M.DescribeAssociationExecutionTargetsOutput = schema.new({
    id = id.from(_N, "DescribeAssociationExecutionTargetsResult"),
    type = "structure",
    members = {
        AssociationExecutionTargets = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionTargetsOutput", "AssociationExecutionTargets"),
            type = "list",
            name = "AssociationExecutionTargets",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AssociationExecutionTarget, traits = { [traits.XML_NAME] = { name = "AssociationExecutionTarget" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAssociationExecutionTargetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.AutomationExecutionFilter = schema.new({
    id = id.from(_N, "AutomationExecutionFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "AutomationExecutionFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "AutomationExecutionFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAutomationExecutionsInput = schema.new({
    id = id.from(_N, "DescribeAutomationExecutionsRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeAutomationExecutionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.AutomationExecutionFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAutomationExecutionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAutomationExecutionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ResolvedTargets = schema.new({
    id = id.from(_N, "ResolvedTargets"),
    type = "structure",
    members = {
        ParameterValues = schema.new({
            id = id.from(_N, "ResolvedTargets", "ParameterValues"),
            type = "list",
            name = "ParameterValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Truncated = schema.new({
            id = id.from(_N, "ResolvedTargets", "Truncated"),
            type = "boolean",
            name = "Truncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.Runbook = schema.new({
    id = id.from(_N, "Runbook"),
    type = "structure",
    members = {
        DocumentName = schema.new({
            id = id.from(_N, "Runbook", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "Runbook", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "Runbook", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        TargetParameterName = schema.new({
            id = id.from(_N, "Runbook", "TargetParameterName"),
            type = "string",
            name = "TargetParameterName",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "Runbook", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "Runbook", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "Runbook", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "Runbook", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        TargetLocations = schema.new({
            id = id.from(_N, "Runbook", "TargetLocations"),
            type = "list",
            name = "TargetLocations",
            target_id = prelude.Document.id,
            list_member = M.TargetLocation,
        }),
    },
})

M.AutomationExecutionMetadata = schema.new({
    id = id.from(_N, "AutomationExecutionMetadata"),
    type = "structure",
    members = {
        AutomationExecutionId = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "AutomationExecutionId"),
            type = "string",
            name = "AutomationExecutionId",
            target_id = prelude.String.id,
        }),
        DocumentName = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        AutomationExecutionStatus = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "AutomationExecutionStatus"),
            type = "string",
            name = "AutomationExecutionStatus",
            target_id = prelude.String.id,
        }),
        ExecutionStartTime = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "ExecutionStartTime"),
            type = "timestamp",
            name = "ExecutionStartTime",
            target_id = prelude.Timestamp.id,
        }),
        ExecutionEndTime = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "ExecutionEndTime"),
            type = "timestamp",
            name = "ExecutionEndTime",
            target_id = prelude.Timestamp.id,
        }),
        ExecutedBy = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "ExecutedBy"),
            type = "string",
            name = "ExecutedBy",
            target_id = prelude.String.id,
        }),
        LogFile = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "LogFile"),
            type = "string",
            name = "LogFile",
            target_id = prelude.String.id,
        }),
        Outputs = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "Outputs"),
            type = "map",
            name = "Outputs",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        Mode = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        ParentAutomationExecutionId = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "ParentAutomationExecutionId"),
            type = "string",
            name = "ParentAutomationExecutionId",
            target_id = prelude.String.id,
        }),
        CurrentStepName = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "CurrentStepName"),
            type = "string",
            name = "CurrentStepName",
            target_id = prelude.String.id,
        }),
        CurrentAction = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "CurrentAction"),
            type = "string",
            name = "CurrentAction",
            target_id = prelude.String.id,
        }),
        FailureMessage = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "FailureMessage"),
            type = "string",
            name = "FailureMessage",
            target_id = prelude.String.id,
        }),
        TargetParameterName = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "TargetParameterName"),
            type = "string",
            name = "TargetParameterName",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        ResolvedTargets = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "ResolvedTargets"),
            type = "structure",
            name = "ResolvedTargets",
            target_id = id.from(_N, "ResolvedTargets"),
            target = M.ResolvedTargets,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
        }),
        AutomationType = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "AutomationType"),
            type = "string",
            name = "AutomationType",
            target_id = prelude.String.id,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        TriggeredAlarms = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "TriggeredAlarms"),
            type = "list",
            name = "TriggeredAlarms",
            target_id = prelude.Document.id,
            list_member = M.AlarmStateInformation,
        }),
        TargetLocationsURL = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "TargetLocationsURL"),
            type = "string",
            name = "TargetLocationsURL",
            target_id = prelude.String.id,
        }),
        AutomationSubtype = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "AutomationSubtype"),
            type = "string",
            name = "AutomationSubtype",
            target_id = prelude.String.id,
        }),
        ScheduledTime = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "ScheduledTime"),
            type = "timestamp",
            name = "ScheduledTime",
            target_id = prelude.Timestamp.id,
        }),
        Runbooks = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "Runbooks"),
            type = "list",
            name = "Runbooks",
            target_id = prelude.Document.id,
            list_member = M.Runbook,
        }),
        OpsItemId = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
        }),
        AssociationId = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        ChangeRequestName = schema.new({
            id = id.from(_N, "AutomationExecutionMetadata", "ChangeRequestName"),
            type = "string",
            name = "ChangeRequestName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAutomationExecutionsOutput = schema.new({
    id = id.from(_N, "DescribeAutomationExecutionsResult"),
    type = "structure",
    members = {
        AutomationExecutionMetadataList = schema.new({
            id = id.from(_N, "DescribeAutomationExecutionsOutput", "AutomationExecutionMetadataList"),
            type = "list",
            name = "AutomationExecutionMetadataList",
            target_id = prelude.Document.id,
            list_member = M.AutomationExecutionMetadata,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAutomationExecutionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidFilterKey = schema.new({
    id = id.from(_N, "InvalidFilterKey"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.InvalidFilterValue = schema.new({
    id = id.from(_N, "InvalidFilterValue"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidFilterValue", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AutomationExecutionNotFoundException = schema.new({
    id = id.from(_N, "AutomationExecutionNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AutomationExecutionNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StepExecutionFilter = schema.new({
    id = id.from(_N, "StepExecutionFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "StepExecutionFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "StepExecutionFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAutomationStepExecutionsInput = schema.new({
    id = id.from(_N, "DescribeAutomationStepExecutionsRequest"),
    type = "structure",
    members = {
        AutomationExecutionId = schema.new({
            id = id.from(_N, "DescribeAutomationStepExecutionsInput", "AutomationExecutionId"),
            type = "string",
            name = "AutomationExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeAutomationStepExecutionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.StepExecutionFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAutomationStepExecutionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAutomationStepExecutionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        ReverseOrder = schema.new({
            id = id.from(_N, "DescribeAutomationStepExecutionsInput", "ReverseOrder"),
            type = "boolean",
            name = "ReverseOrder",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.FailureDetails = schema.new({
    id = id.from(_N, "FailureDetails"),
    type = "structure",
    members = {
        FailureStage = schema.new({
            id = id.from(_N, "FailureDetails", "FailureStage"),
            type = "string",
            name = "FailureStage",
            target_id = prelude.String.id,
        }),
        FailureType = schema.new({
            id = id.from(_N, "FailureDetails", "FailureType"),
            type = "string",
            name = "FailureType",
            target_id = prelude.String.id,
        }),
        Details = schema.new({
            id = id.from(_N, "FailureDetails", "Details"),
            type = "map",
            name = "Details",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
    },
})

M.ParentStepDetails = schema.new({
    id = id.from(_N, "ParentStepDetails"),
    type = "structure",
    members = {
        StepExecutionId = schema.new({
            id = id.from(_N, "ParentStepDetails", "StepExecutionId"),
            type = "string",
            name = "StepExecutionId",
            target_id = prelude.String.id,
        }),
        StepName = schema.new({
            id = id.from(_N, "ParentStepDetails", "StepName"),
            type = "string",
            name = "StepName",
            target_id = prelude.String.id,
        }),
        Action = schema.new({
            id = id.from(_N, "ParentStepDetails", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        Iteration = schema.new({
            id = id.from(_N, "ParentStepDetails", "Iteration"),
            type = "integer",
            name = "Iteration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        IteratorValue = schema.new({
            id = id.from(_N, "ParentStepDetails", "IteratorValue"),
            type = "string",
            name = "IteratorValue",
            target_id = prelude.String.id,
        }),
    },
})

M.StepExecution = schema.new({
    id = id.from(_N, "StepExecution"),
    type = "structure",
    members = {
        StepName = schema.new({
            id = id.from(_N, "StepExecution", "StepName"),
            type = "string",
            name = "StepName",
            target_id = prelude.String.id,
        }),
        Action = schema.new({
            id = id.from(_N, "StepExecution", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        TimeoutSeconds = schema.new({
            id = id.from(_N, "StepExecution", "TimeoutSeconds"),
            type = "long",
            name = "TimeoutSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        OnFailure = schema.new({
            id = id.from(_N, "StepExecution", "OnFailure"),
            type = "string",
            name = "OnFailure",
            target_id = prelude.String.id,
        }),
        MaxAttempts = schema.new({
            id = id.from(_N, "StepExecution", "MaxAttempts"),
            type = "integer",
            name = "MaxAttempts",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        ExecutionStartTime = schema.new({
            id = id.from(_N, "StepExecution", "ExecutionStartTime"),
            type = "timestamp",
            name = "ExecutionStartTime",
            target_id = prelude.Timestamp.id,
        }),
        ExecutionEndTime = schema.new({
            id = id.from(_N, "StepExecution", "ExecutionEndTime"),
            type = "timestamp",
            name = "ExecutionEndTime",
            target_id = prelude.Timestamp.id,
        }),
        StepStatus = schema.new({
            id = id.from(_N, "StepExecution", "StepStatus"),
            type = "string",
            name = "StepStatus",
            target_id = prelude.String.id,
        }),
        ResponseCode = schema.new({
            id = id.from(_N, "StepExecution", "ResponseCode"),
            type = "string",
            name = "ResponseCode",
            target_id = prelude.String.id,
        }),
        Inputs = schema.new({
            id = id.from(_N, "StepExecution", "Inputs"),
            type = "map",
            name = "Inputs",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Outputs = schema.new({
            id = id.from(_N, "StepExecution", "Outputs"),
            type = "map",
            name = "Outputs",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        Response = schema.new({
            id = id.from(_N, "StepExecution", "Response"),
            type = "string",
            name = "Response",
            target_id = prelude.String.id,
        }),
        FailureMessage = schema.new({
            id = id.from(_N, "StepExecution", "FailureMessage"),
            type = "string",
            name = "FailureMessage",
            target_id = prelude.String.id,
        }),
        FailureDetails = schema.new({
            id = id.from(_N, "StepExecution", "FailureDetails"),
            type = "structure",
            name = "FailureDetails",
            target_id = id.from(_N, "FailureDetails"),
            target = M.FailureDetails,
        }),
        StepExecutionId = schema.new({
            id = id.from(_N, "StepExecution", "StepExecutionId"),
            type = "string",
            name = "StepExecutionId",
            target_id = prelude.String.id,
        }),
        OverriddenParameters = schema.new({
            id = id.from(_N, "StepExecution", "OverriddenParameters"),
            type = "map",
            name = "OverriddenParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        IsEnd = schema.new({
            id = id.from(_N, "StepExecution", "IsEnd"),
            type = "boolean",
            name = "IsEnd",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        NextStep = schema.new({
            id = id.from(_N, "StepExecution", "NextStep"),
            type = "string",
            name = "NextStep",
            target_id = prelude.String.id,
        }),
        IsCritical = schema.new({
            id = id.from(_N, "StepExecution", "IsCritical"),
            type = "boolean",
            name = "IsCritical",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        ValidNextSteps = schema.new({
            id = id.from(_N, "StepExecution", "ValidNextSteps"),
            type = "list",
            name = "ValidNextSteps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Targets = schema.new({
            id = id.from(_N, "StepExecution", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TargetLocation = schema.new({
            id = id.from(_N, "StepExecution", "TargetLocation"),
            type = "structure",
            name = "TargetLocation",
            target_id = id.from(_N, "TargetLocation"),
            target = M.TargetLocation,
        }),
        TriggeredAlarms = schema.new({
            id = id.from(_N, "StepExecution", "TriggeredAlarms"),
            type = "list",
            name = "TriggeredAlarms",
            target_id = prelude.Document.id,
            list_member = M.AlarmStateInformation,
        }),
        ParentStepDetails = schema.new({
            id = id.from(_N, "StepExecution", "ParentStepDetails"),
            type = "structure",
            name = "ParentStepDetails",
            target_id = id.from(_N, "ParentStepDetails"),
            target = M.ParentStepDetails,
        }),
    },
})

M.DescribeAutomationStepExecutionsOutput = schema.new({
    id = id.from(_N, "DescribeAutomationStepExecutionsResult"),
    type = "structure",
    members = {
        StepExecutions = schema.new({
            id = id.from(_N, "DescribeAutomationStepExecutionsOutput", "StepExecutions"),
            type = "list",
            name = "StepExecutions",
            target_id = prelude.Document.id,
            list_member = M.StepExecution,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAutomationStepExecutionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PatchOrchestratorFilter = schema.new({
    id = id.from(_N, "PatchOrchestratorFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "PatchOrchestratorFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "PatchOrchestratorFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeAvailablePatchesInput = schema.new({
    id = id.from(_N, "DescribeAvailablePatchesRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeAvailablePatchesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.PatchOrchestratorFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAvailablePatchesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAvailablePatchesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Patch = schema.new({
    id = id.from(_N, "Patch"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Patch", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ReleaseDate = schema.new({
            id = id.from(_N, "Patch", "ReleaseDate"),
            type = "timestamp",
            name = "ReleaseDate",
            target_id = prelude.Timestamp.id,
        }),
        Title = schema.new({
            id = id.from(_N, "Patch", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Patch", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ContentUrl = schema.new({
            id = id.from(_N, "Patch", "ContentUrl"),
            type = "string",
            name = "ContentUrl",
            target_id = prelude.String.id,
        }),
        Vendor = schema.new({
            id = id.from(_N, "Patch", "Vendor"),
            type = "string",
            name = "Vendor",
            target_id = prelude.String.id,
        }),
        ProductFamily = schema.new({
            id = id.from(_N, "Patch", "ProductFamily"),
            type = "string",
            name = "ProductFamily",
            target_id = prelude.String.id,
        }),
        Product = schema.new({
            id = id.from(_N, "Patch", "Product"),
            type = "string",
            name = "Product",
            target_id = prelude.String.id,
        }),
        Classification = schema.new({
            id = id.from(_N, "Patch", "Classification"),
            type = "string",
            name = "Classification",
            target_id = prelude.String.id,
        }),
        MsrcSeverity = schema.new({
            id = id.from(_N, "Patch", "MsrcSeverity"),
            type = "string",
            name = "MsrcSeverity",
            target_id = prelude.String.id,
        }),
        KbNumber = schema.new({
            id = id.from(_N, "Patch", "KbNumber"),
            type = "string",
            name = "KbNumber",
            target_id = prelude.String.id,
        }),
        MsrcNumber = schema.new({
            id = id.from(_N, "Patch", "MsrcNumber"),
            type = "string",
            name = "MsrcNumber",
            target_id = prelude.String.id,
        }),
        Language = schema.new({
            id = id.from(_N, "Patch", "Language"),
            type = "string",
            name = "Language",
            target_id = prelude.String.id,
        }),
        AdvisoryIds = schema.new({
            id = id.from(_N, "Patch", "AdvisoryIds"),
            type = "list",
            name = "AdvisoryIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BugzillaIds = schema.new({
            id = id.from(_N, "Patch", "BugzillaIds"),
            type = "list",
            name = "BugzillaIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CVEIds = schema.new({
            id = id.from(_N, "Patch", "CVEIds"),
            type = "list",
            name = "CVEIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Name = schema.new({
            id = id.from(_N, "Patch", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Epoch = schema.new({
            id = id.from(_N, "Patch", "Epoch"),
            type = "integer",
            name = "Epoch",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Version = schema.new({
            id = id.from(_N, "Patch", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
        Release = schema.new({
            id = id.from(_N, "Patch", "Release"),
            type = "string",
            name = "Release",
            target_id = prelude.String.id,
        }),
        Arch = schema.new({
            id = id.from(_N, "Patch", "Arch"),
            type = "string",
            name = "Arch",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "Patch", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Repository = schema.new({
            id = id.from(_N, "Patch", "Repository"),
            type = "string",
            name = "Repository",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAvailablePatchesOutput = schema.new({
    id = id.from(_N, "DescribeAvailablePatchesResult"),
    type = "structure",
    members = {
        Patches = schema.new({
            id = id.from(_N, "DescribeAvailablePatchesOutput", "Patches"),
            type = "list",
            name = "Patches",
            target_id = prelude.Document.id,
            list_member = M.Patch,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAvailablePatchesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDocumentInput = schema.new({
    id = id.from(_N, "DescribeDocumentRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeDocumentInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "DescribeDocumentInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "DescribeDocumentInput", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDocumentOutput = schema.new({
    id = id.from(_N, "DescribeDocumentResult"),
    type = "structure",
    members = {
        Document = schema.new({
            id = id.from(_N, "DescribeDocumentOutput", "Document"),
            type = "structure",
            name = "Document",
            target_id = id.from(_N, "DocumentDescription"),
            target = M.DocumentDescription,
        }),
    },
})

M.DescribeDocumentPermissionInput = schema.new({
    id = id.from(_N, "DescribeDocumentPermissionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeDocumentPermissionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionType = schema.new({
            id = id.from(_N, "DescribeDocumentPermissionInput", "PermissionType"),
            type = "string",
            name = "PermissionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeDocumentPermissionInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeDocumentPermissionInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDocumentPermissionOutput = schema.new({
    id = id.from(_N, "DescribeDocumentPermissionResponse"),
    type = "structure",
    members = {
        AccountIds = schema.new({
            id = id.from(_N, "DescribeDocumentPermissionOutput", "AccountIds"),
            type = "list",
            name = "AccountIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AccountId" } } }),
        }),
        AccountSharingInfoList = schema.new({
            id = id.from(_N, "DescribeDocumentPermissionOutput", "AccountSharingInfoList"),
            type = "list",
            name = "AccountSharingInfoList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AccountSharingInfo, traits = { [traits.XML_NAME] = { name = "AccountSharingInfo" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeDocumentPermissionOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPermissionType = schema.new({
    id = id.from(_N, "InvalidPermissionType"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidPermissionType", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEffectiveInstanceAssociationsInput = schema.new({
    id = id.from(_N, "DescribeEffectiveInstanceAssociationsRequest"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "DescribeEffectiveInstanceAssociationsInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeEffectiveInstanceAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeEffectiveInstanceAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceAssociation = schema.new({
    id = id.from(_N, "InstanceAssociation"),
    type = "structure",
    members = {
        AssociationId = schema.new({
            id = id.from(_N, "InstanceAssociation", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "InstanceAssociation", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        Content = schema.new({
            id = id.from(_N, "InstanceAssociation", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        AssociationVersion = schema.new({
            id = id.from(_N, "InstanceAssociation", "AssociationVersion"),
            type = "string",
            name = "AssociationVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEffectiveInstanceAssociationsOutput = schema.new({
    id = id.from(_N, "DescribeEffectiveInstanceAssociationsResult"),
    type = "structure",
    members = {
        Associations = schema.new({
            id = id.from(_N, "DescribeEffectiveInstanceAssociationsOutput", "Associations"),
            type = "list",
            name = "Associations",
            target_id = prelude.Document.id,
            list_member = M.InstanceAssociation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeEffectiveInstanceAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEffectivePatchesForPatchBaselineInput = schema.new({
    id = id.from(_N, "DescribeEffectivePatchesForPatchBaselineRequest"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "DescribeEffectivePatchesForPatchBaselineInput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeEffectivePatchesForPatchBaselineInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeEffectivePatchesForPatchBaselineInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PatchStatus = schema.new({
    id = id.from(_N, "PatchStatus"),
    type = "structure",
    members = {
        DeploymentStatus = schema.new({
            id = id.from(_N, "PatchStatus", "DeploymentStatus"),
            type = "string",
            name = "DeploymentStatus",
            target_id = prelude.String.id,
        }),
        ComplianceLevel = schema.new({
            id = id.from(_N, "PatchStatus", "ComplianceLevel"),
            type = "string",
            name = "ComplianceLevel",
            target_id = prelude.String.id,
        }),
        ApprovalDate = schema.new({
            id = id.from(_N, "PatchStatus", "ApprovalDate"),
            type = "timestamp",
            name = "ApprovalDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.EffectivePatch = schema.new({
    id = id.from(_N, "EffectivePatch"),
    type = "structure",
    members = {
        Patch = schema.new({
            id = id.from(_N, "EffectivePatch", "Patch"),
            type = "structure",
            name = "Patch",
            target_id = id.from(_N, "Patch"),
            target = M.Patch,
        }),
        PatchStatus = schema.new({
            id = id.from(_N, "EffectivePatch", "PatchStatus"),
            type = "structure",
            name = "PatchStatus",
            target_id = id.from(_N, "PatchStatus"),
            target = M.PatchStatus,
        }),
    },
})

M.DescribeEffectivePatchesForPatchBaselineOutput = schema.new({
    id = id.from(_N, "DescribeEffectivePatchesForPatchBaselineResult"),
    type = "structure",
    members = {
        EffectivePatches = schema.new({
            id = id.from(_N, "DescribeEffectivePatchesForPatchBaselineOutput", "EffectivePatches"),
            type = "list",
            name = "EffectivePatches",
            target_id = prelude.Document.id,
            list_member = M.EffectivePatch,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeEffectivePatchesForPatchBaselineOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedOperatingSystem = schema.new({
    id = id.from(_N, "UnsupportedOperatingSystem"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedOperatingSystem", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstanceAssociationsStatusInput = schema.new({
    id = id.from(_N, "DescribeInstanceAssociationsStatusRequest"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "DescribeInstanceAssociationsStatusInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeInstanceAssociationsStatusInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstanceAssociationsStatusInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.S3OutputUrl = schema.new({
    id = id.from(_N, "S3OutputUrl"),
    type = "structure",
    members = {
        OutputUrl = schema.new({
            id = id.from(_N, "S3OutputUrl", "OutputUrl"),
            type = "string",
            name = "OutputUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceAssociationOutputUrl = schema.new({
    id = id.from(_N, "InstanceAssociationOutputUrl"),
    type = "structure",
    members = {
        S3OutputUrl = schema.new({
            id = id.from(_N, "InstanceAssociationOutputUrl", "S3OutputUrl"),
            type = "structure",
            name = "S3OutputUrl",
            target_id = id.from(_N, "S3OutputUrl"),
            target = M.S3OutputUrl,
        }),
    },
})

M.InstanceAssociationStatusInfo = schema.new({
    id = id.from(_N, "InstanceAssociationStatusInfo"),
    type = "structure",
    members = {
        AssociationId = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        AssociationVersion = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "AssociationVersion"),
            type = "string",
            name = "AssociationVersion",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        ExecutionDate = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "ExecutionDate"),
            type = "timestamp",
            name = "ExecutionDate",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        DetailedStatus = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "DetailedStatus"),
            type = "string",
            name = "DetailedStatus",
            target_id = prelude.String.id,
        }),
        ExecutionSummary = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "ExecutionSummary"),
            type = "string",
            name = "ExecutionSummary",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        OutputUrl = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "OutputUrl"),
            type = "structure",
            name = "OutputUrl",
            target_id = id.from(_N, "InstanceAssociationOutputUrl"),
            target = M.InstanceAssociationOutputUrl,
        }),
        AssociationName = schema.new({
            id = id.from(_N, "InstanceAssociationStatusInfo", "AssociationName"),
            type = "string",
            name = "AssociationName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstanceAssociationsStatusOutput = schema.new({
    id = id.from(_N, "DescribeInstanceAssociationsStatusResult"),
    type = "structure",
    members = {
        InstanceAssociationStatusInfos = schema.new({
            id = id.from(_N, "DescribeInstanceAssociationsStatusOutput", "InstanceAssociationStatusInfos"),
            type = "list",
            name = "InstanceAssociationStatusInfos",
            target_id = prelude.Document.id,
            list_member = M.InstanceAssociationStatusInfo,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstanceAssociationsStatusOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceInformationStringFilter = schema.new({
    id = id.from(_N, "InstanceInformationStringFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "InstanceInformationStringFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "InstanceInformationStringFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "InstanceInformationFilterValue" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InstanceInformationFilter = schema.new({
    id = id.from(_N, "InstanceInformationFilter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "InstanceInformationFilter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        valueSet = schema.new({
            id = id.from(_N, "InstanceInformationFilter", "valueSet"),
            type = "list",
            name = "valueSet",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "InstanceInformationFilterValue" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeInstanceInformationInput = schema.new({
    id = id.from(_N, "DescribeInstanceInformationRequest"),
    type = "structure",
    members = {
        InstanceInformationFilterList = schema.new({
            id = id.from(_N, "DescribeInstanceInformationInput", "InstanceInformationFilterList"),
            type = "list",
            name = "InstanceInformationFilterList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InstanceInformationFilter, traits = { [traits.XML_NAME] = { name = "InstanceInformationFilter" } } }),
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeInstanceInformationInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InstanceInformationStringFilter, traits = { [traits.XML_NAME] = { name = "InstanceInformationStringFilter" } } }),
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeInstanceInformationInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstanceInformationInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceAggregatedAssociationOverview = schema.new({
    id = id.from(_N, "InstanceAggregatedAssociationOverview"),
    type = "structure",
    members = {
        DetailedStatus = schema.new({
            id = id.from(_N, "InstanceAggregatedAssociationOverview", "DetailedStatus"),
            type = "string",
            name = "DetailedStatus",
            target_id = prelude.String.id,
        }),
        InstanceAssociationStatusAggregatedCount = schema.new({
            id = id.from(_N, "InstanceAggregatedAssociationOverview", "InstanceAssociationStatusAggregatedCount"),
            type = "map",
            name = "InstanceAssociationStatusAggregatedCount",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
        }),
    },
})

M.InstanceInformation = schema.new({
    id = id.from(_N, "InstanceInformation"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "InstanceInformation", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        PingStatus = schema.new({
            id = id.from(_N, "InstanceInformation", "PingStatus"),
            type = "string",
            name = "PingStatus",
            target_id = prelude.String.id,
        }),
        LastPingDateTime = schema.new({
            id = id.from(_N, "InstanceInformation", "LastPingDateTime"),
            type = "timestamp",
            name = "LastPingDateTime",
            target_id = prelude.Timestamp.id,
        }),
        AgentVersion = schema.new({
            id = id.from(_N, "InstanceInformation", "AgentVersion"),
            type = "string",
            name = "AgentVersion",
            target_id = prelude.String.id,
        }),
        IsLatestVersion = schema.new({
            id = id.from(_N, "InstanceInformation", "IsLatestVersion"),
            type = "boolean",
            name = "IsLatestVersion",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        PlatformType = schema.new({
            id = id.from(_N, "InstanceInformation", "PlatformType"),
            type = "string",
            name = "PlatformType",
            target_id = prelude.String.id,
        }),
        PlatformName = schema.new({
            id = id.from(_N, "InstanceInformation", "PlatformName"),
            type = "string",
            name = "PlatformName",
            target_id = prelude.String.id,
        }),
        PlatformVersion = schema.new({
            id = id.from(_N, "InstanceInformation", "PlatformVersion"),
            type = "string",
            name = "PlatformVersion",
            target_id = prelude.String.id,
        }),
        ActivationId = schema.new({
            id = id.from(_N, "InstanceInformation", "ActivationId"),
            type = "string",
            name = "ActivationId",
            target_id = prelude.String.id,
        }),
        IamRole = schema.new({
            id = id.from(_N, "InstanceInformation", "IamRole"),
            type = "string",
            name = "IamRole",
            target_id = prelude.String.id,
        }),
        RegistrationDate = schema.new({
            id = id.from(_N, "InstanceInformation", "RegistrationDate"),
            type = "timestamp",
            name = "RegistrationDate",
            target_id = prelude.Timestamp.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "InstanceInformation", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "InstanceInformation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        IPAddress = schema.new({
            id = id.from(_N, "InstanceInformation", "IPAddress"),
            type = "string",
            name = "IPAddress",
            target_id = prelude.String.id,
        }),
        ComputerName = schema.new({
            id = id.from(_N, "InstanceInformation", "ComputerName"),
            type = "string",
            name = "ComputerName",
            target_id = prelude.String.id,
        }),
        AssociationStatus = schema.new({
            id = id.from(_N, "InstanceInformation", "AssociationStatus"),
            type = "string",
            name = "AssociationStatus",
            target_id = prelude.String.id,
        }),
        LastAssociationExecutionDate = schema.new({
            id = id.from(_N, "InstanceInformation", "LastAssociationExecutionDate"),
            type = "timestamp",
            name = "LastAssociationExecutionDate",
            target_id = prelude.Timestamp.id,
        }),
        LastSuccessfulAssociationExecutionDate = schema.new({
            id = id.from(_N, "InstanceInformation", "LastSuccessfulAssociationExecutionDate"),
            type = "timestamp",
            name = "LastSuccessfulAssociationExecutionDate",
            target_id = prelude.Timestamp.id,
        }),
        AssociationOverview = schema.new({
            id = id.from(_N, "InstanceInformation", "AssociationOverview"),
            type = "structure",
            name = "AssociationOverview",
            target_id = id.from(_N, "InstanceAggregatedAssociationOverview"),
            target = M.InstanceAggregatedAssociationOverview,
        }),
        SourceId = schema.new({
            id = id.from(_N, "InstanceInformation", "SourceId"),
            type = "string",
            name = "SourceId",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "InstanceInformation", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstanceInformationOutput = schema.new({
    id = id.from(_N, "DescribeInstanceInformationResult"),
    type = "structure",
    members = {
        InstanceInformationList = schema.new({
            id = id.from(_N, "DescribeInstanceInformationOutput", "InstanceInformationList"),
            type = "list",
            name = "InstanceInformationList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InstanceInformation, traits = { [traits.XML_NAME] = { name = "InstanceInformation" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstanceInformationOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInstanceInformationFilterValue = schema.new({
    id = id.from(_N, "InvalidInstanceInformationFilterValue"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidInstanceInformationFilterValue", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstancePatchesInput = schema.new({
    id = id.from(_N, "DescribeInstancePatchesRequest"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "DescribeInstancePatchesInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeInstancePatchesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.PatchOrchestratorFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstancePatchesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeInstancePatchesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PatchComplianceData = schema.new({
    id = id.from(_N, "PatchComplianceData"),
    type = "structure",
    members = {
        Title = schema.new({
            id = id.from(_N, "PatchComplianceData", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KBId = schema.new({
            id = id.from(_N, "PatchComplianceData", "KBId"),
            type = "string",
            name = "KBId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Classification = schema.new({
            id = id.from(_N, "PatchComplianceData", "Classification"),
            type = "string",
            name = "Classification",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Severity = schema.new({
            id = id.from(_N, "PatchComplianceData", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        State = schema.new({
            id = id.from(_N, "PatchComplianceData", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstalledTime = schema.new({
            id = id.from(_N, "PatchComplianceData", "InstalledTime"),
            type = "timestamp",
            name = "InstalledTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CVEIds = schema.new({
            id = id.from(_N, "PatchComplianceData", "CVEIds"),
            type = "string",
            name = "CVEIds",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstancePatchesOutput = schema.new({
    id = id.from(_N, "DescribeInstancePatchesResult"),
    type = "structure",
    members = {
        Patches = schema.new({
            id = id.from(_N, "DescribeInstancePatchesOutput", "Patches"),
            type = "list",
            name = "Patches",
            target_id = prelude.Document.id,
            list_member = M.PatchComplianceData,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstancePatchesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstancePatchStatesInput = schema.new({
    id = id.from(_N, "DescribeInstancePatchStatesRequest"),
    type = "structure",
    members = {
        InstanceIds = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesInput", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InstancePatchState = schema.new({
    id = id.from(_N, "InstancePatchState"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "InstancePatchState", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PatchGroup = schema.new({
            id = id.from(_N, "InstancePatchState", "PatchGroup"),
            type = "string",
            name = "PatchGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BaselineId = schema.new({
            id = id.from(_N, "InstancePatchState", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnapshotId = schema.new({
            id = id.from(_N, "InstancePatchState", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
        InstallOverrideList = schema.new({
            id = id.from(_N, "InstancePatchState", "InstallOverrideList"),
            type = "string",
            name = "InstallOverrideList",
            target_id = prelude.String.id,
        }),
        OwnerInformation = schema.new({
            id = id.from(_N, "InstancePatchState", "OwnerInformation"),
            type = "string",
            name = "OwnerInformation",
            target_id = prelude.String.id,
        }),
        InstalledCount = schema.new({
            id = id.from(_N, "InstancePatchState", "InstalledCount"),
            type = "integer",
            name = "InstalledCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        InstalledOtherCount = schema.new({
            id = id.from(_N, "InstancePatchState", "InstalledOtherCount"),
            type = "integer",
            name = "InstalledOtherCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        InstalledPendingRebootCount = schema.new({
            id = id.from(_N, "InstancePatchState", "InstalledPendingRebootCount"),
            type = "integer",
            name = "InstalledPendingRebootCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        InstalledRejectedCount = schema.new({
            id = id.from(_N, "InstancePatchState", "InstalledRejectedCount"),
            type = "integer",
            name = "InstalledRejectedCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        MissingCount = schema.new({
            id = id.from(_N, "InstancePatchState", "MissingCount"),
            type = "integer",
            name = "MissingCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FailedCount = schema.new({
            id = id.from(_N, "InstancePatchState", "FailedCount"),
            type = "integer",
            name = "FailedCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        UnreportedNotApplicableCount = schema.new({
            id = id.from(_N, "InstancePatchState", "UnreportedNotApplicableCount"),
            type = "integer",
            name = "UnreportedNotApplicableCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        NotApplicableCount = schema.new({
            id = id.from(_N, "InstancePatchState", "NotApplicableCount"),
            type = "integer",
            name = "NotApplicableCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AvailableSecurityUpdateCount = schema.new({
            id = id.from(_N, "InstancePatchState", "AvailableSecurityUpdateCount"),
            type = "integer",
            name = "AvailableSecurityUpdateCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        OperationStartTime = schema.new({
            id = id.from(_N, "InstancePatchState", "OperationStartTime"),
            type = "timestamp",
            name = "OperationStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OperationEndTime = schema.new({
            id = id.from(_N, "InstancePatchState", "OperationEndTime"),
            type = "timestamp",
            name = "OperationEndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operation = schema.new({
            id = id.from(_N, "InstancePatchState", "Operation"),
            type = "string",
            name = "Operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastNoRebootInstallOperationTime = schema.new({
            id = id.from(_N, "InstancePatchState", "LastNoRebootInstallOperationTime"),
            type = "timestamp",
            name = "LastNoRebootInstallOperationTime",
            target_id = prelude.Timestamp.id,
        }),
        RebootOption = schema.new({
            id = id.from(_N, "InstancePatchState", "RebootOption"),
            type = "string",
            name = "RebootOption",
            target_id = prelude.String.id,
        }),
        CriticalNonCompliantCount = schema.new({
            id = id.from(_N, "InstancePatchState", "CriticalNonCompliantCount"),
            type = "integer",
            name = "CriticalNonCompliantCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        SecurityNonCompliantCount = schema.new({
            id = id.from(_N, "InstancePatchState", "SecurityNonCompliantCount"),
            type = "integer",
            name = "SecurityNonCompliantCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        OtherNonCompliantCount = schema.new({
            id = id.from(_N, "InstancePatchState", "OtherNonCompliantCount"),
            type = "integer",
            name = "OtherNonCompliantCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.DescribeInstancePatchStatesOutput = schema.new({
    id = id.from(_N, "DescribeInstancePatchStatesResult"),
    type = "structure",
    members = {
        InstancePatchStates = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesOutput", "InstancePatchStates"),
            type = "list",
            name = "InstancePatchStates",
            target_id = prelude.Document.id,
            list_member = M.InstancePatchState,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InstancePatchStateFilter = schema.new({
    id = id.from(_N, "InstancePatchStateFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "InstancePatchStateFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "InstancePatchStateFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "InstancePatchStateFilter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeInstancePatchStatesForPatchGroupInput = schema.new({
    id = id.from(_N, "DescribeInstancePatchStatesForPatchGroupRequest"),
    type = "structure",
    members = {
        PatchGroup = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesForPatchGroupInput", "PatchGroup"),
            type = "string",
            name = "PatchGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesForPatchGroupInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.InstancePatchStateFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesForPatchGroupInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesForPatchGroupInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeInstancePatchStatesForPatchGroupOutput = schema.new({
    id = id.from(_N, "DescribeInstancePatchStatesForPatchGroupResult"),
    type = "structure",
    members = {
        InstancePatchStates = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesForPatchGroupOutput", "InstancePatchStates"),
            type = "list",
            name = "InstancePatchStates",
            target_id = prelude.Document.id,
            list_member = M.InstancePatchState,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstancePatchStatesForPatchGroupOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InstancePropertyStringFilter = schema.new({
    id = id.from(_N, "InstancePropertyStringFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "InstancePropertyStringFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "InstancePropertyStringFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "InstancePropertyFilterValue" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operator = schema.new({
            id = id.from(_N, "InstancePropertyStringFilter", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
        }),
    },
})

M.InstancePropertyFilter = schema.new({
    id = id.from(_N, "InstancePropertyFilter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "InstancePropertyFilter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        valueSet = schema.new({
            id = id.from(_N, "InstancePropertyFilter", "valueSet"),
            type = "list",
            name = "valueSet",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "InstancePropertyFilterValue" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeInstancePropertiesInput = schema.new({
    id = id.from(_N, "DescribeInstancePropertiesRequest"),
    type = "structure",
    members = {
        InstancePropertyFilterList = schema.new({
            id = id.from(_N, "DescribeInstancePropertiesInput", "InstancePropertyFilterList"),
            type = "list",
            name = "InstancePropertyFilterList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InstancePropertyFilter, traits = { [traits.XML_NAME] = { name = "InstancePropertyFilter" } } }),
        }),
        FiltersWithOperator = schema.new({
            id = id.from(_N, "DescribeInstancePropertiesInput", "FiltersWithOperator"),
            type = "list",
            name = "FiltersWithOperator",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InstancePropertyStringFilter, traits = { [traits.XML_NAME] = { name = "InstancePropertyStringFilter" } } }),
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeInstancePropertiesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstancePropertiesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceProperty = schema.new({
    id = id.from(_N, "InstanceProperty"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "InstanceProperty", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "InstanceProperty", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        InstanceType = schema.new({
            id = id.from(_N, "InstanceProperty", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        InstanceRole = schema.new({
            id = id.from(_N, "InstanceProperty", "InstanceRole"),
            type = "string",
            name = "InstanceRole",
            target_id = prelude.String.id,
        }),
        KeyName = schema.new({
            id = id.from(_N, "InstanceProperty", "KeyName"),
            type = "string",
            name = "KeyName",
            target_id = prelude.String.id,
        }),
        InstanceState = schema.new({
            id = id.from(_N, "InstanceProperty", "InstanceState"),
            type = "string",
            name = "InstanceState",
            target_id = prelude.String.id,
        }),
        Architecture = schema.new({
            id = id.from(_N, "InstanceProperty", "Architecture"),
            type = "string",
            name = "Architecture",
            target_id = prelude.String.id,
        }),
        IPAddress = schema.new({
            id = id.from(_N, "InstanceProperty", "IPAddress"),
            type = "string",
            name = "IPAddress",
            target_id = prelude.String.id,
        }),
        LaunchTime = schema.new({
            id = id.from(_N, "InstanceProperty", "LaunchTime"),
            type = "timestamp",
            name = "LaunchTime",
            target_id = prelude.Timestamp.id,
        }),
        PingStatus = schema.new({
            id = id.from(_N, "InstanceProperty", "PingStatus"),
            type = "string",
            name = "PingStatus",
            target_id = prelude.String.id,
        }),
        LastPingDateTime = schema.new({
            id = id.from(_N, "InstanceProperty", "LastPingDateTime"),
            type = "timestamp",
            name = "LastPingDateTime",
            target_id = prelude.Timestamp.id,
        }),
        AgentVersion = schema.new({
            id = id.from(_N, "InstanceProperty", "AgentVersion"),
            type = "string",
            name = "AgentVersion",
            target_id = prelude.String.id,
        }),
        PlatformType = schema.new({
            id = id.from(_N, "InstanceProperty", "PlatformType"),
            type = "string",
            name = "PlatformType",
            target_id = prelude.String.id,
        }),
        PlatformName = schema.new({
            id = id.from(_N, "InstanceProperty", "PlatformName"),
            type = "string",
            name = "PlatformName",
            target_id = prelude.String.id,
        }),
        PlatformVersion = schema.new({
            id = id.from(_N, "InstanceProperty", "PlatformVersion"),
            type = "string",
            name = "PlatformVersion",
            target_id = prelude.String.id,
        }),
        ActivationId = schema.new({
            id = id.from(_N, "InstanceProperty", "ActivationId"),
            type = "string",
            name = "ActivationId",
            target_id = prelude.String.id,
        }),
        IamRole = schema.new({
            id = id.from(_N, "InstanceProperty", "IamRole"),
            type = "string",
            name = "IamRole",
            target_id = prelude.String.id,
        }),
        RegistrationDate = schema.new({
            id = id.from(_N, "InstanceProperty", "RegistrationDate"),
            type = "timestamp",
            name = "RegistrationDate",
            target_id = prelude.Timestamp.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "InstanceProperty", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ComputerName = schema.new({
            id = id.from(_N, "InstanceProperty", "ComputerName"),
            type = "string",
            name = "ComputerName",
            target_id = prelude.String.id,
        }),
        AssociationStatus = schema.new({
            id = id.from(_N, "InstanceProperty", "AssociationStatus"),
            type = "string",
            name = "AssociationStatus",
            target_id = prelude.String.id,
        }),
        LastAssociationExecutionDate = schema.new({
            id = id.from(_N, "InstanceProperty", "LastAssociationExecutionDate"),
            type = "timestamp",
            name = "LastAssociationExecutionDate",
            target_id = prelude.Timestamp.id,
        }),
        LastSuccessfulAssociationExecutionDate = schema.new({
            id = id.from(_N, "InstanceProperty", "LastSuccessfulAssociationExecutionDate"),
            type = "timestamp",
            name = "LastSuccessfulAssociationExecutionDate",
            target_id = prelude.Timestamp.id,
        }),
        AssociationOverview = schema.new({
            id = id.from(_N, "InstanceProperty", "AssociationOverview"),
            type = "structure",
            name = "AssociationOverview",
            target_id = id.from(_N, "InstanceAggregatedAssociationOverview"),
            target = M.InstanceAggregatedAssociationOverview,
        }),
        SourceId = schema.new({
            id = id.from(_N, "InstanceProperty", "SourceId"),
            type = "string",
            name = "SourceId",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "InstanceProperty", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstancePropertiesOutput = schema.new({
    id = id.from(_N, "DescribeInstancePropertiesResult"),
    type = "structure",
    members = {
        InstanceProperties = schema.new({
            id = id.from(_N, "DescribeInstancePropertiesOutput", "InstanceProperties"),
            type = "list",
            name = "InstanceProperties",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InstanceProperty, traits = { [traits.XML_NAME] = { name = "InstanceProperty" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstancePropertiesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInstancePropertyFilterValue = schema.new({
    id = id.from(_N, "InvalidInstancePropertyFilterValue"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidInstancePropertyFilterValue", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInventoryDeletionsInput = schema.new({
    id = id.from(_N, "DescribeInventoryDeletionsRequest"),
    type = "structure",
    members = {
        DeletionId = schema.new({
            id = id.from(_N, "DescribeInventoryDeletionsInput", "DeletionId"),
            type = "string",
            name = "DeletionId",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInventoryDeletionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeInventoryDeletionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InventoryDeletionStatusItem = schema.new({
    id = id.from(_N, "InventoryDeletionStatusItem"),
    type = "structure",
    members = {
        DeletionId = schema.new({
            id = id.from(_N, "InventoryDeletionStatusItem", "DeletionId"),
            type = "string",
            name = "DeletionId",
            target_id = prelude.String.id,
        }),
        TypeName = schema.new({
            id = id.from(_N, "InventoryDeletionStatusItem", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
        }),
        DeletionStartTime = schema.new({
            id = id.from(_N, "InventoryDeletionStatusItem", "DeletionStartTime"),
            type = "timestamp",
            name = "DeletionStartTime",
            target_id = prelude.Timestamp.id,
        }),
        LastStatus = schema.new({
            id = id.from(_N, "InventoryDeletionStatusItem", "LastStatus"),
            type = "string",
            name = "LastStatus",
            target_id = prelude.String.id,
        }),
        LastStatusMessage = schema.new({
            id = id.from(_N, "InventoryDeletionStatusItem", "LastStatusMessage"),
            type = "string",
            name = "LastStatusMessage",
            target_id = prelude.String.id,
        }),
        DeletionSummary = schema.new({
            id = id.from(_N, "InventoryDeletionStatusItem", "DeletionSummary"),
            type = "structure",
            name = "DeletionSummary",
            target_id = id.from(_N, "InventoryDeletionSummary"),
            target = M.InventoryDeletionSummary,
        }),
        LastStatusUpdateTime = schema.new({
            id = id.from(_N, "InventoryDeletionStatusItem", "LastStatusUpdateTime"),
            type = "timestamp",
            name = "LastStatusUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeInventoryDeletionsOutput = schema.new({
    id = id.from(_N, "DescribeInventoryDeletionsResult"),
    type = "structure",
    members = {
        InventoryDeletions = schema.new({
            id = id.from(_N, "DescribeInventoryDeletionsOutput", "InventoryDeletions"),
            type = "list",
            name = "InventoryDeletions",
            target_id = prelude.Document.id,
            list_member = M.InventoryDeletionStatusItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInventoryDeletionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDeletionIdException = schema.new({
    id = id.from(_N, "InvalidDeletionIdException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidDeletionIdException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaintenanceWindowFilter = schema.new({
    id = id.from(_N, "MaintenanceWindowFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "MaintenanceWindowFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "MaintenanceWindowFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeMaintenanceWindowExecutionsInput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowExecutionsRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionsInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MaintenanceWindowExecution = schema.new({
    id = id.from(_N, "MaintenanceWindowExecution"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "MaintenanceWindowExecution", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        WindowExecutionId = schema.new({
            id = id.from(_N, "MaintenanceWindowExecution", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "MaintenanceWindowExecution", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "MaintenanceWindowExecution", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "MaintenanceWindowExecution", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "MaintenanceWindowExecution", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeMaintenanceWindowExecutionsOutput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowExecutionsResult"),
    type = "structure",
    members = {
        WindowExecutions = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionsOutput", "WindowExecutions"),
            type = "list",
            name = "WindowExecutions",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowExecution,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowExecutionTaskInvocationsInput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowExecutionTaskInvocationsRequest"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTaskInvocationsInput", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TaskId = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTaskInvocationsInput", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTaskInvocationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTaskInvocationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTaskInvocationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MaintenanceWindowExecutionTaskInvocationIdentity = schema.new({
    id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
        }),
        TaskExecutionId = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "TaskExecutionId"),
            type = "string",
            name = "TaskExecutionId",
            target_id = prelude.String.id,
        }),
        InvocationId = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "InvocationId"),
            type = "string",
            name = "InvocationId",
            target_id = prelude.String.id,
        }),
        ExecutionId = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "ExecutionId"),
            type = "string",
            name = "ExecutionId",
            target_id = prelude.String.id,
        }),
        TaskType = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "TaskType"),
            type = "string",
            name = "TaskType",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "Parameters"),
            type = "string",
            name = "Parameters",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        OwnerInformation = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "OwnerInformation"),
            type = "string",
            name = "OwnerInformation",
            target_id = prelude.String.id,
        }),
        WindowTargetId = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskInvocationIdentity", "WindowTargetId"),
            type = "string",
            name = "WindowTargetId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowExecutionTaskInvocationsOutput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowExecutionTaskInvocationsResult"),
    type = "structure",
    members = {
        WindowExecutionTaskInvocationIdentities = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTaskInvocationsOutput", "WindowExecutionTaskInvocationIdentities"),
            type = "list",
            name = "WindowExecutionTaskInvocationIdentities",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowExecutionTaskInvocationIdentity,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTaskInvocationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowExecutionTasksInput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowExecutionTasksRequest"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTasksInput", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTasksInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTasksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTasksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MaintenanceWindowExecutionTaskIdentity = schema.new({
    id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
        }),
        TaskExecutionId = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity", "TaskExecutionId"),
            type = "string",
            name = "TaskExecutionId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        TaskType = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity", "TaskType"),
            type = "string",
            name = "TaskType",
            target_id = prelude.String.id,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        TriggeredAlarms = schema.new({
            id = id.from(_N, "MaintenanceWindowExecutionTaskIdentity", "TriggeredAlarms"),
            type = "list",
            name = "TriggeredAlarms",
            target_id = prelude.Document.id,
            list_member = M.AlarmStateInformation,
        }),
    },
})

M.DescribeMaintenanceWindowExecutionTasksOutput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowExecutionTasksResult"),
    type = "structure",
    members = {
        WindowExecutionTaskIdentities = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTasksOutput", "WindowExecutionTaskIdentities"),
            type = "list",
            name = "WindowExecutionTaskIdentities",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowExecutionTaskIdentity,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowExecutionTasksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowsInput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowsRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MaintenanceWindowIdentity = schema.new({
    id = id.from(_N, "MaintenanceWindowIdentity"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Enabled = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Duration = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        Cutoff = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "Cutoff"),
            type = "integer",
            name = "Cutoff",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Schedule = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "Schedule"),
            type = "string",
            name = "Schedule",
            target_id = prelude.String.id,
        }),
        ScheduleTimezone = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "ScheduleTimezone"),
            type = "string",
            name = "ScheduleTimezone",
            target_id = prelude.String.id,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        EndDate = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "EndDate"),
            type = "string",
            name = "EndDate",
            target_id = prelude.String.id,
        }),
        StartDate = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "StartDate"),
            type = "string",
            name = "StartDate",
            target_id = prelude.String.id,
        }),
        NextExecutionTime = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentity", "NextExecutionTime"),
            type = "string",
            name = "NextExecutionTime",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowsOutput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowsResult"),
    type = "structure",
    members = {
        WindowIdentities = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsOutput", "WindowIdentities"),
            type = "list",
            name = "WindowIdentities",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowIdentity,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowScheduleInput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowScheduleRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowScheduleInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowScheduleInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowScheduleInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowScheduleInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.PatchOrchestratorFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowScheduleInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowScheduleInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ScheduledWindowExecution = schema.new({
    id = id.from(_N, "ScheduledWindowExecution"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "ScheduledWindowExecution", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ScheduledWindowExecution", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ExecutionTime = schema.new({
            id = id.from(_N, "ScheduledWindowExecution", "ExecutionTime"),
            type = "string",
            name = "ExecutionTime",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowScheduleOutput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowScheduleResult"),
    type = "structure",
    members = {
        ScheduledWindowExecutions = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowScheduleOutput", "ScheduledWindowExecutions"),
            type = "list",
            name = "ScheduledWindowExecutions",
            target_id = prelude.Document.id,
            list_member = M.ScheduledWindowExecution,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowScheduleOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowsForTargetInput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowsForTargetRequest"),
    type = "structure",
    members = {
        Targets = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsForTargetInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsForTargetInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsForTargetInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsForTargetInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MaintenanceWindowIdentityForTarget = schema.new({
    id = id.from(_N, "MaintenanceWindowIdentityForTarget"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentityForTarget", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "MaintenanceWindowIdentityForTarget", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowsForTargetOutput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowsForTargetResult"),
    type = "structure",
    members = {
        WindowIdentities = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsForTargetOutput", "WindowIdentities"),
            type = "list",
            name = "WindowIdentities",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowIdentityForTarget,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowsForTargetOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowTargetsInput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowTargetsRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTargetsInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTargetsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTargetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTargetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MaintenanceWindowTarget = schema.new({
    id = id.from(_N, "MaintenanceWindowTarget"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "MaintenanceWindowTarget", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        WindowTargetId = schema.new({
            id = id.from(_N, "MaintenanceWindowTarget", "WindowTargetId"),
            type = "string",
            name = "WindowTargetId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "MaintenanceWindowTarget", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "MaintenanceWindowTarget", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        OwnerInformation = schema.new({
            id = id.from(_N, "MaintenanceWindowTarget", "OwnerInformation"),
            type = "string",
            name = "OwnerInformation",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "MaintenanceWindowTarget", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "MaintenanceWindowTarget", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowTargetsOutput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowTargetsResult"),
    type = "structure",
    members = {
        Targets = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTargetsOutput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowTarget,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTargetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceWindowTasksInput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowTasksRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTasksInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTasksInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTasksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTasksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.LoggingInfo = schema.new({
    id = id.from(_N, "LoggingInfo"),
    type = "structure",
    members = {
        S3BucketName = schema.new({
            id = id.from(_N, "LoggingInfo", "S3BucketName"),
            type = "string",
            name = "S3BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3KeyPrefix = schema.new({
            id = id.from(_N, "LoggingInfo", "S3KeyPrefix"),
            type = "string",
            name = "S3KeyPrefix",
            target_id = prelude.String.id,
        }),
        S3Region = schema.new({
            id = id.from(_N, "LoggingInfo", "S3Region"),
            type = "string",
            name = "S3Region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MaintenanceWindowTaskParameterValueExpression = schema.new({
    id = id.from(_N, "MaintenanceWindowTaskParameterValueExpression"),
    type = "structure",
    members = {
        Values = schema.new({
            id = id.from(_N, "MaintenanceWindowTaskParameterValueExpression", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.MaintenanceWindowTask = schema.new({
    id = id.from(_N, "MaintenanceWindowTask"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        WindowTaskId = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "WindowTaskId"),
            type = "string",
            name = "WindowTaskId",
            target_id = prelude.String.id,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TaskParameters = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "TaskParameters"),
            type = "map",
            name = "TaskParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MaintenanceWindowTaskParameterValueExpression,
        }),
        Priority = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
        }),
        ServiceRoleArn = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "ServiceRoleArn"),
            type = "string",
            name = "ServiceRoleArn",
            target_id = prelude.String.id,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CutoffBehavior = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "CutoffBehavior"),
            type = "string",
            name = "CutoffBehavior",
            target_id = prelude.String.id,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "MaintenanceWindowTask", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
    },
})

M.DescribeMaintenanceWindowTasksOutput = schema.new({
    id = id.from(_N, "DescribeMaintenanceWindowTasksResult"),
    type = "structure",
    members = {
        Tasks = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTasksOutput", "Tasks"),
            type = "list",
            name = "Tasks",
            target_id = prelude.Document.id,
            list_member = M.MaintenanceWindowTask,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMaintenanceWindowTasksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemFilter = schema.new({
    id = id.from(_N, "OpsItemFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "OpsItemFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "OpsItemFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operator = schema.new({
            id = id.from(_N, "OpsItemFilter", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeOpsItemsInput = schema.new({
    id = id.from(_N, "DescribeOpsItemsRequest"),
    type = "structure",
    members = {
        OpsItemFilters = schema.new({
            id = id.from(_N, "DescribeOpsItemsInput", "OpsItemFilters"),
            type = "list",
            name = "OpsItemFilters",
            target_id = prelude.Document.id,
            list_member = M.OpsItemFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeOpsItemsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeOpsItemsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemSummary = schema.new({
    id = id.from(_N, "OpsItemSummary"),
    type = "structure",
    members = {
        CreatedBy = schema.new({
            id = id.from(_N, "OpsItemSummary", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "OpsItemSummary", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "OpsItemSummary", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "OpsItemSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        Priority = schema.new({
            id = id.from(_N, "OpsItemSummary", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        Source = schema.new({
            id = id.from(_N, "OpsItemSummary", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "OpsItemSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        OpsItemId = schema.new({
            id = id.from(_N, "OpsItemSummary", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
        }),
        Title = schema.new({
            id = id.from(_N, "OpsItemSummary", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        OperationalData = schema.new({
            id = id.from(_N, "OpsItemSummary", "OperationalData"),
            type = "map",
            name = "OperationalData",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.OpsItemDataValue,
        }),
        Category = schema.new({
            id = id.from(_N, "OpsItemSummary", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "OpsItemSummary", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        OpsItemType = schema.new({
            id = id.from(_N, "OpsItemSummary", "OpsItemType"),
            type = "string",
            name = "OpsItemType",
            target_id = prelude.String.id,
        }),
        ActualStartTime = schema.new({
            id = id.from(_N, "OpsItemSummary", "ActualStartTime"),
            type = "timestamp",
            name = "ActualStartTime",
            target_id = prelude.Timestamp.id,
        }),
        ActualEndTime = schema.new({
            id = id.from(_N, "OpsItemSummary", "ActualEndTime"),
            type = "timestamp",
            name = "ActualEndTime",
            target_id = prelude.Timestamp.id,
        }),
        PlannedStartTime = schema.new({
            id = id.from(_N, "OpsItemSummary", "PlannedStartTime"),
            type = "timestamp",
            name = "PlannedStartTime",
            target_id = prelude.Timestamp.id,
        }),
        PlannedEndTime = schema.new({
            id = id.from(_N, "OpsItemSummary", "PlannedEndTime"),
            type = "timestamp",
            name = "PlannedEndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeOpsItemsOutput = schema.new({
    id = id.from(_N, "DescribeOpsItemsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeOpsItemsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        OpsItemSummaries = schema.new({
            id = id.from(_N, "DescribeOpsItemsOutput", "OpsItemSummaries"),
            type = "list",
            name = "OpsItemSummaries",
            target_id = prelude.Document.id,
            list_member = M.OpsItemSummary,
        }),
    },
})

M.ParametersFilter = schema.new({
    id = id.from(_N, "ParametersFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ParametersFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "ParametersFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ParameterStringFilter = schema.new({
    id = id.from(_N, "ParameterStringFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ParameterStringFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Option = schema.new({
            id = id.from(_N, "ParameterStringFilter", "Option"),
            type = "string",
            name = "Option",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "ParameterStringFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeParametersInput = schema.new({
    id = id.from(_N, "DescribeParametersRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeParametersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.ParametersFilter,
        }),
        ParameterFilters = schema.new({
            id = id.from(_N, "DescribeParametersInput", "ParameterFilters"),
            type = "list",
            name = "ParameterFilters",
            target_id = prelude.Document.id,
            list_member = M.ParameterStringFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeParametersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeParametersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Shared = schema.new({
            id = id.from(_N, "DescribeParametersInput", "Shared"),
            type = "boolean",
            name = "Shared",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.ParameterInlinePolicy = schema.new({
    id = id.from(_N, "ParameterInlinePolicy"),
    type = "structure",
    members = {
        PolicyText = schema.new({
            id = id.from(_N, "ParameterInlinePolicy", "PolicyText"),
            type = "string",
            name = "PolicyText",
            target_id = prelude.String.id,
        }),
        PolicyType = schema.new({
            id = id.from(_N, "ParameterInlinePolicy", "PolicyType"),
            type = "string",
            name = "PolicyType",
            target_id = prelude.String.id,
        }),
        PolicyStatus = schema.new({
            id = id.from(_N, "ParameterInlinePolicy", "PolicyStatus"),
            type = "string",
            name = "PolicyStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterMetadata = schema.new({
    id = id.from(_N, "ParameterMetadata"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ParameterMetadata", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "ParameterMetadata", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ParameterMetadata", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        KeyId = schema.new({
            id = id.from(_N, "ParameterMetadata", "KeyId"),
            type = "string",
            name = "KeyId",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "ParameterMetadata", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedUser = schema.new({
            id = id.from(_N, "ParameterMetadata", "LastModifiedUser"),
            type = "string",
            name = "LastModifiedUser",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ParameterMetadata", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        AllowedPattern = schema.new({
            id = id.from(_N, "ParameterMetadata", "AllowedPattern"),
            type = "string",
            name = "AllowedPattern",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "ParameterMetadata", "Version"),
            type = "long",
            name = "Version",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "ParameterMetadata", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
        }),
        Policies = schema.new({
            id = id.from(_N, "ParameterMetadata", "Policies"),
            type = "list",
            name = "Policies",
            target_id = prelude.Document.id,
            list_member = M.ParameterInlinePolicy,
        }),
        DataType = schema.new({
            id = id.from(_N, "ParameterMetadata", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeParametersOutput = schema.new({
    id = id.from(_N, "DescribeParametersResult"),
    type = "structure",
    members = {
        Parameters = schema.new({
            id = id.from(_N, "DescribeParametersOutput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.ParameterMetadata,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeParametersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidFilterOption = schema.new({
    id = id.from(_N, "InvalidFilterOption"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidFilterOption", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePatchBaselinesInput = schema.new({
    id = id.from(_N, "DescribePatchBaselinesRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribePatchBaselinesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.PatchOrchestratorFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribePatchBaselinesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePatchBaselinesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PatchBaselineIdentity = schema.new({
    id = id.from(_N, "PatchBaselineIdentity"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "PatchBaselineIdentity", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
        }),
        BaselineName = schema.new({
            id = id.from(_N, "PatchBaselineIdentity", "BaselineName"),
            type = "string",
            name = "BaselineName",
            target_id = prelude.String.id,
        }),
        OperatingSystem = schema.new({
            id = id.from(_N, "PatchBaselineIdentity", "OperatingSystem"),
            type = "string",
            name = "OperatingSystem",
            target_id = prelude.String.id,
        }),
        BaselineDescription = schema.new({
            id = id.from(_N, "PatchBaselineIdentity", "BaselineDescription"),
            type = "string",
            name = "BaselineDescription",
            target_id = prelude.String.id,
        }),
        DefaultBaseline = schema.new({
            id = id.from(_N, "PatchBaselineIdentity", "DefaultBaseline"),
            type = "boolean",
            name = "DefaultBaseline",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribePatchBaselinesOutput = schema.new({
    id = id.from(_N, "DescribePatchBaselinesResult"),
    type = "structure",
    members = {
        BaselineIdentities = schema.new({
            id = id.from(_N, "DescribePatchBaselinesOutput", "BaselineIdentities"),
            type = "list",
            name = "BaselineIdentities",
            target_id = prelude.Document.id,
            list_member = M.PatchBaselineIdentity,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePatchBaselinesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePatchGroupsInput = schema.new({
    id = id.from(_N, "DescribePatchGroupsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "DescribePatchGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribePatchGroupsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.PatchOrchestratorFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePatchGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PatchGroupPatchBaselineMapping = schema.new({
    id = id.from(_N, "PatchGroupPatchBaselineMapping"),
    type = "structure",
    members = {
        PatchGroup = schema.new({
            id = id.from(_N, "PatchGroupPatchBaselineMapping", "PatchGroup"),
            type = "string",
            name = "PatchGroup",
            target_id = prelude.String.id,
        }),
        BaselineIdentity = schema.new({
            id = id.from(_N, "PatchGroupPatchBaselineMapping", "BaselineIdentity"),
            type = "structure",
            name = "BaselineIdentity",
            target_id = id.from(_N, "PatchBaselineIdentity"),
            target = M.PatchBaselineIdentity,
        }),
    },
})

M.DescribePatchGroupsOutput = schema.new({
    id = id.from(_N, "DescribePatchGroupsResult"),
    type = "structure",
    members = {
        Mappings = schema.new({
            id = id.from(_N, "DescribePatchGroupsOutput", "Mappings"),
            type = "list",
            name = "Mappings",
            target_id = prelude.Document.id,
            list_member = M.PatchGroupPatchBaselineMapping,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePatchGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePatchGroupStateInput = schema.new({
    id = id.from(_N, "DescribePatchGroupStateRequest"),
    type = "structure",
    members = {
        PatchGroup = schema.new({
            id = id.from(_N, "DescribePatchGroupStateInput", "PatchGroup"),
            type = "string",
            name = "PatchGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribePatchGroupStateOutput = schema.new({
    id = id.from(_N, "DescribePatchGroupStateResult"),
    type = "structure",
    members = {
        Instances = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "Instances"),
            type = "integer",
            name = "Instances",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        InstancesWithInstalledPatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithInstalledPatches"),
            type = "integer",
            name = "InstancesWithInstalledPatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        InstancesWithInstalledOtherPatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithInstalledOtherPatches"),
            type = "integer",
            name = "InstancesWithInstalledOtherPatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        InstancesWithInstalledPendingRebootPatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithInstalledPendingRebootPatches"),
            type = "integer",
            name = "InstancesWithInstalledPendingRebootPatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        InstancesWithInstalledRejectedPatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithInstalledRejectedPatches"),
            type = "integer",
            name = "InstancesWithInstalledRejectedPatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        InstancesWithMissingPatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithMissingPatches"),
            type = "integer",
            name = "InstancesWithMissingPatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        InstancesWithFailedPatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithFailedPatches"),
            type = "integer",
            name = "InstancesWithFailedPatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        InstancesWithNotApplicablePatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithNotApplicablePatches"),
            type = "integer",
            name = "InstancesWithNotApplicablePatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        InstancesWithUnreportedNotApplicablePatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithUnreportedNotApplicablePatches"),
            type = "integer",
            name = "InstancesWithUnreportedNotApplicablePatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        InstancesWithCriticalNonCompliantPatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithCriticalNonCompliantPatches"),
            type = "integer",
            name = "InstancesWithCriticalNonCompliantPatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        InstancesWithSecurityNonCompliantPatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithSecurityNonCompliantPatches"),
            type = "integer",
            name = "InstancesWithSecurityNonCompliantPatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        InstancesWithOtherNonCompliantPatches = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithOtherNonCompliantPatches"),
            type = "integer",
            name = "InstancesWithOtherNonCompliantPatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        InstancesWithAvailableSecurityUpdates = schema.new({
            id = id.from(_N, "DescribePatchGroupStateOutput", "InstancesWithAvailableSecurityUpdates"),
            type = "integer",
            name = "InstancesWithAvailableSecurityUpdates",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.DescribePatchPropertiesInput = schema.new({
    id = id.from(_N, "DescribePatchPropertiesRequest"),
    type = "structure",
    members = {
        OperatingSystem = schema.new({
            id = id.from(_N, "DescribePatchPropertiesInput", "OperatingSystem"),
            type = "string",
            name = "OperatingSystem",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Property = schema.new({
            id = id.from(_N, "DescribePatchPropertiesInput", "Property"),
            type = "string",
            name = "Property",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PatchSet = schema.new({
            id = id.from(_N, "DescribePatchPropertiesInput", "PatchSet"),
            type = "string",
            name = "PatchSet",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribePatchPropertiesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePatchPropertiesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePatchPropertiesOutput = schema.new({
    id = id.from(_N, "DescribePatchPropertiesResult"),
    type = "structure",
    members = {
        Properties = schema.new({
            id = id.from(_N, "DescribePatchPropertiesOutput", "Properties"),
            type = "list",
            name = "Properties",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePatchPropertiesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SessionFilter = schema.new({
    id = id.from(_N, "SessionFilter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "SessionFilter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "SessionFilter", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeSessionsInput = schema.new({
    id = id.from(_N, "DescribeSessionsRequest"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "DescribeSessionsInput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeSessionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSessionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeSessionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.SessionFilter,
        }),
    },
})

M.SessionManagerOutputUrl = schema.new({
    id = id.from(_N, "SessionManagerOutputUrl"),
    type = "structure",
    members = {
        S3OutputUrl = schema.new({
            id = id.from(_N, "SessionManagerOutputUrl", "S3OutputUrl"),
            type = "string",
            name = "S3OutputUrl",
            target_id = prelude.String.id,
        }),
        CloudWatchOutputUrl = schema.new({
            id = id.from(_N, "SessionManagerOutputUrl", "CloudWatchOutputUrl"),
            type = "string",
            name = "CloudWatchOutputUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.Session = schema.new({
    id = id.from(_N, "Session"),
    type = "structure",
    members = {
        SessionId = schema.new({
            id = id.from(_N, "Session", "SessionId"),
            type = "string",
            name = "SessionId",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "Session", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Session", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StartDate = schema.new({
            id = id.from(_N, "Session", "StartDate"),
            type = "timestamp",
            name = "StartDate",
            target_id = prelude.Timestamp.id,
        }),
        EndDate = schema.new({
            id = id.from(_N, "Session", "EndDate"),
            type = "timestamp",
            name = "EndDate",
            target_id = prelude.Timestamp.id,
        }),
        DocumentName = schema.new({
            id = id.from(_N, "Session", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "Session", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "Session", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        Details = schema.new({
            id = id.from(_N, "Session", "Details"),
            type = "string",
            name = "Details",
            target_id = prelude.String.id,
        }),
        OutputUrl = schema.new({
            id = id.from(_N, "Session", "OutputUrl"),
            type = "structure",
            name = "OutputUrl",
            target_id = id.from(_N, "SessionManagerOutputUrl"),
            target = M.SessionManagerOutputUrl,
        }),
        MaxSessionDuration = schema.new({
            id = id.from(_N, "Session", "MaxSessionDuration"),
            type = "string",
            name = "MaxSessionDuration",
            target_id = prelude.String.id,
        }),
        AccessType = schema.new({
            id = id.from(_N, "Session", "AccessType"),
            type = "string",
            name = "AccessType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSessionsOutput = schema.new({
    id = id.from(_N, "DescribeSessionsResponse"),
    type = "structure",
    members = {
        Sessions = schema.new({
            id = id.from(_N, "DescribeSessionsOutput", "Sessions"),
            type = "list",
            name = "Sessions",
            target_id = prelude.Document.id,
            list_member = M.Session,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSessionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateOpsItemRelatedItemInput = schema.new({
    id = id.from(_N, "DisassociateOpsItemRelatedItemRequest"),
    type = "structure",
    members = {
        OpsItemId = schema.new({
            id = id.from(_N, "DisassociateOpsItemRelatedItemInput", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssociationId = schema.new({
            id = id.from(_N, "DisassociateOpsItemRelatedItemInput", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateOpsItemRelatedItemOutput = schema.new({
    id = id.from(_N, "DisassociateOpsItemRelatedItemResponse"),
    type = "structure",
})

M.OpsItemRelatedItemAssociationNotFoundException = schema.new({
    id = id.from(_N, "OpsItemRelatedItemAssociationNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OpsItemRelatedItemAssociationNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAccessTokenInput = schema.new({
    id = id.from(_N, "GetAccessTokenRequest"),
    type = "structure",
    members = {
        AccessRequestId = schema.new({
            id = id.from(_N, "GetAccessTokenInput", "AccessRequestId"),
            type = "string",
            name = "AccessRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Credentials = schema.new({
    id = id.from(_N, "Credentials"),
    type = "structure",
    members = {
        AccessKeyId = schema.new({
            id = id.from(_N, "Credentials", "AccessKeyId"),
            type = "string",
            name = "AccessKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecretAccessKey = schema.new({
            id = id.from(_N, "Credentials", "SecretAccessKey"),
            type = "string",
            name = "SecretAccessKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SessionToken = schema.new({
            id = id.from(_N, "Credentials", "SessionToken"),
            type = "string",
            name = "SessionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpirationTime = schema.new({
            id = id.from(_N, "Credentials", "ExpirationTime"),
            type = "timestamp",
            name = "ExpirationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAccessTokenOutput = schema.new({
    id = id.from(_N, "GetAccessTokenResponse"),
    type = "structure",
    members = {
        Credentials = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "Credentials"),
            type = "structure",
            name = "Credentials",
            target_id = id.from(_N, "Credentials"),
            target = M.Credentials,
        }),
        AccessRequestStatus = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "AccessRequestStatus"),
            type = "string",
            name = "AccessRequestStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
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
        ReasonCode = schema.new({
            id = id.from(_N, "ValidationException", "ReasonCode"),
            type = "string",
            name = "ReasonCode",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAutomationExecutionInput = schema.new({
    id = id.from(_N, "GetAutomationExecutionRequest"),
    type = "structure",
    members = {
        AutomationExecutionId = schema.new({
            id = id.from(_N, "GetAutomationExecutionInput", "AutomationExecutionId"),
            type = "string",
            name = "AutomationExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProgressCounters = schema.new({
    id = id.from(_N, "ProgressCounters"),
    type = "structure",
    members = {
        TotalSteps = schema.new({
            id = id.from(_N, "ProgressCounters", "TotalSteps"),
            type = "integer",
            name = "TotalSteps",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SuccessSteps = schema.new({
            id = id.from(_N, "ProgressCounters", "SuccessSteps"),
            type = "integer",
            name = "SuccessSteps",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FailedSteps = schema.new({
            id = id.from(_N, "ProgressCounters", "FailedSteps"),
            type = "integer",
            name = "FailedSteps",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CancelledSteps = schema.new({
            id = id.from(_N, "ProgressCounters", "CancelledSteps"),
            type = "integer",
            name = "CancelledSteps",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TimedOutSteps = schema.new({
            id = id.from(_N, "ProgressCounters", "TimedOutSteps"),
            type = "integer",
            name = "TimedOutSteps",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AutomationExecution = schema.new({
    id = id.from(_N, "AutomationExecution"),
    type = "structure",
    members = {
        AutomationExecutionId = schema.new({
            id = id.from(_N, "AutomationExecution", "AutomationExecutionId"),
            type = "string",
            name = "AutomationExecutionId",
            target_id = prelude.String.id,
        }),
        DocumentName = schema.new({
            id = id.from(_N, "AutomationExecution", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "AutomationExecution", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        ExecutionStartTime = schema.new({
            id = id.from(_N, "AutomationExecution", "ExecutionStartTime"),
            type = "timestamp",
            name = "ExecutionStartTime",
            target_id = prelude.Timestamp.id,
        }),
        ExecutionEndTime = schema.new({
            id = id.from(_N, "AutomationExecution", "ExecutionEndTime"),
            type = "timestamp",
            name = "ExecutionEndTime",
            target_id = prelude.Timestamp.id,
        }),
        AutomationExecutionStatus = schema.new({
            id = id.from(_N, "AutomationExecution", "AutomationExecutionStatus"),
            type = "string",
            name = "AutomationExecutionStatus",
            target_id = prelude.String.id,
        }),
        StepExecutions = schema.new({
            id = id.from(_N, "AutomationExecution", "StepExecutions"),
            type = "list",
            name = "StepExecutions",
            target_id = prelude.Document.id,
            list_member = M.StepExecution,
        }),
        StepExecutionsTruncated = schema.new({
            id = id.from(_N, "AutomationExecution", "StepExecutionsTruncated"),
            type = "boolean",
            name = "StepExecutionsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "AutomationExecution", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        Outputs = schema.new({
            id = id.from(_N, "AutomationExecution", "Outputs"),
            type = "map",
            name = "Outputs",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        FailureMessage = schema.new({
            id = id.from(_N, "AutomationExecution", "FailureMessage"),
            type = "string",
            name = "FailureMessage",
            target_id = prelude.String.id,
        }),
        Mode = schema.new({
            id = id.from(_N, "AutomationExecution", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        ParentAutomationExecutionId = schema.new({
            id = id.from(_N, "AutomationExecution", "ParentAutomationExecutionId"),
            type = "string",
            name = "ParentAutomationExecutionId",
            target_id = prelude.String.id,
        }),
        ExecutedBy = schema.new({
            id = id.from(_N, "AutomationExecution", "ExecutedBy"),
            type = "string",
            name = "ExecutedBy",
            target_id = prelude.String.id,
        }),
        CurrentStepName = schema.new({
            id = id.from(_N, "AutomationExecution", "CurrentStepName"),
            type = "string",
            name = "CurrentStepName",
            target_id = prelude.String.id,
        }),
        CurrentAction = schema.new({
            id = id.from(_N, "AutomationExecution", "CurrentAction"),
            type = "string",
            name = "CurrentAction",
            target_id = prelude.String.id,
        }),
        TargetParameterName = schema.new({
            id = id.from(_N, "AutomationExecution", "TargetParameterName"),
            type = "string",
            name = "TargetParameterName",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "AutomationExecution", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "AutomationExecution", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        ResolvedTargets = schema.new({
            id = id.from(_N, "AutomationExecution", "ResolvedTargets"),
            type = "structure",
            name = "ResolvedTargets",
            target_id = id.from(_N, "ResolvedTargets"),
            target = M.ResolvedTargets,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "AutomationExecution", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "AutomationExecution", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "AutomationExecution", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
        }),
        TargetLocations = schema.new({
            id = id.from(_N, "AutomationExecution", "TargetLocations"),
            type = "list",
            name = "TargetLocations",
            target_id = prelude.Document.id,
            list_member = M.TargetLocation,
        }),
        ProgressCounters = schema.new({
            id = id.from(_N, "AutomationExecution", "ProgressCounters"),
            type = "structure",
            name = "ProgressCounters",
            target_id = id.from(_N, "ProgressCounters"),
            target = M.ProgressCounters,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "AutomationExecution", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        TriggeredAlarms = schema.new({
            id = id.from(_N, "AutomationExecution", "TriggeredAlarms"),
            type = "list",
            name = "TriggeredAlarms",
            target_id = prelude.Document.id,
            list_member = M.AlarmStateInformation,
        }),
        TargetLocationsURL = schema.new({
            id = id.from(_N, "AutomationExecution", "TargetLocationsURL"),
            type = "string",
            name = "TargetLocationsURL",
            target_id = prelude.String.id,
        }),
        AutomationSubtype = schema.new({
            id = id.from(_N, "AutomationExecution", "AutomationSubtype"),
            type = "string",
            name = "AutomationSubtype",
            target_id = prelude.String.id,
        }),
        ScheduledTime = schema.new({
            id = id.from(_N, "AutomationExecution", "ScheduledTime"),
            type = "timestamp",
            name = "ScheduledTime",
            target_id = prelude.Timestamp.id,
        }),
        Runbooks = schema.new({
            id = id.from(_N, "AutomationExecution", "Runbooks"),
            type = "list",
            name = "Runbooks",
            target_id = prelude.Document.id,
            list_member = M.Runbook,
        }),
        OpsItemId = schema.new({
            id = id.from(_N, "AutomationExecution", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
        }),
        AssociationId = schema.new({
            id = id.from(_N, "AutomationExecution", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        ChangeRequestName = schema.new({
            id = id.from(_N, "AutomationExecution", "ChangeRequestName"),
            type = "string",
            name = "ChangeRequestName",
            target_id = prelude.String.id,
        }),
        Variables = schema.new({
            id = id.from(_N, "AutomationExecution", "Variables"),
            type = "map",
            name = "Variables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
    },
})

M.GetAutomationExecutionOutput = schema.new({
    id = id.from(_N, "GetAutomationExecutionResult"),
    type = "structure",
    members = {
        AutomationExecution = schema.new({
            id = id.from(_N, "GetAutomationExecutionOutput", "AutomationExecution"),
            type = "structure",
            name = "AutomationExecution",
            target_id = id.from(_N, "AutomationExecution"),
            target = M.AutomationExecution,
        }),
    },
})

M.GetCalendarStateInput = schema.new({
    id = id.from(_N, "GetCalendarStateRequest"),
    type = "structure",
    members = {
        CalendarNames = schema.new({
            id = id.from(_N, "GetCalendarStateInput", "CalendarNames"),
            type = "list",
            name = "CalendarNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AtTime = schema.new({
            id = id.from(_N, "GetCalendarStateInput", "AtTime"),
            type = "string",
            name = "AtTime",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCalendarStateOutput = schema.new({
    id = id.from(_N, "GetCalendarStateResponse"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "GetCalendarStateOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        AtTime = schema.new({
            id = id.from(_N, "GetCalendarStateOutput", "AtTime"),
            type = "string",
            name = "AtTime",
            target_id = prelude.String.id,
        }),
        NextTransitionTime = schema.new({
            id = id.from(_N, "GetCalendarStateOutput", "NextTransitionTime"),
            type = "string",
            name = "NextTransitionTime",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDocumentType = schema.new({
    id = id.from(_N, "InvalidDocumentType"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidDocumentType", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedCalendarException = schema.new({
    id = id.from(_N, "UnsupportedCalendarException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedCalendarException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCommandInvocationInput = schema.new({
    id = id.from(_N, "GetCommandInvocationRequest"),
    type = "structure",
    members = {
        CommandId = schema.new({
            id = id.from(_N, "GetCommandInvocationInput", "CommandId"),
            type = "string",
            name = "CommandId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceId = schema.new({
            id = id.from(_N, "GetCommandInvocationInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PluginName = schema.new({
            id = id.from(_N, "GetCommandInvocationInput", "PluginName"),
            type = "string",
            name = "PluginName",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudWatchOutputConfig = schema.new({
    id = id.from(_N, "CloudWatchOutputConfig"),
    type = "structure",
    members = {
        CloudWatchLogGroupName = schema.new({
            id = id.from(_N, "CloudWatchOutputConfig", "CloudWatchLogGroupName"),
            type = "string",
            name = "CloudWatchLogGroupName",
            target_id = prelude.String.id,
        }),
        CloudWatchOutputEnabled = schema.new({
            id = id.from(_N, "CloudWatchOutputConfig", "CloudWatchOutputEnabled"),
            type = "boolean",
            name = "CloudWatchOutputEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetCommandInvocationOutput = schema.new({
    id = id.from(_N, "GetCommandInvocationResult"),
    type = "structure",
    members = {
        CommandId = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "CommandId"),
            type = "string",
            name = "CommandId",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        Comment = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        DocumentName = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        PluginName = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "PluginName"),
            type = "string",
            name = "PluginName",
            target_id = prelude.String.id,
        }),
        ResponseCode = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "ResponseCode"),
            type = "integer",
            name = "ResponseCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ExecutionStartDateTime = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "ExecutionStartDateTime"),
            type = "string",
            name = "ExecutionStartDateTime",
            target_id = prelude.String.id,
        }),
        ExecutionElapsedTime = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "ExecutionElapsedTime"),
            type = "string",
            name = "ExecutionElapsedTime",
            target_id = prelude.String.id,
        }),
        ExecutionEndDateTime = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "ExecutionEndDateTime"),
            type = "string",
            name = "ExecutionEndDateTime",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        StandardOutputContent = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "StandardOutputContent"),
            type = "string",
            name = "StandardOutputContent",
            target_id = prelude.String.id,
        }),
        StandardOutputUrl = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "StandardOutputUrl"),
            type = "string",
            name = "StandardOutputUrl",
            target_id = prelude.String.id,
        }),
        StandardErrorContent = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "StandardErrorContent"),
            type = "string",
            name = "StandardErrorContent",
            target_id = prelude.String.id,
        }),
        StandardErrorUrl = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "StandardErrorUrl"),
            type = "string",
            name = "StandardErrorUrl",
            target_id = prelude.String.id,
        }),
        CloudWatchOutputConfig = schema.new({
            id = id.from(_N, "GetCommandInvocationOutput", "CloudWatchOutputConfig"),
            type = "structure",
            name = "CloudWatchOutputConfig",
            target_id = id.from(_N, "CloudWatchOutputConfig"),
            target = M.CloudWatchOutputConfig,
        }),
    },
})

M.InvalidPluginName = schema.new({
    id = id.from(_N, "InvalidPluginName"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.InvocationDoesNotExist = schema.new({
    id = id.from(_N, "InvocationDoesNotExist"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.GetConnectionStatusInput = schema.new({
    id = id.from(_N, "GetConnectionStatusRequest"),
    type = "structure",
    members = {
        Target = schema.new({
            id = id.from(_N, "GetConnectionStatusInput", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetConnectionStatusOutput = schema.new({
    id = id.from(_N, "GetConnectionStatusResponse"),
    type = "structure",
    members = {
        Target = schema.new({
            id = id.from(_N, "GetConnectionStatusOutput", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetConnectionStatusOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDefaultPatchBaselineInput = schema.new({
    id = id.from(_N, "GetDefaultPatchBaselineRequest"),
    type = "structure",
    members = {
        OperatingSystem = schema.new({
            id = id.from(_N, "GetDefaultPatchBaselineInput", "OperatingSystem"),
            type = "string",
            name = "OperatingSystem",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDefaultPatchBaselineOutput = schema.new({
    id = id.from(_N, "GetDefaultPatchBaselineResult"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "GetDefaultPatchBaselineOutput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
        }),
        OperatingSystem = schema.new({
            id = id.from(_N, "GetDefaultPatchBaselineOutput", "OperatingSystem"),
            type = "string",
            name = "OperatingSystem",
            target_id = prelude.String.id,
        }),
    },
})

M.BaselineOverride = schema.new({
    id = id.from(_N, "BaselineOverride"),
    type = "structure",
    members = {
        OperatingSystem = schema.new({
            id = id.from(_N, "BaselineOverride", "OperatingSystem"),
            type = "string",
            name = "OperatingSystem",
            target_id = prelude.String.id,
        }),
        GlobalFilters = schema.new({
            id = id.from(_N, "BaselineOverride", "GlobalFilters"),
            type = "structure",
            name = "GlobalFilters",
            target_id = id.from(_N, "PatchFilterGroup"),
            target = M.PatchFilterGroup,
        }),
        ApprovalRules = schema.new({
            id = id.from(_N, "BaselineOverride", "ApprovalRules"),
            type = "structure",
            name = "ApprovalRules",
            target_id = id.from(_N, "PatchRuleGroup"),
            target = M.PatchRuleGroup,
        }),
        ApprovedPatches = schema.new({
            id = id.from(_N, "BaselineOverride", "ApprovedPatches"),
            type = "list",
            name = "ApprovedPatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ApprovedPatchesComplianceLevel = schema.new({
            id = id.from(_N, "BaselineOverride", "ApprovedPatchesComplianceLevel"),
            type = "string",
            name = "ApprovedPatchesComplianceLevel",
            target_id = prelude.String.id,
        }),
        RejectedPatches = schema.new({
            id = id.from(_N, "BaselineOverride", "RejectedPatches"),
            type = "list",
            name = "RejectedPatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RejectedPatchesAction = schema.new({
            id = id.from(_N, "BaselineOverride", "RejectedPatchesAction"),
            type = "string",
            name = "RejectedPatchesAction",
            target_id = prelude.String.id,
        }),
        ApprovedPatchesEnableNonSecurity = schema.new({
            id = id.from(_N, "BaselineOverride", "ApprovedPatchesEnableNonSecurity"),
            type = "boolean",
            name = "ApprovedPatchesEnableNonSecurity",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Sources = schema.new({
            id = id.from(_N, "BaselineOverride", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.PatchSource,
        }),
        AvailableSecurityUpdatesComplianceStatus = schema.new({
            id = id.from(_N, "BaselineOverride", "AvailableSecurityUpdatesComplianceStatus"),
            type = "string",
            name = "AvailableSecurityUpdatesComplianceStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDeployablePatchSnapshotForInstanceInput = schema.new({
    id = id.from(_N, "GetDeployablePatchSnapshotForInstanceRequest"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "GetDeployablePatchSnapshotForInstanceInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnapshotId = schema.new({
            id = id.from(_N, "GetDeployablePatchSnapshotForInstanceInput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BaselineOverride = schema.new({
            id = id.from(_N, "GetDeployablePatchSnapshotForInstanceInput", "BaselineOverride"),
            type = "structure",
            name = "BaselineOverride",
            target_id = id.from(_N, "BaselineOverride"),
            target = M.BaselineOverride,
        }),
        UseS3DualStackEndpoint = schema.new({
            id = id.from(_N, "GetDeployablePatchSnapshotForInstanceInput", "UseS3DualStackEndpoint"),
            type = "boolean",
            name = "UseS3DualStackEndpoint",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetDeployablePatchSnapshotForInstanceOutput = schema.new({
    id = id.from(_N, "GetDeployablePatchSnapshotForInstanceResult"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "GetDeployablePatchSnapshotForInstanceOutput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        SnapshotId = schema.new({
            id = id.from(_N, "GetDeployablePatchSnapshotForInstanceOutput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
        SnapshotDownloadUrl = schema.new({
            id = id.from(_N, "GetDeployablePatchSnapshotForInstanceOutput", "SnapshotDownloadUrl"),
            type = "string",
            name = "SnapshotDownloadUrl",
            target_id = prelude.String.id,
        }),
        Product = schema.new({
            id = id.from(_N, "GetDeployablePatchSnapshotForInstanceOutput", "Product"),
            type = "string",
            name = "Product",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedFeatureRequiredException = schema.new({
    id = id.from(_N, "UnsupportedFeatureRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedFeatureRequiredException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDocumentInput = schema.new({
    id = id.from(_N, "GetDocumentRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetDocumentInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionName = schema.new({
            id = id.from(_N, "GetDocumentInput", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "GetDocumentInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        DocumentFormat = schema.new({
            id = id.from(_N, "GetDocumentInput", "DocumentFormat"),
            type = "string",
            name = "DocumentFormat",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachmentContent = schema.new({
    id = id.from(_N, "AttachmentContent"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AttachmentContent", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Size = schema.new({
            id = id.from(_N, "AttachmentContent", "Size"),
            type = "long",
            name = "Size",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Hash = schema.new({
            id = id.from(_N, "AttachmentContent", "Hash"),
            type = "string",
            name = "Hash",
            target_id = prelude.String.id,
        }),
        HashType = schema.new({
            id = id.from(_N, "AttachmentContent", "HashType"),
            type = "string",
            name = "HashType",
            target_id = prelude.String.id,
        }),
        Url = schema.new({
            id = id.from(_N, "AttachmentContent", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDocumentOutput = schema.new({
    id = id.from(_N, "GetDocumentResult"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetDocumentOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "GetDocumentOutput", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "GetDocumentOutput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "GetDocumentOutput", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "GetDocumentOutput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetDocumentOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusInformation = schema.new({
            id = id.from(_N, "GetDocumentOutput", "StatusInformation"),
            type = "string",
            name = "StatusInformation",
            target_id = prelude.String.id,
        }),
        Content = schema.new({
            id = id.from(_N, "GetDocumentOutput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        DocumentType = schema.new({
            id = id.from(_N, "GetDocumentOutput", "DocumentType"),
            type = "string",
            name = "DocumentType",
            target_id = prelude.String.id,
        }),
        DocumentFormat = schema.new({
            id = id.from(_N, "GetDocumentOutput", "DocumentFormat"),
            type = "string",
            name = "DocumentFormat",
            target_id = prelude.String.id,
        }),
        Requires = schema.new({
            id = id.from(_N, "GetDocumentOutput", "Requires"),
            type = "list",
            name = "Requires",
            target_id = prelude.Document.id,
            list_member = M.DocumentRequires,
        }),
        AttachmentsContent = schema.new({
            id = id.from(_N, "GetDocumentOutput", "AttachmentsContent"),
            type = "list",
            name = "AttachmentsContent",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AttachmentContent, traits = { [traits.XML_NAME] = { name = "AttachmentContent" } } }),
        }),
        ReviewStatus = schema.new({
            id = id.from(_N, "GetDocumentOutput", "ReviewStatus"),
            type = "string",
            name = "ReviewStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetExecutionPreviewInput = schema.new({
    id = id.from(_N, "GetExecutionPreviewRequest"),
    type = "structure",
    members = {
        ExecutionPreviewId = schema.new({
            id = id.from(_N, "GetExecutionPreviewInput", "ExecutionPreviewId"),
            type = "string",
            name = "ExecutionPreviewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TargetPreview = schema.new({
    id = id.from(_N, "TargetPreview"),
    type = "structure",
    members = {
        Count = schema.new({
            id = id.from(_N, "TargetPreview", "Count"),
            type = "integer",
            name = "Count",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TargetType = schema.new({
            id = id.from(_N, "TargetPreview", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
        }),
    },
})

M.AutomationExecutionPreview = schema.new({
    id = id.from(_N, "AutomationExecutionPreview"),
    type = "structure",
    members = {
        StepPreviews = schema.new({
            id = id.from(_N, "AutomationExecutionPreview", "StepPreviews"),
            type = "map",
            name = "StepPreviews",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
        }),
        Regions = schema.new({
            id = id.from(_N, "AutomationExecutionPreview", "Regions"),
            type = "list",
            name = "Regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TargetPreviews = schema.new({
            id = id.from(_N, "AutomationExecutionPreview", "TargetPreviews"),
            type = "list",
            name = "TargetPreviews",
            target_id = prelude.Document.id,
            list_member = M.TargetPreview,
        }),
        TotalAccounts = schema.new({
            id = id.from(_N, "AutomationExecutionPreview", "TotalAccounts"),
            type = "integer",
            name = "TotalAccounts",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ExecutionPreview = schema.new({
    id = id.from(_N, "ExecutionPreview"),
    type = "union",
    members = {
        Automation = schema.new({
            id = id.from(_N, "ExecutionPreview", "Automation"),
            type = "structure",
            name = "Automation",
            target_id = id.from(_N, "AutomationExecutionPreview"),
            target = M.AutomationExecutionPreview,
        }),
    },
})

M.GetExecutionPreviewOutput = schema.new({
    id = id.from(_N, "GetExecutionPreviewResponse"),
    type = "structure",
    members = {
        ExecutionPreviewId = schema.new({
            id = id.from(_N, "GetExecutionPreviewOutput", "ExecutionPreviewId"),
            type = "string",
            name = "ExecutionPreviewId",
            target_id = prelude.String.id,
        }),
        EndedAt = schema.new({
            id = id.from(_N, "GetExecutionPreviewOutput", "EndedAt"),
            type = "timestamp",
            name = "EndedAt",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetExecutionPreviewOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "GetExecutionPreviewOutput", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        ExecutionPreview = schema.new({
            id = id.from(_N, "GetExecutionPreviewOutput", "ExecutionPreview"),
            type = "union",
            name = "ExecutionPreview",
            target_id = id.from(_N, "ExecutionPreview"),
            target = M.ExecutionPreview,
        }),
    },
})

M.InventoryFilter = schema.new({
    id = id.from(_N, "InventoryFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "InventoryFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "InventoryFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "FilterValue" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "InventoryFilter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.InventoryGroup = schema.new({
    id = id.from(_N, "InventoryGroup"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "InventoryGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "InventoryGroup", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InventoryFilter, traits = { [traits.XML_NAME] = { name = "InventoryFilter" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResultAttribute = schema.new({
    id = id.from(_N, "ResultAttribute"),
    type = "structure",
    members = {
        TypeName = schema.new({
            id = id.from(_N, "ResultAttribute", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InventoryResultItem = schema.new({
    id = id.from(_N, "InventoryResultItem"),
    type = "structure",
    members = {
        TypeName = schema.new({
            id = id.from(_N, "InventoryResultItem", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "InventoryResultItem", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CaptureTime = schema.new({
            id = id.from(_N, "InventoryResultItem", "CaptureTime"),
            type = "string",
            name = "CaptureTime",
            target_id = prelude.String.id,
        }),
        ContentHash = schema.new({
            id = id.from(_N, "InventoryResultItem", "ContentHash"),
            type = "string",
            name = "ContentHash",
            target_id = prelude.String.id,
        }),
        Content = schema.new({
            id = id.from(_N, "InventoryResultItem", "Content"),
            type = "list",
            name = "Content",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InventoryResultEntity = schema.new({
    id = id.from(_N, "InventoryResultEntity"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "InventoryResultEntity", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Data = schema.new({
            id = id.from(_N, "InventoryResultEntity", "Data"),
            type = "map",
            name = "Data",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.InventoryResultItem,
        }),
    },
})

M.GetInventoryOutput = schema.new({
    id = id.from(_N, "GetInventoryResult"),
    type = "structure",
    members = {
        Entities = schema.new({
            id = id.from(_N, "GetInventoryOutput", "Entities"),
            type = "list",
            name = "Entities",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InventoryResultEntity, traits = { [traits.XML_NAME] = { name = "Entity" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetInventoryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidAggregatorException = schema.new({
    id = id.from(_N, "InvalidAggregatorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidAggregatorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInventoryGroupException = schema.new({
    id = id.from(_N, "InvalidInventoryGroupException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidInventoryGroupException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidResultAttributeException = schema.new({
    id = id.from(_N, "InvalidResultAttributeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidResultAttributeException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInventorySchemaInput = schema.new({
    id = id.from(_N, "GetInventorySchemaRequest"),
    type = "structure",
    members = {
        TypeName = schema.new({
            id = id.from(_N, "GetInventorySchemaInput", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetInventorySchemaInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetInventorySchemaInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Aggregator = schema.new({
            id = id.from(_N, "GetInventorySchemaInput", "Aggregator"),
            type = "boolean",
            name = "Aggregator",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        SubType = schema.new({
            id = id.from(_N, "GetInventorySchemaInput", "SubType"),
            type = "boolean",
            name = "SubType",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.InventoryItemAttribute = schema.new({
    id = id.from(_N, "InventoryItemAttribute"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "InventoryItemAttribute", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataType = schema.new({
            id = id.from(_N, "InventoryItemAttribute", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InventoryItemSchema = schema.new({
    id = id.from(_N, "InventoryItemSchema"),
    type = "structure",
    members = {
        TypeName = schema.new({
            id = id.from(_N, "InventoryItemSchema", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Version = schema.new({
            id = id.from(_N, "InventoryItemSchema", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
        Attributes = schema.new({
            id = id.from(_N, "InventoryItemSchema", "Attributes"),
            type = "list",
            name = "Attributes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InventoryItemAttribute, traits = { [traits.XML_NAME] = { name = "Attribute" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "InventoryItemSchema", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInventorySchemaOutput = schema.new({
    id = id.from(_N, "GetInventorySchemaResult"),
    type = "structure",
    members = {
        Schemas = schema.new({
            id = id.from(_N, "GetInventorySchemaOutput", "Schemas"),
            type = "list",
            name = "Schemas",
            target_id = prelude.Document.id,
            list_member = M.InventoryItemSchema,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetInventorySchemaOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMaintenanceWindowInput = schema.new({
    id = id.from(_N, "GetMaintenanceWindowRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMaintenanceWindowOutput = schema.new({
    id = id.from(_N, "GetMaintenanceWindowResult"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        StartDate = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "StartDate"),
            type = "string",
            name = "StartDate",
            target_id = prelude.String.id,
        }),
        EndDate = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "EndDate"),
            type = "string",
            name = "EndDate",
            target_id = prelude.String.id,
        }),
        Schedule = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "Schedule"),
            type = "string",
            name = "Schedule",
            target_id = prelude.String.id,
        }),
        ScheduleTimezone = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "ScheduleTimezone"),
            type = "string",
            name = "ScheduleTimezone",
            target_id = prelude.String.id,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        NextExecutionTime = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "NextExecutionTime"),
            type = "string",
            name = "NextExecutionTime",
            target_id = prelude.String.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        Cutoff = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "Cutoff"),
            type = "integer",
            name = "Cutoff",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AllowUnassociatedTargets = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "AllowUnassociatedTargets"),
            type = "boolean",
            name = "AllowUnassociatedTargets",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        ModifiedDate = schema.new({
            id = id.from(_N, "GetMaintenanceWindowOutput", "ModifiedDate"),
            type = "timestamp",
            name = "ModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetMaintenanceWindowExecutionInput = schema.new({
    id = id.from(_N, "GetMaintenanceWindowExecutionRequest"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionInput", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMaintenanceWindowExecutionOutput = schema.new({
    id = id.from(_N, "GetMaintenanceWindowExecutionResult"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionOutput", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
        }),
        TaskIds = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionOutput", "TaskIds"),
            type = "list",
            name = "TaskIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionOutput", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionOutput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetMaintenanceWindowExecutionTaskInput = schema.new({
    id = id.from(_N, "GetMaintenanceWindowExecutionTaskRequest"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInput", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TaskId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInput", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMaintenanceWindowExecutionTaskOutput = schema.new({
    id = id.from(_N, "GetMaintenanceWindowExecutionTaskResult"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
        }),
        TaskExecutionId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "TaskExecutionId"),
            type = "string",
            name = "TaskExecutionId",
            target_id = prelude.String.id,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        ServiceRole = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "ServiceRole"),
            type = "string",
            name = "ServiceRole",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        TaskParameters = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "TaskParameters"),
            type = "list",
            name = "TaskParameters",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        Priority = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        TriggeredAlarms = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskOutput", "TriggeredAlarms"),
            type = "list",
            name = "TriggeredAlarms",
            target_id = prelude.Document.id,
            list_member = M.AlarmStateInformation,
        }),
    },
})

M.GetMaintenanceWindowExecutionTaskInvocationInput = schema.new({
    id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationRequest"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationInput", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TaskId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationInput", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InvocationId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationInput", "InvocationId"),
            type = "string",
            name = "InvocationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMaintenanceWindowExecutionTaskInvocationOutput = schema.new({
    id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationResult"),
    type = "structure",
    members = {
        WindowExecutionId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "WindowExecutionId"),
            type = "string",
            name = "WindowExecutionId",
            target_id = prelude.String.id,
        }),
        TaskExecutionId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "TaskExecutionId"),
            type = "string",
            name = "TaskExecutionId",
            target_id = prelude.String.id,
        }),
        InvocationId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "InvocationId"),
            type = "string",
            name = "InvocationId",
            target_id = prelude.String.id,
        }),
        ExecutionId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "ExecutionId"),
            type = "string",
            name = "ExecutionId",
            target_id = prelude.String.id,
        }),
        TaskType = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "TaskType"),
            type = "string",
            name = "TaskType",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "Parameters"),
            type = "string",
            name = "Parameters",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        OwnerInformation = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "OwnerInformation"),
            type = "string",
            name = "OwnerInformation",
            target_id = prelude.String.id,
        }),
        WindowTargetId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowExecutionTaskInvocationOutput", "WindowTargetId"),
            type = "string",
            name = "WindowTargetId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMaintenanceWindowTaskInput = schema.new({
    id = id.from(_N, "GetMaintenanceWindowTaskRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WindowTaskId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskInput", "WindowTaskId"),
            type = "string",
            name = "WindowTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MaintenanceWindowAutomationParameters = schema.new({
    id = id.from(_N, "MaintenanceWindowAutomationParameters"),
    type = "structure",
    members = {
        DocumentVersion = schema.new({
            id = id.from(_N, "MaintenanceWindowAutomationParameters", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "MaintenanceWindowAutomationParameters", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
    },
})

M.MaintenanceWindowLambdaParameters = schema.new({
    id = id.from(_N, "MaintenanceWindowLambdaParameters"),
    type = "structure",
    members = {
        ClientContext = schema.new({
            id = id.from(_N, "MaintenanceWindowLambdaParameters", "ClientContext"),
            type = "string",
            name = "ClientContext",
            target_id = prelude.String.id,
        }),
        Qualifier = schema.new({
            id = id.from(_N, "MaintenanceWindowLambdaParameters", "Qualifier"),
            type = "string",
            name = "Qualifier",
            target_id = prelude.String.id,
        }),
        Payload = schema.new({
            id = id.from(_N, "MaintenanceWindowLambdaParameters", "Payload"),
            type = "blob",
            name = "Payload",
            target_id = prelude.Blob.id,
        }),
    },
})

M.NotificationConfig = schema.new({
    id = id.from(_N, "NotificationConfig"),
    type = "structure",
    members = {
        NotificationArn = schema.new({
            id = id.from(_N, "NotificationConfig", "NotificationArn"),
            type = "string",
            name = "NotificationArn",
            target_id = prelude.String.id,
        }),
        NotificationEvents = schema.new({
            id = id.from(_N, "NotificationConfig", "NotificationEvents"),
            type = "list",
            name = "NotificationEvents",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotificationType = schema.new({
            id = id.from(_N, "NotificationConfig", "NotificationType"),
            type = "string",
            name = "NotificationType",
            target_id = prelude.String.id,
        }),
    },
})

M.MaintenanceWindowRunCommandParameters = schema.new({
    id = id.from(_N, "MaintenanceWindowRunCommandParameters"),
    type = "structure",
    members = {
        Comment = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        CloudWatchOutputConfig = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "CloudWatchOutputConfig"),
            type = "structure",
            name = "CloudWatchOutputConfig",
            target_id = id.from(_N, "CloudWatchOutputConfig"),
            target = M.CloudWatchOutputConfig,
        }),
        DocumentHash = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "DocumentHash"),
            type = "string",
            name = "DocumentHash",
            target_id = prelude.String.id,
        }),
        DocumentHashType = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "DocumentHashType"),
            type = "string",
            name = "DocumentHashType",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        NotificationConfig = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "NotificationConfig"),
            type = "structure",
            name = "NotificationConfig",
            target_id = id.from(_N, "NotificationConfig"),
            target = M.NotificationConfig,
        }),
        OutputS3BucketName = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "OutputS3BucketName"),
            type = "string",
            name = "OutputS3BucketName",
            target_id = prelude.String.id,
        }),
        OutputS3KeyPrefix = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "OutputS3KeyPrefix"),
            type = "string",
            name = "OutputS3KeyPrefix",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        ServiceRoleArn = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "ServiceRoleArn"),
            type = "string",
            name = "ServiceRoleArn",
            target_id = prelude.String.id,
        }),
        TimeoutSeconds = schema.new({
            id = id.from(_N, "MaintenanceWindowRunCommandParameters", "TimeoutSeconds"),
            type = "integer",
            name = "TimeoutSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.MaintenanceWindowStepFunctionsParameters = schema.new({
    id = id.from(_N, "MaintenanceWindowStepFunctionsParameters"),
    type = "structure",
    members = {
        Input = schema.new({
            id = id.from(_N, "MaintenanceWindowStepFunctionsParameters", "Input"),
            type = "string",
            name = "Input",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "MaintenanceWindowStepFunctionsParameters", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.MaintenanceWindowTaskInvocationParameters = schema.new({
    id = id.from(_N, "MaintenanceWindowTaskInvocationParameters"),
    type = "structure",
    members = {
        RunCommand = schema.new({
            id = id.from(_N, "MaintenanceWindowTaskInvocationParameters", "RunCommand"),
            type = "structure",
            name = "RunCommand",
            target_id = id.from(_N, "MaintenanceWindowRunCommandParameters"),
            target = M.MaintenanceWindowRunCommandParameters,
        }),
        Automation = schema.new({
            id = id.from(_N, "MaintenanceWindowTaskInvocationParameters", "Automation"),
            type = "structure",
            name = "Automation",
            target_id = id.from(_N, "MaintenanceWindowAutomationParameters"),
            target = M.MaintenanceWindowAutomationParameters,
        }),
        StepFunctions = schema.new({
            id = id.from(_N, "MaintenanceWindowTaskInvocationParameters", "StepFunctions"),
            type = "structure",
            name = "StepFunctions",
            target_id = id.from(_N, "MaintenanceWindowStepFunctionsParameters"),
            target = M.MaintenanceWindowStepFunctionsParameters,
        }),
        Lambda = schema.new({
            id = id.from(_N, "MaintenanceWindowTaskInvocationParameters", "Lambda"),
            type = "structure",
            name = "Lambda",
            target_id = id.from(_N, "MaintenanceWindowLambdaParameters"),
            target = M.MaintenanceWindowLambdaParameters,
        }),
    },
})

M.GetMaintenanceWindowTaskOutput = schema.new({
    id = id.from(_N, "GetMaintenanceWindowTaskResult"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        WindowTaskId = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "WindowTaskId"),
            type = "string",
            name = "WindowTaskId",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        ServiceRoleArn = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "ServiceRoleArn"),
            type = "string",
            name = "ServiceRoleArn",
            target_id = prelude.String.id,
        }),
        TaskType = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "TaskType"),
            type = "string",
            name = "TaskType",
            target_id = prelude.String.id,
        }),
        TaskParameters = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "TaskParameters"),
            type = "map",
            name = "TaskParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MaintenanceWindowTaskParameterValueExpression,
        }),
        TaskInvocationParameters = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "TaskInvocationParameters"),
            type = "structure",
            name = "TaskInvocationParameters",
            target_id = id.from(_N, "MaintenanceWindowTaskInvocationParameters"),
            target = M.MaintenanceWindowTaskInvocationParameters,
        }),
        Priority = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
        }),
        Name = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CutoffBehavior = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "CutoffBehavior"),
            type = "string",
            name = "CutoffBehavior",
            target_id = prelude.String.id,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "GetMaintenanceWindowTaskOutput", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
    },
})

M.GetOpsItemInput = schema.new({
    id = id.from(_N, "GetOpsItemRequest"),
    type = "structure",
    members = {
        OpsItemId = schema.new({
            id = id.from(_N, "GetOpsItemInput", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OpsItemArn = schema.new({
            id = id.from(_N, "GetOpsItemInput", "OpsItemArn"),
            type = "string",
            name = "OpsItemArn",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItem = schema.new({
    id = id.from(_N, "OpsItem"),
    type = "structure",
    members = {
        CreatedBy = schema.new({
            id = id.from(_N, "OpsItem", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        OpsItemType = schema.new({
            id = id.from(_N, "OpsItem", "OpsItemType"),
            type = "string",
            name = "OpsItemType",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "OpsItem", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "OpsItem", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "OpsItem", "LastModifiedBy"),
            type = "string",
            name = "LastModifiedBy",
            target_id = prelude.String.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "OpsItem", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        Notifications = schema.new({
            id = id.from(_N, "OpsItem", "Notifications"),
            type = "list",
            name = "Notifications",
            target_id = prelude.Document.id,
            list_member = M.OpsItemNotification,
        }),
        Priority = schema.new({
            id = id.from(_N, "OpsItem", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        RelatedOpsItems = schema.new({
            id = id.from(_N, "OpsItem", "RelatedOpsItems"),
            type = "list",
            name = "RelatedOpsItems",
            target_id = prelude.Document.id,
            list_member = M.RelatedOpsItem,
        }),
        Status = schema.new({
            id = id.from(_N, "OpsItem", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        OpsItemId = schema.new({
            id = id.from(_N, "OpsItem", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "OpsItem", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
        Title = schema.new({
            id = id.from(_N, "OpsItem", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "OpsItem", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        OperationalData = schema.new({
            id = id.from(_N, "OpsItem", "OperationalData"),
            type = "map",
            name = "OperationalData",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.OpsItemDataValue,
        }),
        Category = schema.new({
            id = id.from(_N, "OpsItem", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "OpsItem", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        ActualStartTime = schema.new({
            id = id.from(_N, "OpsItem", "ActualStartTime"),
            type = "timestamp",
            name = "ActualStartTime",
            target_id = prelude.Timestamp.id,
        }),
        ActualEndTime = schema.new({
            id = id.from(_N, "OpsItem", "ActualEndTime"),
            type = "timestamp",
            name = "ActualEndTime",
            target_id = prelude.Timestamp.id,
        }),
        PlannedStartTime = schema.new({
            id = id.from(_N, "OpsItem", "PlannedStartTime"),
            type = "timestamp",
            name = "PlannedStartTime",
            target_id = prelude.Timestamp.id,
        }),
        PlannedEndTime = schema.new({
            id = id.from(_N, "OpsItem", "PlannedEndTime"),
            type = "timestamp",
            name = "PlannedEndTime",
            target_id = prelude.Timestamp.id,
        }),
        OpsItemArn = schema.new({
            id = id.from(_N, "OpsItem", "OpsItemArn"),
            type = "string",
            name = "OpsItemArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOpsItemOutput = schema.new({
    id = id.from(_N, "GetOpsItemResponse"),
    type = "structure",
    members = {
        OpsItem = schema.new({
            id = id.from(_N, "GetOpsItemOutput", "OpsItem"),
            type = "structure",
            name = "OpsItem",
            target_id = id.from(_N, "OpsItem"),
            target = M.OpsItem,
        }),
    },
})

M.GetOpsMetadataInput = schema.new({
    id = id.from(_N, "GetOpsMetadataRequest"),
    type = "structure",
    members = {
        OpsMetadataArn = schema.new({
            id = id.from(_N, "GetOpsMetadataInput", "OpsMetadataArn"),
            type = "string",
            name = "OpsMetadataArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetOpsMetadataInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetOpsMetadataInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOpsMetadataOutput = schema.new({
    id = id.from(_N, "GetOpsMetadataResult"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "GetOpsMetadataOutput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "GetOpsMetadataOutput", "Metadata"),
            type = "map",
            name = "Metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MetadataValue,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetOpsMetadataOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsFilter = schema.new({
    id = id.from(_N, "OpsFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "OpsFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "OpsFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "FilterValue" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "OpsFilter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsResultAttribute = schema.new({
    id = id.from(_N, "OpsResultAttribute"),
    type = "structure",
    members = {
        TypeName = schema.new({
            id = id.from(_N, "OpsResultAttribute", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OpsEntityItem = schema.new({
    id = id.from(_N, "OpsEntityItem"),
    type = "structure",
    members = {
        CaptureTime = schema.new({
            id = id.from(_N, "OpsEntityItem", "CaptureTime"),
            type = "string",
            name = "CaptureTime",
            target_id = prelude.String.id,
        }),
        Content = schema.new({
            id = id.from(_N, "OpsEntityItem", "Content"),
            type = "list",
            name = "Content",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
    },
})

M.OpsEntity = schema.new({
    id = id.from(_N, "OpsEntity"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "OpsEntity", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Data = schema.new({
            id = id.from(_N, "OpsEntity", "Data"),
            type = "map",
            name = "Data",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.OpsEntityItem,
        }),
    },
})

M.GetOpsSummaryOutput = schema.new({
    id = id.from(_N, "GetOpsSummaryResult"),
    type = "structure",
    members = {
        Entities = schema.new({
            id = id.from(_N, "GetOpsSummaryOutput", "Entities"),
            type = "list",
            name = "Entities",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OpsEntity, traits = { [traits.XML_NAME] = { name = "Entity" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetOpsSummaryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetParameterInput = schema.new({
    id = id.from(_N, "GetParameterRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetParameterInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WithDecryption = schema.new({
            id = id.from(_N, "GetParameterInput", "WithDecryption"),
            type = "boolean",
            name = "WithDecryption",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.Parameter = schema.new({
    id = id.from(_N, "Parameter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Parameter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Parameter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Parameter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "Parameter", "Version"),
            type = "long",
            name = "Version",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Selector = schema.new({
            id = id.from(_N, "Parameter", "Selector"),
            type = "string",
            name = "Selector",
            target_id = prelude.String.id,
        }),
        SourceResult = schema.new({
            id = id.from(_N, "Parameter", "SourceResult"),
            type = "string",
            name = "SourceResult",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "Parameter", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "Parameter", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        DataType = schema.new({
            id = id.from(_N, "Parameter", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetParameterOutput = schema.new({
    id = id.from(_N, "GetParameterResult"),
    type = "structure",
    members = {
        Parameter = schema.new({
            id = id.from(_N, "GetParameterOutput", "Parameter"),
            type = "structure",
            name = "Parameter",
            target_id = id.from(_N, "Parameter"),
            target = M.Parameter,
        }),
    },
})

M.InvalidKeyId = schema.new({
    id = id.from(_N, "InvalidKeyId"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidKeyId", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterVersionNotFound = schema.new({
    id = id.from(_N, "ParameterVersionNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParameterVersionNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetParameterHistoryInput = schema.new({
    id = id.from(_N, "GetParameterHistoryRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetParameterHistoryInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WithDecryption = schema.new({
            id = id.from(_N, "GetParameterHistoryInput", "WithDecryption"),
            type = "boolean",
            name = "WithDecryption",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetParameterHistoryInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetParameterHistoryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterHistory = schema.new({
    id = id.from(_N, "ParameterHistory"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ParameterHistory", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ParameterHistory", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        KeyId = schema.new({
            id = id.from(_N, "ParameterHistory", "KeyId"),
            type = "string",
            name = "KeyId",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "ParameterHistory", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedUser = schema.new({
            id = id.from(_N, "ParameterHistory", "LastModifiedUser"),
            type = "string",
            name = "LastModifiedUser",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ParameterHistory", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "ParameterHistory", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        AllowedPattern = schema.new({
            id = id.from(_N, "ParameterHistory", "AllowedPattern"),
            type = "string",
            name = "AllowedPattern",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "ParameterHistory", "Version"),
            type = "long",
            name = "Version",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Labels = schema.new({
            id = id.from(_N, "ParameterHistory", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tier = schema.new({
            id = id.from(_N, "ParameterHistory", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
        }),
        Policies = schema.new({
            id = id.from(_N, "ParameterHistory", "Policies"),
            type = "list",
            name = "Policies",
            target_id = prelude.Document.id,
            list_member = M.ParameterInlinePolicy,
        }),
        DataType = schema.new({
            id = id.from(_N, "ParameterHistory", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetParameterHistoryOutput = schema.new({
    id = id.from(_N, "GetParameterHistoryResult"),
    type = "structure",
    members = {
        Parameters = schema.new({
            id = id.from(_N, "GetParameterHistoryOutput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.ParameterHistory,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetParameterHistoryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetParametersInput = schema.new({
    id = id.from(_N, "GetParametersRequest"),
    type = "structure",
    members = {
        Names = schema.new({
            id = id.from(_N, "GetParametersInput", "Names"),
            type = "list",
            name = "Names",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WithDecryption = schema.new({
            id = id.from(_N, "GetParametersInput", "WithDecryption"),
            type = "boolean",
            name = "WithDecryption",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.GetParametersOutput = schema.new({
    id = id.from(_N, "GetParametersResult"),
    type = "structure",
    members = {
        Parameters = schema.new({
            id = id.from(_N, "GetParametersOutput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.Parameter,
        }),
        InvalidParameters = schema.new({
            id = id.from(_N, "GetParametersOutput", "InvalidParameters"),
            type = "list",
            name = "InvalidParameters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetParametersByPathInput = schema.new({
    id = id.from(_N, "GetParametersByPathRequest"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "GetParametersByPathInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Recursive = schema.new({
            id = id.from(_N, "GetParametersByPathInput", "Recursive"),
            type = "boolean",
            name = "Recursive",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        ParameterFilters = schema.new({
            id = id.from(_N, "GetParametersByPathInput", "ParameterFilters"),
            type = "list",
            name = "ParameterFilters",
            target_id = prelude.Document.id,
            list_member = M.ParameterStringFilter,
        }),
        WithDecryption = schema.new({
            id = id.from(_N, "GetParametersByPathInput", "WithDecryption"),
            type = "boolean",
            name = "WithDecryption",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetParametersByPathInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetParametersByPathInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetParametersByPathOutput = schema.new({
    id = id.from(_N, "GetParametersByPathResult"),
    type = "structure",
    members = {
        Parameters = schema.new({
            id = id.from(_N, "GetParametersByPathOutput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.Parameter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetParametersByPathOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPatchBaselineInput = schema.new({
    id = id.from(_N, "GetPatchBaselineRequest"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "GetPatchBaselineInput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPatchBaselineOutput = schema.new({
    id = id.from(_N, "GetPatchBaselineResult"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        OperatingSystem = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "OperatingSystem"),
            type = "string",
            name = "OperatingSystem",
            target_id = prelude.String.id,
        }),
        GlobalFilters = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "GlobalFilters"),
            type = "structure",
            name = "GlobalFilters",
            target_id = id.from(_N, "PatchFilterGroup"),
            target = M.PatchFilterGroup,
        }),
        ApprovalRules = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "ApprovalRules"),
            type = "structure",
            name = "ApprovalRules",
            target_id = id.from(_N, "PatchRuleGroup"),
            target = M.PatchRuleGroup,
        }),
        ApprovedPatches = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "ApprovedPatches"),
            type = "list",
            name = "ApprovedPatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ApprovedPatchesComplianceLevel = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "ApprovedPatchesComplianceLevel"),
            type = "string",
            name = "ApprovedPatchesComplianceLevel",
            target_id = prelude.String.id,
        }),
        ApprovedPatchesEnableNonSecurity = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "ApprovedPatchesEnableNonSecurity"),
            type = "boolean",
            name = "ApprovedPatchesEnableNonSecurity",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        RejectedPatches = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "RejectedPatches"),
            type = "list",
            name = "RejectedPatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RejectedPatchesAction = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "RejectedPatchesAction"),
            type = "string",
            name = "RejectedPatchesAction",
            target_id = prelude.String.id,
        }),
        PatchGroups = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "PatchGroups"),
            type = "list",
            name = "PatchGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        ModifiedDate = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "ModifiedDate"),
            type = "timestamp",
            name = "ModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Sources = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.PatchSource,
        }),
        AvailableSecurityUpdatesComplianceStatus = schema.new({
            id = id.from(_N, "GetPatchBaselineOutput", "AvailableSecurityUpdatesComplianceStatus"),
            type = "string",
            name = "AvailableSecurityUpdatesComplianceStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPatchBaselineForPatchGroupInput = schema.new({
    id = id.from(_N, "GetPatchBaselineForPatchGroupRequest"),
    type = "structure",
    members = {
        PatchGroup = schema.new({
            id = id.from(_N, "GetPatchBaselineForPatchGroupInput", "PatchGroup"),
            type = "string",
            name = "PatchGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OperatingSystem = schema.new({
            id = id.from(_N, "GetPatchBaselineForPatchGroupInput", "OperatingSystem"),
            type = "string",
            name = "OperatingSystem",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPatchBaselineForPatchGroupOutput = schema.new({
    id = id.from(_N, "GetPatchBaselineForPatchGroupResult"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "GetPatchBaselineForPatchGroupOutput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
        }),
        PatchGroup = schema.new({
            id = id.from(_N, "GetPatchBaselineForPatchGroupOutput", "PatchGroup"),
            type = "string",
            name = "PatchGroup",
            target_id = prelude.String.id,
        }),
        OperatingSystem = schema.new({
            id = id.from(_N, "GetPatchBaselineForPatchGroupOutput", "OperatingSystem"),
            type = "string",
            name = "OperatingSystem",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourcePoliciesInput = schema.new({
    id = id.from(_N, "GetResourcePoliciesRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GetResourcePoliciesInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetResourcePoliciesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetResourcePoliciesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetResourcePoliciesResponseEntry = schema.new({
    id = id.from(_N, "GetResourcePoliciesResponseEntry"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "GetResourcePoliciesResponseEntry", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
        }),
        PolicyHash = schema.new({
            id = id.from(_N, "GetResourcePoliciesResponseEntry", "PolicyHash"),
            type = "string",
            name = "PolicyHash",
            target_id = prelude.String.id,
        }),
        Policy = schema.new({
            id = id.from(_N, "GetResourcePoliciesResponseEntry", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourcePoliciesOutput = schema.new({
    id = id.from(_N, "GetResourcePoliciesResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "GetResourcePoliciesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Policies = schema.new({
            id = id.from(_N, "GetResourcePoliciesOutput", "Policies"),
            type = "list",
            name = "Policies",
            target_id = prelude.Document.id,
            list_member = M.GetResourcePoliciesResponseEntry,
        }),
    },
})

M.GetServiceSettingInput = schema.new({
    id = id.from(_N, "GetServiceSettingRequest"),
    type = "structure",
    members = {
        SettingId = schema.new({
            id = id.from(_N, "GetServiceSettingInput", "SettingId"),
            type = "string",
            name = "SettingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceSetting = schema.new({
    id = id.from(_N, "ServiceSetting"),
    type = "structure",
    members = {
        SettingId = schema.new({
            id = id.from(_N, "ServiceSetting", "SettingId"),
            type = "string",
            name = "SettingId",
            target_id = prelude.String.id,
        }),
        SettingValue = schema.new({
            id = id.from(_N, "ServiceSetting", "SettingValue"),
            type = "string",
            name = "SettingValue",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "ServiceSetting", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedUser = schema.new({
            id = id.from(_N, "ServiceSetting", "LastModifiedUser"),
            type = "string",
            name = "LastModifiedUser",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "ServiceSetting", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ServiceSetting", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetServiceSettingOutput = schema.new({
    id = id.from(_N, "GetServiceSettingResult"),
    type = "structure",
    members = {
        ServiceSetting = schema.new({
            id = id.from(_N, "GetServiceSettingOutput", "ServiceSetting"),
            type = "structure",
            name = "ServiceSetting",
            target_id = id.from(_N, "ServiceSetting"),
            target = M.ServiceSetting,
        }),
    },
})

M.ServiceSettingNotFound = schema.new({
    id = id.from(_N, "ServiceSettingNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceSettingNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.LabelParameterVersionInput = schema.new({
    id = id.from(_N, "LabelParameterVersionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "LabelParameterVersionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ParameterVersion = schema.new({
            id = id.from(_N, "LabelParameterVersionInput", "ParameterVersion"),
            type = "long",
            name = "ParameterVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Labels = schema.new({
            id = id.from(_N, "LabelParameterVersionInput", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LabelParameterVersionOutput = schema.new({
    id = id.from(_N, "LabelParameterVersionResult"),
    type = "structure",
    members = {
        InvalidLabels = schema.new({
            id = id.from(_N, "LabelParameterVersionOutput", "InvalidLabels"),
            type = "list",
            name = "InvalidLabels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ParameterVersion = schema.new({
            id = id.from(_N, "LabelParameterVersionOutput", "ParameterVersion"),
            type = "long",
            name = "ParameterVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ParameterVersionLabelLimitExceeded = schema.new({
    id = id.from(_N, "ParameterVersionLabelLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParameterVersionLabelLimitExceeded", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationFilter = schema.new({
    id = id.from(_N, "AssociationFilter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "AssociationFilter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "AssociationFilter", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAssociationsInput = schema.new({
    id = id.from(_N, "ListAssociationsRequest"),
    type = "structure",
    members = {
        AssociationFilterList = schema.new({
            id = id.from(_N, "ListAssociationsInput", "AssociationFilterList"),
            type = "list",
            name = "AssociationFilterList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AssociationFilter, traits = { [traits.XML_NAME] = { name = "AssociationFilter" } } }),
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Association = schema.new({
    id = id.from(_N, "Association"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Association", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "Association", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        AssociationId = schema.new({
            id = id.from(_N, "Association", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        AssociationVersion = schema.new({
            id = id.from(_N, "Association", "AssociationVersion"),
            type = "string",
            name = "AssociationVersion",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "Association", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "Association", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        LastExecutionDate = schema.new({
            id = id.from(_N, "Association", "LastExecutionDate"),
            type = "timestamp",
            name = "LastExecutionDate",
            target_id = prelude.Timestamp.id,
        }),
        Overview = schema.new({
            id = id.from(_N, "Association", "Overview"),
            type = "structure",
            name = "Overview",
            target_id = id.from(_N, "AssociationOverview"),
            target = M.AssociationOverview,
        }),
        ScheduleExpression = schema.new({
            id = id.from(_N, "Association", "ScheduleExpression"),
            type = "string",
            name = "ScheduleExpression",
            target_id = prelude.String.id,
        }),
        AssociationName = schema.new({
            id = id.from(_N, "Association", "AssociationName"),
            type = "string",
            name = "AssociationName",
            target_id = prelude.String.id,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "Association", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "Association", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "Association", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
    },
})

M.ListAssociationsOutput = schema.new({
    id = id.from(_N, "ListAssociationsResult"),
    type = "structure",
    members = {
        Associations = schema.new({
            id = id.from(_N, "ListAssociationsOutput", "Associations"),
            type = "list",
            name = "Associations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Association, traits = { [traits.XML_NAME] = { name = "Association" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssociationVersionsInput = schema.new({
    id = id.from(_N, "ListAssociationVersionsRequest"),
    type = "structure",
    members = {
        AssociationId = schema.new({
            id = id.from(_N, "ListAssociationVersionsInput", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAssociationVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssociationVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationVersionInfo = schema.new({
    id = id.from(_N, "AssociationVersionInfo"),
    type = "structure",
    members = {
        AssociationId = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        AssociationVersion = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "AssociationVersion"),
            type = "string",
            name = "AssociationVersion",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        Name = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        Targets = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        ScheduleExpression = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "ScheduleExpression"),
            type = "string",
            name = "ScheduleExpression",
            target_id = prelude.String.id,
        }),
        OutputLocation = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "OutputLocation"),
            type = "structure",
            name = "OutputLocation",
            target_id = id.from(_N, "InstanceAssociationOutputLocation"),
            target = M.InstanceAssociationOutputLocation,
        }),
        AssociationName = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "AssociationName"),
            type = "string",
            name = "AssociationName",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        ComplianceSeverity = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "ComplianceSeverity"),
            type = "string",
            name = "ComplianceSeverity",
            target_id = prelude.String.id,
        }),
        SyncCompliance = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "SyncCompliance"),
            type = "string",
            name = "SyncCompliance",
            target_id = prelude.String.id,
        }),
        ApplyOnlyAtCronInterval = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "ApplyOnlyAtCronInterval"),
            type = "boolean",
            name = "ApplyOnlyAtCronInterval",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CalendarNames = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "CalendarNames"),
            type = "list",
            name = "CalendarNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TargetLocations = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "TargetLocations"),
            type = "list",
            name = "TargetLocations",
            target_id = prelude.Document.id,
            list_member = M.TargetLocation,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        AssociationDispatchAssumeRole = schema.new({
            id = id.from(_N, "AssociationVersionInfo", "AssociationDispatchAssumeRole"),
            type = "string",
            name = "AssociationDispatchAssumeRole",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssociationVersionsOutput = schema.new({
    id = id.from(_N, "ListAssociationVersionsResult"),
    type = "structure",
    members = {
        AssociationVersions = schema.new({
            id = id.from(_N, "ListAssociationVersionsOutput", "AssociationVersions"),
            type = "list",
            name = "AssociationVersions",
            target_id = prelude.Document.id,
            list_member = M.AssociationVersionInfo,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssociationVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CommandFilter = schema.new({
    id = id.from(_N, "CommandFilter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "CommandFilter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "CommandFilter", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListCommandInvocationsInput = schema.new({
    id = id.from(_N, "ListCommandInvocationsRequest"),
    type = "structure",
    members = {
        CommandId = schema.new({
            id = id.from(_N, "ListCommandInvocationsInput", "CommandId"),
            type = "string",
            name = "CommandId",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "ListCommandInvocationsInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCommandInvocationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCommandInvocationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListCommandInvocationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.CommandFilter,
        }),
        Details = schema.new({
            id = id.from(_N, "ListCommandInvocationsInput", "Details"),
            type = "boolean",
            name = "Details",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CommandPlugin = schema.new({
    id = id.from(_N, "CommandPlugin"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CommandPlugin", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CommandPlugin", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "CommandPlugin", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        ResponseCode = schema.new({
            id = id.from(_N, "CommandPlugin", "ResponseCode"),
            type = "integer",
            name = "ResponseCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ResponseStartDateTime = schema.new({
            id = id.from(_N, "CommandPlugin", "ResponseStartDateTime"),
            type = "timestamp",
            name = "ResponseStartDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ResponseFinishDateTime = schema.new({
            id = id.from(_N, "CommandPlugin", "ResponseFinishDateTime"),
            type = "timestamp",
            name = "ResponseFinishDateTime",
            target_id = prelude.Timestamp.id,
        }),
        Output = schema.new({
            id = id.from(_N, "CommandPlugin", "Output"),
            type = "string",
            name = "Output",
            target_id = prelude.String.id,
        }),
        StandardOutputUrl = schema.new({
            id = id.from(_N, "CommandPlugin", "StandardOutputUrl"),
            type = "string",
            name = "StandardOutputUrl",
            target_id = prelude.String.id,
        }),
        StandardErrorUrl = schema.new({
            id = id.from(_N, "CommandPlugin", "StandardErrorUrl"),
            type = "string",
            name = "StandardErrorUrl",
            target_id = prelude.String.id,
        }),
        OutputS3Region = schema.new({
            id = id.from(_N, "CommandPlugin", "OutputS3Region"),
            type = "string",
            name = "OutputS3Region",
            target_id = prelude.String.id,
        }),
        OutputS3BucketName = schema.new({
            id = id.from(_N, "CommandPlugin", "OutputS3BucketName"),
            type = "string",
            name = "OutputS3BucketName",
            target_id = prelude.String.id,
        }),
        OutputS3KeyPrefix = schema.new({
            id = id.from(_N, "CommandPlugin", "OutputS3KeyPrefix"),
            type = "string",
            name = "OutputS3KeyPrefix",
            target_id = prelude.String.id,
        }),
    },
})

M.CommandInvocation = schema.new({
    id = id.from(_N, "CommandInvocation"),
    type = "structure",
    members = {
        CommandId = schema.new({
            id = id.from(_N, "CommandInvocation", "CommandId"),
            type = "string",
            name = "CommandId",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "CommandInvocation", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        InstanceName = schema.new({
            id = id.from(_N, "CommandInvocation", "InstanceName"),
            type = "string",
            name = "InstanceName",
            target_id = prelude.String.id,
        }),
        Comment = schema.new({
            id = id.from(_N, "CommandInvocation", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        DocumentName = schema.new({
            id = id.from(_N, "CommandInvocation", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "CommandInvocation", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        RequestedDateTime = schema.new({
            id = id.from(_N, "CommandInvocation", "RequestedDateTime"),
            type = "timestamp",
            name = "RequestedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CommandInvocation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "CommandInvocation", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        TraceOutput = schema.new({
            id = id.from(_N, "CommandInvocation", "TraceOutput"),
            type = "string",
            name = "TraceOutput",
            target_id = prelude.String.id,
        }),
        StandardOutputUrl = schema.new({
            id = id.from(_N, "CommandInvocation", "StandardOutputUrl"),
            type = "string",
            name = "StandardOutputUrl",
            target_id = prelude.String.id,
        }),
        StandardErrorUrl = schema.new({
            id = id.from(_N, "CommandInvocation", "StandardErrorUrl"),
            type = "string",
            name = "StandardErrorUrl",
            target_id = prelude.String.id,
        }),
        CommandPlugins = schema.new({
            id = id.from(_N, "CommandInvocation", "CommandPlugins"),
            type = "list",
            name = "CommandPlugins",
            target_id = prelude.Document.id,
            list_member = M.CommandPlugin,
        }),
        ServiceRole = schema.new({
            id = id.from(_N, "CommandInvocation", "ServiceRole"),
            type = "string",
            name = "ServiceRole",
            target_id = prelude.String.id,
        }),
        NotificationConfig = schema.new({
            id = id.from(_N, "CommandInvocation", "NotificationConfig"),
            type = "structure",
            name = "NotificationConfig",
            target_id = id.from(_N, "NotificationConfig"),
            target = M.NotificationConfig,
        }),
        CloudWatchOutputConfig = schema.new({
            id = id.from(_N, "CommandInvocation", "CloudWatchOutputConfig"),
            type = "structure",
            name = "CloudWatchOutputConfig",
            target_id = id.from(_N, "CloudWatchOutputConfig"),
            target = M.CloudWatchOutputConfig,
        }),
    },
})

M.ListCommandInvocationsOutput = schema.new({
    id = id.from(_N, "ListCommandInvocationsResult"),
    type = "structure",
    members = {
        CommandInvocations = schema.new({
            id = id.from(_N, "ListCommandInvocationsOutput", "CommandInvocations"),
            type = "list",
            name = "CommandInvocations",
            target_id = prelude.Document.id,
            list_member = M.CommandInvocation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCommandInvocationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCommandsInput = schema.new({
    id = id.from(_N, "ListCommandsRequest"),
    type = "structure",
    members = {
        CommandId = schema.new({
            id = id.from(_N, "ListCommandsInput", "CommandId"),
            type = "string",
            name = "CommandId",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "ListCommandsInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCommandsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCommandsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListCommandsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.CommandFilter,
        }),
    },
})

M.Command = schema.new({
    id = id.from(_N, "Command"),
    type = "structure",
    members = {
        CommandId = schema.new({
            id = id.from(_N, "Command", "CommandId"),
            type = "string",
            name = "CommandId",
            target_id = prelude.String.id,
        }),
        DocumentName = schema.new({
            id = id.from(_N, "Command", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "Command", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Comment = schema.new({
            id = id.from(_N, "Command", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        ExpiresAfter = schema.new({
            id = id.from(_N, "Command", "ExpiresAfter"),
            type = "timestamp",
            name = "ExpiresAfter",
            target_id = prelude.Timestamp.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "Command", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        InstanceIds = schema.new({
            id = id.from(_N, "Command", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Targets = schema.new({
            id = id.from(_N, "Command", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        RequestedDateTime = schema.new({
            id = id.from(_N, "Command", "RequestedDateTime"),
            type = "timestamp",
            name = "RequestedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Command", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "Command", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        OutputS3Region = schema.new({
            id = id.from(_N, "Command", "OutputS3Region"),
            type = "string",
            name = "OutputS3Region",
            target_id = prelude.String.id,
        }),
        OutputS3BucketName = schema.new({
            id = id.from(_N, "Command", "OutputS3BucketName"),
            type = "string",
            name = "OutputS3BucketName",
            target_id = prelude.String.id,
        }),
        OutputS3KeyPrefix = schema.new({
            id = id.from(_N, "Command", "OutputS3KeyPrefix"),
            type = "string",
            name = "OutputS3KeyPrefix",
            target_id = prelude.String.id,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "Command", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "Command", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        TargetCount = schema.new({
            id = id.from(_N, "Command", "TargetCount"),
            type = "integer",
            name = "TargetCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CompletedCount = schema.new({
            id = id.from(_N, "Command", "CompletedCount"),
            type = "integer",
            name = "CompletedCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ErrorCount = schema.new({
            id = id.from(_N, "Command", "ErrorCount"),
            type = "integer",
            name = "ErrorCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DeliveryTimedOutCount = schema.new({
            id = id.from(_N, "Command", "DeliveryTimedOutCount"),
            type = "integer",
            name = "DeliveryTimedOutCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ServiceRole = schema.new({
            id = id.from(_N, "Command", "ServiceRole"),
            type = "string",
            name = "ServiceRole",
            target_id = prelude.String.id,
        }),
        NotificationConfig = schema.new({
            id = id.from(_N, "Command", "NotificationConfig"),
            type = "structure",
            name = "NotificationConfig",
            target_id = id.from(_N, "NotificationConfig"),
            target = M.NotificationConfig,
        }),
        CloudWatchOutputConfig = schema.new({
            id = id.from(_N, "Command", "CloudWatchOutputConfig"),
            type = "structure",
            name = "CloudWatchOutputConfig",
            target_id = id.from(_N, "CloudWatchOutputConfig"),
            target = M.CloudWatchOutputConfig,
        }),
        TimeoutSeconds = schema.new({
            id = id.from(_N, "Command", "TimeoutSeconds"),
            type = "integer",
            name = "TimeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "Command", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        TriggeredAlarms = schema.new({
            id = id.from(_N, "Command", "TriggeredAlarms"),
            type = "list",
            name = "TriggeredAlarms",
            target_id = prelude.Document.id,
            list_member = M.AlarmStateInformation,
        }),
    },
})

M.ListCommandsOutput = schema.new({
    id = id.from(_N, "ListCommandsResult"),
    type = "structure",
    members = {
        Commands = schema.new({
            id = id.from(_N, "ListCommandsOutput", "Commands"),
            type = "list",
            name = "Commands",
            target_id = prelude.Document.id,
            list_member = M.Command,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCommandsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ComplianceStringFilter = schema.new({
    id = id.from(_N, "ComplianceStringFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ComplianceStringFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "ComplianceStringFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "FilterValue" } } }),
        }),
        Type = schema.new({
            id = id.from(_N, "ComplianceStringFilter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.ListComplianceItemsInput = schema.new({
    id = id.from(_N, "ListComplianceItemsRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListComplianceItemsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ComplianceStringFilter, traits = { [traits.XML_NAME] = { name = "ComplianceFilter" } } }),
        }),
        ResourceIds = schema.new({
            id = id.from(_N, "ListComplianceItemsInput", "ResourceIds"),
            type = "list",
            name = "ResourceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ResourceTypes = schema.new({
            id = id.from(_N, "ListComplianceItemsInput", "ResourceTypes"),
            type = "list",
            name = "ResourceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListComplianceItemsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListComplianceItemsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ComplianceExecutionSummary = schema.new({
    id = id.from(_N, "ComplianceExecutionSummary"),
    type = "structure",
    members = {
        ExecutionTime = schema.new({
            id = id.from(_N, "ComplianceExecutionSummary", "ExecutionTime"),
            type = "timestamp",
            name = "ExecutionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionId = schema.new({
            id = id.from(_N, "ComplianceExecutionSummary", "ExecutionId"),
            type = "string",
            name = "ExecutionId",
            target_id = prelude.String.id,
        }),
        ExecutionType = schema.new({
            id = id.from(_N, "ComplianceExecutionSummary", "ExecutionType"),
            type = "string",
            name = "ExecutionType",
            target_id = prelude.String.id,
        }),
    },
})

M.ComplianceItem = schema.new({
    id = id.from(_N, "ComplianceItem"),
    type = "structure",
    members = {
        ComplianceType = schema.new({
            id = id.from(_N, "ComplianceItem", "ComplianceType"),
            type = "string",
            name = "ComplianceType",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ComplianceItem", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ComplianceItem", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "ComplianceItem", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Title = schema.new({
            id = id.from(_N, "ComplianceItem", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ComplianceItem", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ComplianceItem", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        ExecutionSummary = schema.new({
            id = id.from(_N, "ComplianceItem", "ExecutionSummary"),
            type = "structure",
            name = "ExecutionSummary",
            target_id = id.from(_N, "ComplianceExecutionSummary"),
            target = M.ComplianceExecutionSummary,
        }),
        Details = schema.new({
            id = id.from(_N, "ComplianceItem", "Details"),
            type = "map",
            name = "Details",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListComplianceItemsOutput = schema.new({
    id = id.from(_N, "ListComplianceItemsResult"),
    type = "structure",
    members = {
        ComplianceItems = schema.new({
            id = id.from(_N, "ListComplianceItemsOutput", "ComplianceItems"),
            type = "list",
            name = "ComplianceItems",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ComplianceItem, traits = { [traits.XML_NAME] = { name = "Item" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListComplianceItemsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListComplianceSummariesInput = schema.new({
    id = id.from(_N, "ListComplianceSummariesRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListComplianceSummariesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ComplianceStringFilter, traits = { [traits.XML_NAME] = { name = "ComplianceFilter" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListComplianceSummariesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListComplianceSummariesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SeveritySummary = schema.new({
    id = id.from(_N, "SeveritySummary"),
    type = "structure",
    members = {
        CriticalCount = schema.new({
            id = id.from(_N, "SeveritySummary", "CriticalCount"),
            type = "integer",
            name = "CriticalCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        HighCount = schema.new({
            id = id.from(_N, "SeveritySummary", "HighCount"),
            type = "integer",
            name = "HighCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MediumCount = schema.new({
            id = id.from(_N, "SeveritySummary", "MediumCount"),
            type = "integer",
            name = "MediumCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LowCount = schema.new({
            id = id.from(_N, "SeveritySummary", "LowCount"),
            type = "integer",
            name = "LowCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        InformationalCount = schema.new({
            id = id.from(_N, "SeveritySummary", "InformationalCount"),
            type = "integer",
            name = "InformationalCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        UnspecifiedCount = schema.new({
            id = id.from(_N, "SeveritySummary", "UnspecifiedCount"),
            type = "integer",
            name = "UnspecifiedCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CompliantSummary = schema.new({
    id = id.from(_N, "CompliantSummary"),
    type = "structure",
    members = {
        CompliantCount = schema.new({
            id = id.from(_N, "CompliantSummary", "CompliantCount"),
            type = "integer",
            name = "CompliantCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SeveritySummary = schema.new({
            id = id.from(_N, "CompliantSummary", "SeveritySummary"),
            type = "structure",
            name = "SeveritySummary",
            target_id = id.from(_N, "SeveritySummary"),
            target = M.SeveritySummary,
        }),
    },
})

M.NonCompliantSummary = schema.new({
    id = id.from(_N, "NonCompliantSummary"),
    type = "structure",
    members = {
        NonCompliantCount = schema.new({
            id = id.from(_N, "NonCompliantSummary", "NonCompliantCount"),
            type = "integer",
            name = "NonCompliantCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SeveritySummary = schema.new({
            id = id.from(_N, "NonCompliantSummary", "SeveritySummary"),
            type = "structure",
            name = "SeveritySummary",
            target_id = id.from(_N, "SeveritySummary"),
            target = M.SeveritySummary,
        }),
    },
})

M.ComplianceSummaryItem = schema.new({
    id = id.from(_N, "ComplianceSummaryItem"),
    type = "structure",
    members = {
        ComplianceType = schema.new({
            id = id.from(_N, "ComplianceSummaryItem", "ComplianceType"),
            type = "string",
            name = "ComplianceType",
            target_id = prelude.String.id,
        }),
        CompliantSummary = schema.new({
            id = id.from(_N, "ComplianceSummaryItem", "CompliantSummary"),
            type = "structure",
            name = "CompliantSummary",
            target_id = id.from(_N, "CompliantSummary"),
            target = M.CompliantSummary,
        }),
        NonCompliantSummary = schema.new({
            id = id.from(_N, "ComplianceSummaryItem", "NonCompliantSummary"),
            type = "structure",
            name = "NonCompliantSummary",
            target_id = id.from(_N, "NonCompliantSummary"),
            target = M.NonCompliantSummary,
        }),
    },
})

M.ListComplianceSummariesOutput = schema.new({
    id = id.from(_N, "ListComplianceSummariesResult"),
    type = "structure",
    members = {
        ComplianceSummaryItems = schema.new({
            id = id.from(_N, "ListComplianceSummariesOutput", "ComplianceSummaryItems"),
            type = "list",
            name = "ComplianceSummaryItems",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ComplianceSummaryItem, traits = { [traits.XML_NAME] = { name = "Item" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListComplianceSummariesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDocumentMetadataHistoryInput = schema.new({
    id = id.from(_N, "ListDocumentMetadataHistoryRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ListDocumentMetadataHistoryInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "ListDocumentMetadataHistoryInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "ListDocumentMetadataHistoryInput", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentMetadataHistoryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDocumentMetadataHistoryInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DocumentReviewCommentSource = schema.new({
    id = id.from(_N, "DocumentReviewCommentSource"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "DocumentReviewCommentSource", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Content = schema.new({
            id = id.from(_N, "DocumentReviewCommentSource", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentReviewerResponseSource = schema.new({
    id = id.from(_N, "DocumentReviewerResponseSource"),
    type = "structure",
    members = {
        CreateTime = schema.new({
            id = id.from(_N, "DocumentReviewerResponseSource", "CreateTime"),
            type = "timestamp",
            name = "CreateTime",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedTime = schema.new({
            id = id.from(_N, "DocumentReviewerResponseSource", "UpdatedTime"),
            type = "timestamp",
            name = "UpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
        ReviewStatus = schema.new({
            id = id.from(_N, "DocumentReviewerResponseSource", "ReviewStatus"),
            type = "string",
            name = "ReviewStatus",
            target_id = prelude.String.id,
        }),
        Comment = schema.new({
            id = id.from(_N, "DocumentReviewerResponseSource", "Comment"),
            type = "list",
            name = "Comment",
            target_id = prelude.Document.id,
            list_member = M.DocumentReviewCommentSource,
        }),
        Reviewer = schema.new({
            id = id.from(_N, "DocumentReviewerResponseSource", "Reviewer"),
            type = "string",
            name = "Reviewer",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentMetadataResponseInfo = schema.new({
    id = id.from(_N, "DocumentMetadataResponseInfo"),
    type = "structure",
    members = {
        ReviewerResponse = schema.new({
            id = id.from(_N, "DocumentMetadataResponseInfo", "ReviewerResponse"),
            type = "list",
            name = "ReviewerResponse",
            target_id = prelude.Document.id,
            list_member = M.DocumentReviewerResponseSource,
        }),
    },
})

M.ListDocumentMetadataHistoryOutput = schema.new({
    id = id.from(_N, "ListDocumentMetadataHistoryResponse"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ListDocumentMetadataHistoryOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "ListDocumentMetadataHistoryOutput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Author = schema.new({
            id = id.from(_N, "ListDocumentMetadataHistoryOutput", "Author"),
            type = "string",
            name = "Author",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "ListDocumentMetadataHistoryOutput", "Metadata"),
            type = "structure",
            name = "Metadata",
            target_id = id.from(_N, "DocumentMetadataResponseInfo"),
            target = M.DocumentMetadataResponseInfo,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentMetadataHistoryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentFilter = schema.new({
    id = id.from(_N, "DocumentFilter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "DocumentFilter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "DocumentFilter", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DocumentKeyValuesFilter = schema.new({
    id = id.from(_N, "DocumentKeyValuesFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "DocumentKeyValuesFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "DocumentKeyValuesFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListDocumentsInput = schema.new({
    id = id.from(_N, "ListDocumentsRequest"),
    type = "structure",
    members = {
        DocumentFilterList = schema.new({
            id = id.from(_N, "ListDocumentsInput", "DocumentFilterList"),
            type = "list",
            name = "DocumentFilterList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DocumentFilter, traits = { [traits.XML_NAME] = { name = "DocumentFilter" } } }),
        }),
        Filters = schema.new({
            id = id.from(_N, "ListDocumentsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.DocumentKeyValuesFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDocumentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentIdentifier = schema.new({
    id = id.from(_N, "DocumentIdentifier"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DocumentIdentifier", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "DocumentIdentifier", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "DocumentIdentifier", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "DocumentIdentifier", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "DocumentIdentifier", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        PlatformTypes = schema.new({
            id = id.from(_N, "DocumentIdentifier", "PlatformTypes"),
            type = "list",
            name = "PlatformTypes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "PlatformType" } } }),
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "DocumentIdentifier", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        DocumentType = schema.new({
            id = id.from(_N, "DocumentIdentifier", "DocumentType"),
            type = "string",
            name = "DocumentType",
            target_id = prelude.String.id,
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "DocumentIdentifier", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        DocumentFormat = schema.new({
            id = id.from(_N, "DocumentIdentifier", "DocumentFormat"),
            type = "string",
            name = "DocumentFormat",
            target_id = prelude.String.id,
        }),
        TargetType = schema.new({
            id = id.from(_N, "DocumentIdentifier", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DocumentIdentifier", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Requires = schema.new({
            id = id.from(_N, "DocumentIdentifier", "Requires"),
            type = "list",
            name = "Requires",
            target_id = prelude.Document.id,
            list_member = M.DocumentRequires,
        }),
        ReviewStatus = schema.new({
            id = id.from(_N, "DocumentIdentifier", "ReviewStatus"),
            type = "string",
            name = "ReviewStatus",
            target_id = prelude.String.id,
        }),
        Author = schema.new({
            id = id.from(_N, "DocumentIdentifier", "Author"),
            type = "string",
            name = "Author",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDocumentsOutput = schema.new({
    id = id.from(_N, "ListDocumentsResult"),
    type = "structure",
    members = {
        DocumentIdentifiers = schema.new({
            id = id.from(_N, "ListDocumentsOutput", "DocumentIdentifiers"),
            type = "list",
            name = "DocumentIdentifiers",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DocumentIdentifier, traits = { [traits.XML_NAME] = { name = "DocumentIdentifier" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDocumentVersionsInput = schema.new({
    id = id.from(_N, "ListDocumentVersionsRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ListDocumentVersionsInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDocumentVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentVersionInfo = schema.new({
    id = id.from(_N, "DocumentVersionInfo"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DocumentVersionInfo", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "DocumentVersionInfo", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "DocumentVersionInfo", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "DocumentVersionInfo", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "DocumentVersionInfo", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        IsDefaultVersion = schema.new({
            id = id.from(_N, "DocumentVersionInfo", "IsDefaultVersion"),
            type = "boolean",
            name = "IsDefaultVersion",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DocumentFormat = schema.new({
            id = id.from(_N, "DocumentVersionInfo", "DocumentFormat"),
            type = "string",
            name = "DocumentFormat",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DocumentVersionInfo", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusInformation = schema.new({
            id = id.from(_N, "DocumentVersionInfo", "StatusInformation"),
            type = "string",
            name = "StatusInformation",
            target_id = prelude.String.id,
        }),
        ReviewStatus = schema.new({
            id = id.from(_N, "DocumentVersionInfo", "ReviewStatus"),
            type = "string",
            name = "ReviewStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDocumentVersionsOutput = schema.new({
    id = id.from(_N, "ListDocumentVersionsResult"),
    type = "structure",
    members = {
        DocumentVersions = schema.new({
            id = id.from(_N, "ListDocumentVersionsOutput", "DocumentVersions"),
            type = "list",
            name = "DocumentVersions",
            target_id = prelude.Document.id,
            list_member = M.DocumentVersionInfo,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInventoryEntriesInput = schema.new({
    id = id.from(_N, "ListInventoryEntriesRequest"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "ListInventoryEntriesInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TypeName = schema.new({
            id = id.from(_N, "ListInventoryEntriesInput", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "ListInventoryEntriesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InventoryFilter, traits = { [traits.XML_NAME] = { name = "InventoryFilter" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListInventoryEntriesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListInventoryEntriesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListInventoryEntriesOutput = schema.new({
    id = id.from(_N, "ListInventoryEntriesResult"),
    type = "structure",
    members = {
        TypeName = schema.new({
            id = id.from(_N, "ListInventoryEntriesOutput", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "ListInventoryEntriesOutput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "ListInventoryEntriesOutput", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
        }),
        CaptureTime = schema.new({
            id = id.from(_N, "ListInventoryEntriesOutput", "CaptureTime"),
            type = "string",
            name = "CaptureTime",
            target_id = prelude.String.id,
        }),
        Entries = schema.new({
            id = id.from(_N, "ListInventoryEntriesOutput", "Entries"),
            type = "list",
            name = "Entries",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListInventoryEntriesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NodeFilter = schema.new({
    id = id.from(_N, "NodeFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "NodeFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "NodeFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "FilterValue" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "NodeFilter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNodesInput = schema.new({
    id = id.from(_N, "ListNodesRequest"),
    type = "structure",
    members = {
        SyncName = schema.new({
            id = id.from(_N, "ListNodesInput", "SyncName"),
            type = "string",
            name = "SyncName",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListNodesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NodeFilter, traits = { [traits.XML_NAME] = { name = "NodeFilter" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNodesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListNodesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InstanceInfo = schema.new({
    id = id.from(_N, "InstanceInfo"),
    type = "structure",
    members = {
        AgentType = schema.new({
            id = id.from(_N, "InstanceInfo", "AgentType"),
            type = "string",
            name = "AgentType",
            target_id = prelude.String.id,
        }),
        AgentVersion = schema.new({
            id = id.from(_N, "InstanceInfo", "AgentVersion"),
            type = "string",
            name = "AgentVersion",
            target_id = prelude.String.id,
        }),
        ComputerName = schema.new({
            id = id.from(_N, "InstanceInfo", "ComputerName"),
            type = "string",
            name = "ComputerName",
            target_id = prelude.String.id,
        }),
        InstanceStatus = schema.new({
            id = id.from(_N, "InstanceInfo", "InstanceStatus"),
            type = "string",
            name = "InstanceStatus",
            target_id = prelude.String.id,
        }),
        IpAddress = schema.new({
            id = id.from(_N, "InstanceInfo", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
        ManagedStatus = schema.new({
            id = id.from(_N, "InstanceInfo", "ManagedStatus"),
            type = "string",
            name = "ManagedStatus",
            target_id = prelude.String.id,
        }),
        PlatformType = schema.new({
            id = id.from(_N, "InstanceInfo", "PlatformType"),
            type = "string",
            name = "PlatformType",
            target_id = prelude.String.id,
        }),
        PlatformName = schema.new({
            id = id.from(_N, "InstanceInfo", "PlatformName"),
            type = "string",
            name = "PlatformName",
            target_id = prelude.String.id,
        }),
        PlatformVersion = schema.new({
            id = id.from(_N, "InstanceInfo", "PlatformVersion"),
            type = "string",
            name = "PlatformVersion",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "InstanceInfo", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.NodeType = schema.new({
    id = id.from(_N, "NodeType"),
    type = "union",
    members = {
        Instance = schema.new({
            id = id.from(_N, "NodeType", "Instance"),
            type = "structure",
            name = "Instance",
            target_id = id.from(_N, "InstanceInfo"),
            target = M.InstanceInfo,
        }),
    },
})

M.NodeOwnerInfo = schema.new({
    id = id.from(_N, "NodeOwnerInfo"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "NodeOwnerInfo", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        OrganizationalUnitId = schema.new({
            id = id.from(_N, "NodeOwnerInfo", "OrganizationalUnitId"),
            type = "string",
            name = "OrganizationalUnitId",
            target_id = prelude.String.id,
        }),
        OrganizationalUnitPath = schema.new({
            id = id.from(_N, "NodeOwnerInfo", "OrganizationalUnitPath"),
            type = "string",
            name = "OrganizationalUnitPath",
            target_id = prelude.String.id,
        }),
    },
})

M.Node = schema.new({
    id = id.from(_N, "Node"),
    type = "structure",
    members = {
        CaptureTime = schema.new({
            id = id.from(_N, "Node", "CaptureTime"),
            type = "timestamp",
            name = "CaptureTime",
            target_id = prelude.Timestamp.id,
        }),
        Id = schema.new({
            id = id.from(_N, "Node", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "Node", "Owner"),
            type = "structure",
            name = "Owner",
            target_id = id.from(_N, "NodeOwnerInfo"),
            target = M.NodeOwnerInfo,
        }),
        Region = schema.new({
            id = id.from(_N, "Node", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        NodeType = schema.new({
            id = id.from(_N, "Node", "NodeType"),
            type = "union",
            name = "NodeType",
            target_id = id.from(_N, "NodeType"),
            target = M.NodeType,
        }),
    },
})

M.ListNodesOutput = schema.new({
    id = id.from(_N, "ListNodesResult"),
    type = "structure",
    members = {
        Nodes = schema.new({
            id = id.from(_N, "ListNodesOutput", "Nodes"),
            type = "list",
            name = "Nodes",
            target_id = prelude.Document.id,
            list_member = M.Node,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNodesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedOperationException = schema.new({
    id = id.from(_N, "UnsupportedOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedOperationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNodesSummaryOutput = schema.new({
    id = id.from(_N, "ListNodesSummaryResult"),
    type = "structure",
    members = {
        Summary = schema.new({
            id = id.from(_N, "ListNodesSummaryOutput", "Summary"),
            type = "list",
            name = "Summary",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNodesSummaryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemEventFilter = schema.new({
    id = id.from(_N, "OpsItemEventFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "OpsItemEventFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "OpsItemEventFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operator = schema.new({
            id = id.from(_N, "OpsItemEventFilter", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListOpsItemEventsInput = schema.new({
    id = id.from(_N, "ListOpsItemEventsRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListOpsItemEventsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.OpsItemEventFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOpsItemEventsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOpsItemEventsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemIdentity = schema.new({
    id = id.from(_N, "OpsItemIdentity"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "OpsItemIdentity", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemEventSummary = schema.new({
    id = id.from(_N, "OpsItemEventSummary"),
    type = "structure",
    members = {
        OpsItemId = schema.new({
            id = id.from(_N, "OpsItemEventSummary", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
        }),
        EventId = schema.new({
            id = id.from(_N, "OpsItemEventSummary", "EventId"),
            type = "string",
            name = "EventId",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "OpsItemEventSummary", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        DetailType = schema.new({
            id = id.from(_N, "OpsItemEventSummary", "DetailType"),
            type = "string",
            name = "DetailType",
            target_id = prelude.String.id,
        }),
        Detail = schema.new({
            id = id.from(_N, "OpsItemEventSummary", "Detail"),
            type = "string",
            name = "Detail",
            target_id = prelude.String.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "OpsItemEventSummary", "CreatedBy"),
            type = "structure",
            name = "CreatedBy",
            target_id = id.from(_N, "OpsItemIdentity"),
            target = M.OpsItemIdentity,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "OpsItemEventSummary", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListOpsItemEventsOutput = schema.new({
    id = id.from(_N, "ListOpsItemEventsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListOpsItemEventsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Summaries = schema.new({
            id = id.from(_N, "ListOpsItemEventsOutput", "Summaries"),
            type = "list",
            name = "Summaries",
            target_id = prelude.Document.id,
            list_member = M.OpsItemEventSummary,
        }),
    },
})

M.OpsItemRelatedItemsFilter = schema.new({
    id = id.from(_N, "OpsItemRelatedItemsFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "OpsItemRelatedItemsFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "OpsItemRelatedItemsFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operator = schema.new({
            id = id.from(_N, "OpsItemRelatedItemsFilter", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListOpsItemRelatedItemsInput = schema.new({
    id = id.from(_N, "ListOpsItemRelatedItemsRequest"),
    type = "structure",
    members = {
        OpsItemId = schema.new({
            id = id.from(_N, "ListOpsItemRelatedItemsInput", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListOpsItemRelatedItemsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.OpsItemRelatedItemsFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOpsItemRelatedItemsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOpsItemRelatedItemsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsItemRelatedItemSummary = schema.new({
    id = id.from(_N, "OpsItemRelatedItemSummary"),
    type = "structure",
    members = {
        OpsItemId = schema.new({
            id = id.from(_N, "OpsItemRelatedItemSummary", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
        }),
        AssociationId = schema.new({
            id = id.from(_N, "OpsItemRelatedItemSummary", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "OpsItemRelatedItemSummary", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        AssociationType = schema.new({
            id = id.from(_N, "OpsItemRelatedItemSummary", "AssociationType"),
            type = "string",
            name = "AssociationType",
            target_id = prelude.String.id,
        }),
        ResourceUri = schema.new({
            id = id.from(_N, "OpsItemRelatedItemSummary", "ResourceUri"),
            type = "string",
            name = "ResourceUri",
            target_id = prelude.String.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "OpsItemRelatedItemSummary", "CreatedBy"),
            type = "structure",
            name = "CreatedBy",
            target_id = id.from(_N, "OpsItemIdentity"),
            target = M.OpsItemIdentity,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "OpsItemRelatedItemSummary", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedBy = schema.new({
            id = id.from(_N, "OpsItemRelatedItemSummary", "LastModifiedBy"),
            type = "structure",
            name = "LastModifiedBy",
            target_id = id.from(_N, "OpsItemIdentity"),
            target = M.OpsItemIdentity,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "OpsItemRelatedItemSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListOpsItemRelatedItemsOutput = schema.new({
    id = id.from(_N, "ListOpsItemRelatedItemsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListOpsItemRelatedItemsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Summaries = schema.new({
            id = id.from(_N, "ListOpsItemRelatedItemsOutput", "Summaries"),
            type = "list",
            name = "Summaries",
            target_id = prelude.Document.id,
            list_member = M.OpsItemRelatedItemSummary,
        }),
    },
})

M.OpsMetadataFilter = schema.new({
    id = id.from(_N, "OpsMetadataFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "OpsMetadataFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "OpsMetadataFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListOpsMetadataInput = schema.new({
    id = id.from(_N, "ListOpsMetadataRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListOpsMetadataInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.OpsMetadataFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOpsMetadataInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOpsMetadataInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsMetadata = schema.new({
    id = id.from(_N, "OpsMetadata"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "OpsMetadata", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        OpsMetadataArn = schema.new({
            id = id.from(_N, "OpsMetadata", "OpsMetadataArn"),
            type = "string",
            name = "OpsMetadataArn",
            target_id = prelude.String.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "OpsMetadata", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedUser = schema.new({
            id = id.from(_N, "OpsMetadata", "LastModifiedUser"),
            type = "string",
            name = "LastModifiedUser",
            target_id = prelude.String.id,
        }),
        CreationDate = schema.new({
            id = id.from(_N, "OpsMetadata", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListOpsMetadataOutput = schema.new({
    id = id.from(_N, "ListOpsMetadataResult"),
    type = "structure",
    members = {
        OpsMetadataList = schema.new({
            id = id.from(_N, "ListOpsMetadataOutput", "OpsMetadataList"),
            type = "list",
            name = "OpsMetadataList",
            target_id = prelude.Document.id,
            list_member = M.OpsMetadata,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOpsMetadataOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourceComplianceSummariesInput = schema.new({
    id = id.from(_N, "ListResourceComplianceSummariesRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListResourceComplianceSummariesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ComplianceStringFilter, traits = { [traits.XML_NAME] = { name = "ComplianceFilter" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceComplianceSummariesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResourceComplianceSummariesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ResourceComplianceSummaryItem = schema.new({
    id = id.from(_N, "ResourceComplianceSummaryItem"),
    type = "structure",
    members = {
        ComplianceType = schema.new({
            id = id.from(_N, "ResourceComplianceSummaryItem", "ComplianceType"),
            type = "string",
            name = "ComplianceType",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceComplianceSummaryItem", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceComplianceSummaryItem", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ResourceComplianceSummaryItem", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        OverallSeverity = schema.new({
            id = id.from(_N, "ResourceComplianceSummaryItem", "OverallSeverity"),
            type = "string",
            name = "OverallSeverity",
            target_id = prelude.String.id,
        }),
        ExecutionSummary = schema.new({
            id = id.from(_N, "ResourceComplianceSummaryItem", "ExecutionSummary"),
            type = "structure",
            name = "ExecutionSummary",
            target_id = id.from(_N, "ComplianceExecutionSummary"),
            target = M.ComplianceExecutionSummary,
        }),
        CompliantSummary = schema.new({
            id = id.from(_N, "ResourceComplianceSummaryItem", "CompliantSummary"),
            type = "structure",
            name = "CompliantSummary",
            target_id = id.from(_N, "CompliantSummary"),
            target = M.CompliantSummary,
        }),
        NonCompliantSummary = schema.new({
            id = id.from(_N, "ResourceComplianceSummaryItem", "NonCompliantSummary"),
            type = "structure",
            name = "NonCompliantSummary",
            target_id = id.from(_N, "NonCompliantSummary"),
            target = M.NonCompliantSummary,
        }),
    },
})

M.ListResourceComplianceSummariesOutput = schema.new({
    id = id.from(_N, "ListResourceComplianceSummariesResult"),
    type = "structure",
    members = {
        ResourceComplianceSummaryItems = schema.new({
            id = id.from(_N, "ListResourceComplianceSummariesOutput", "ResourceComplianceSummaryItems"),
            type = "list",
            name = "ResourceComplianceSummaryItems",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ResourceComplianceSummaryItem, traits = { [traits.XML_NAME] = { name = "Item" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceComplianceSummariesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourceDataSyncInput = schema.new({
    id = id.from(_N, "ListResourceDataSyncRequest"),
    type = "structure",
    members = {
        SyncType = schema.new({
            id = id.from(_N, "ListResourceDataSyncInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceDataSyncInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResourceDataSyncInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ResourceDataSyncSourceWithState = schema.new({
    id = id.from(_N, "ResourceDataSyncSourceWithState"),
    type = "structure",
    members = {
        SourceType = schema.new({
            id = id.from(_N, "ResourceDataSyncSourceWithState", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        AwsOrganizationsSource = schema.new({
            id = id.from(_N, "ResourceDataSyncSourceWithState", "AwsOrganizationsSource"),
            type = "structure",
            name = "AwsOrganizationsSource",
            target_id = id.from(_N, "ResourceDataSyncAwsOrganizationsSource"),
            target = M.ResourceDataSyncAwsOrganizationsSource,
        }),
        SourceRegions = schema.new({
            id = id.from(_N, "ResourceDataSyncSourceWithState", "SourceRegions"),
            type = "list",
            name = "SourceRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IncludeFutureRegions = schema.new({
            id = id.from(_N, "ResourceDataSyncSourceWithState", "IncludeFutureRegions"),
            type = "boolean",
            name = "IncludeFutureRegions",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        State = schema.new({
            id = id.from(_N, "ResourceDataSyncSourceWithState", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EnableAllOpsDataSources = schema.new({
            id = id.from(_N, "ResourceDataSyncSourceWithState", "EnableAllOpsDataSources"),
            type = "boolean",
            name = "EnableAllOpsDataSources",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ResourceDataSyncItem = schema.new({
    id = id.from(_N, "ResourceDataSyncItem"),
    type = "structure",
    members = {
        SyncName = schema.new({
            id = id.from(_N, "ResourceDataSyncItem", "SyncName"),
            type = "string",
            name = "SyncName",
            target_id = prelude.String.id,
        }),
        SyncType = schema.new({
            id = id.from(_N, "ResourceDataSyncItem", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
        }),
        SyncSource = schema.new({
            id = id.from(_N, "ResourceDataSyncItem", "SyncSource"),
            type = "structure",
            name = "SyncSource",
            target_id = id.from(_N, "ResourceDataSyncSourceWithState"),
            target = M.ResourceDataSyncSourceWithState,
        }),
        S3Destination = schema.new({
            id = id.from(_N, "ResourceDataSyncItem", "S3Destination"),
            type = "structure",
            name = "S3Destination",
            target_id = id.from(_N, "ResourceDataSyncS3Destination"),
            target = M.ResourceDataSyncS3Destination,
        }),
        LastSyncTime = schema.new({
            id = id.from(_N, "ResourceDataSyncItem", "LastSyncTime"),
            type = "timestamp",
            name = "LastSyncTime",
            target_id = prelude.Timestamp.id,
        }),
        LastSuccessfulSyncTime = schema.new({
            id = id.from(_N, "ResourceDataSyncItem", "LastSuccessfulSyncTime"),
            type = "timestamp",
            name = "LastSuccessfulSyncTime",
            target_id = prelude.Timestamp.id,
        }),
        SyncLastModifiedTime = schema.new({
            id = id.from(_N, "ResourceDataSyncItem", "SyncLastModifiedTime"),
            type = "timestamp",
            name = "SyncLastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        LastStatus = schema.new({
            id = id.from(_N, "ResourceDataSyncItem", "LastStatus"),
            type = "string",
            name = "LastStatus",
            target_id = prelude.String.id,
        }),
        SyncCreatedTime = schema.new({
            id = id.from(_N, "ResourceDataSyncItem", "SyncCreatedTime"),
            type = "timestamp",
            name = "SyncCreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        LastSyncStatusMessage = schema.new({
            id = id.from(_N, "ResourceDataSyncItem", "LastSyncStatusMessage"),
            type = "string",
            name = "LastSyncStatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourceDataSyncOutput = schema.new({
    id = id.from(_N, "ListResourceDataSyncResult"),
    type = "structure",
    members = {
        ResourceDataSyncItems = schema.new({
            id = id.from(_N, "ListResourceDataSyncOutput", "ResourceDataSyncItems"),
            type = "list",
            name = "ResourceDataSyncItems",
            target_id = prelude.Document.id,
            list_member = M.ResourceDataSyncItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceDataSyncOutput", "NextToken"),
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
        ResourceType = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResult"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.DocumentPermissionLimit = schema.new({
    id = id.from(_N, "DocumentPermissionLimit"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DocumentPermissionLimit", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyDocumentPermissionInput = schema.new({
    id = id.from(_N, "ModifyDocumentPermissionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ModifyDocumentPermissionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionType = schema.new({
            id = id.from(_N, "ModifyDocumentPermissionInput", "PermissionType"),
            type = "string",
            name = "PermissionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountIdsToAdd = schema.new({
            id = id.from(_N, "ModifyDocumentPermissionInput", "AccountIdsToAdd"),
            type = "list",
            name = "AccountIdsToAdd",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AccountId" } } }),
        }),
        AccountIdsToRemove = schema.new({
            id = id.from(_N, "ModifyDocumentPermissionInput", "AccountIdsToRemove"),
            type = "list",
            name = "AccountIdsToRemove",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AccountId" } } }),
        }),
        SharedDocumentVersion = schema.new({
            id = id.from(_N, "ModifyDocumentPermissionInput", "SharedDocumentVersion"),
            type = "string",
            name = "SharedDocumentVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyDocumentPermissionOutput = schema.new({
    id = id.from(_N, "ModifyDocumentPermissionResponse"),
    type = "structure",
})

M.ComplianceTypeCountLimitExceededException = schema.new({
    id = id.from(_N, "ComplianceTypeCountLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ComplianceTypeCountLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidItemContentException = schema.new({
    id = id.from(_N, "InvalidItemContentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        TypeName = schema.new({
            id = id.from(_N, "InvalidItemContentException", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "InvalidItemContentException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ItemSizeLimitExceededException = schema.new({
    id = id.from(_N, "ItemSizeLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        TypeName = schema.new({
            id = id.from(_N, "ItemSizeLimitExceededException", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ItemSizeLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ComplianceItemEntry = schema.new({
    id = id.from(_N, "ComplianceItemEntry"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ComplianceItemEntry", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Title = schema.new({
            id = id.from(_N, "ComplianceItemEntry", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ComplianceItemEntry", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ComplianceItemEntry", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Details = schema.new({
            id = id.from(_N, "ComplianceItemEntry", "Details"),
            type = "map",
            name = "Details",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PutComplianceItemsInput = schema.new({
    id = id.from(_N, "PutComplianceItemsRequest"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "PutComplianceItemsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "PutComplianceItemsInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ComplianceType = schema.new({
            id = id.from(_N, "PutComplianceItemsInput", "ComplianceType"),
            type = "string",
            name = "ComplianceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionSummary = schema.new({
            id = id.from(_N, "PutComplianceItemsInput", "ExecutionSummary"),
            type = "structure",
            name = "ExecutionSummary",
            target_id = id.from(_N, "ComplianceExecutionSummary"),
            target = M.ComplianceExecutionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "PutComplianceItemsInput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ComplianceItemEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ItemContentHash = schema.new({
            id = id.from(_N, "PutComplianceItemsInput", "ItemContentHash"),
            type = "string",
            name = "ItemContentHash",
            target_id = prelude.String.id,
        }),
        UploadType = schema.new({
            id = id.from(_N, "PutComplianceItemsInput", "UploadType"),
            type = "string",
            name = "UploadType",
            target_id = prelude.String.id,
        }),
    },
})

M.PutComplianceItemsOutput = schema.new({
    id = id.from(_N, "PutComplianceItemsResult"),
    type = "structure",
})

M.TotalSizeLimitExceededException = schema.new({
    id = id.from(_N, "TotalSizeLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TotalSizeLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomSchemaCountLimitExceededException = schema.new({
    id = id.from(_N, "CustomSchemaCountLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CustomSchemaCountLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInventoryItemContextException = schema.new({
    id = id.from(_N, "InvalidInventoryItemContextException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidInventoryItemContextException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ItemContentMismatchException = schema.new({
    id = id.from(_N, "ItemContentMismatchException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        TypeName = schema.new({
            id = id.from(_N, "ItemContentMismatchException", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ItemContentMismatchException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InventoryItem = schema.new({
    id = id.from(_N, "InventoryItem"),
    type = "structure",
    members = {
        TypeName = schema.new({
            id = id.from(_N, "InventoryItem", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SchemaVersion = schema.new({
            id = id.from(_N, "InventoryItem", "SchemaVersion"),
            type = "string",
            name = "SchemaVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CaptureTime = schema.new({
            id = id.from(_N, "InventoryItem", "CaptureTime"),
            type = "string",
            name = "CaptureTime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContentHash = schema.new({
            id = id.from(_N, "InventoryItem", "ContentHash"),
            type = "string",
            name = "ContentHash",
            target_id = prelude.String.id,
        }),
        Content = schema.new({
            id = id.from(_N, "InventoryItem", "Content"),
            type = "list",
            name = "Content",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        Context = schema.new({
            id = id.from(_N, "InventoryItem", "Context"),
            type = "map",
            name = "Context",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PutInventoryInput = schema.new({
    id = id.from(_N, "PutInventoryRequest"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "PutInventoryInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "PutInventoryInput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InventoryItem, traits = { [traits.XML_NAME] = { name = "Item" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutInventoryOutput = schema.new({
    id = id.from(_N, "PutInventoryResult"),
    type = "structure",
    members = {
        Message = schema.new({
            id = id.from(_N, "PutInventoryOutput", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.SubTypeCountLimitExceededException = schema.new({
    id = id.from(_N, "SubTypeCountLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "SubTypeCountLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedInventoryItemContextException = schema.new({
    id = id.from(_N, "UnsupportedInventoryItemContextException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        TypeName = schema.new({
            id = id.from(_N, "UnsupportedInventoryItemContextException", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "UnsupportedInventoryItemContextException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedInventorySchemaVersionException = schema.new({
    id = id.from(_N, "UnsupportedInventorySchemaVersionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedInventorySchemaVersionException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.HierarchyLevelLimitExceededException = schema.new({
    id = id.from(_N, "HierarchyLevelLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "HierarchyLevelLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.HierarchyTypeMismatchException = schema.new({
    id = id.from(_N, "HierarchyTypeMismatchException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "HierarchyTypeMismatchException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.IncompatiblePolicyException = schema.new({
    id = id.from(_N, "IncompatiblePolicyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "IncompatiblePolicyException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidAllowedPatternException = schema.new({
    id = id.from(_N, "InvalidAllowedPatternException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidAllowedPatternException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPolicyAttributeException = schema.new({
    id = id.from(_N, "InvalidPolicyAttributeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidPolicyAttributeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPolicyTypeException = schema.new({
    id = id.from(_N, "InvalidPolicyTypeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidPolicyTypeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterAlreadyExists = schema.new({
    id = id.from(_N, "ParameterAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParameterAlreadyExists", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterLimitExceeded = schema.new({
    id = id.from(_N, "ParameterLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParameterLimitExceeded", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterMaxVersionLimitExceeded = schema.new({
    id = id.from(_N, "ParameterMaxVersionLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParameterMaxVersionLimitExceeded", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterPatternMismatchException = schema.new({
    id = id.from(_N, "ParameterPatternMismatchException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParameterPatternMismatchException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PoliciesLimitExceededException = schema.new({
    id = id.from(_N, "PoliciesLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PoliciesLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutParameterInput = schema.new({
    id = id.from(_N, "PutParameterRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PutParameterInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "PutParameterInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "PutParameterInput", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "PutParameterInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        KeyId = schema.new({
            id = id.from(_N, "PutParameterInput", "KeyId"),
            type = "string",
            name = "KeyId",
            target_id = prelude.String.id,
        }),
        Overwrite = schema.new({
            id = id.from(_N, "PutParameterInput", "Overwrite"),
            type = "boolean",
            name = "Overwrite",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        AllowedPattern = schema.new({
            id = id.from(_N, "PutParameterInput", "AllowedPattern"),
            type = "string",
            name = "AllowedPattern",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "PutParameterInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Tier = schema.new({
            id = id.from(_N, "PutParameterInput", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
        }),
        Policies = schema.new({
            id = id.from(_N, "PutParameterInput", "Policies"),
            type = "string",
            name = "Policies",
            target_id = prelude.String.id,
        }),
        DataType = schema.new({
            id = id.from(_N, "PutParameterInput", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
        }),
    },
})

M.PutParameterOutput = schema.new({
    id = id.from(_N, "PutParameterResult"),
    type = "structure",
    members = {
        Version = schema.new({
            id = id.from(_N, "PutParameterOutput", "Version"),
            type = "long",
            name = "Version",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "PutParameterOutput", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedParameterType = schema.new({
    id = id.from(_N, "UnsupportedParameterType"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnsupportedParameterType", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyId = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
        }),
        PolicyHash = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "PolicyHash"),
            type = "string",
            name = "PolicyHash",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyResponse"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
        }),
        PolicyHash = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "PolicyHash"),
            type = "string",
            name = "PolicyHash",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourcePolicyLimitExceededException = schema.new({
    id = id.from(_N, "ResourcePolicyLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Limit = schema.new({
            id = id.from(_N, "ResourcePolicyLimitExceededException", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LimitType = schema.new({
            id = id.from(_N, "ResourcePolicyLimitExceededException", "LimitType"),
            type = "string",
            name = "LimitType",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ResourcePolicyLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterDefaultPatchBaselineInput = schema.new({
    id = id.from(_N, "RegisterDefaultPatchBaselineRequest"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "RegisterDefaultPatchBaselineInput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterDefaultPatchBaselineOutput = schema.new({
    id = id.from(_N, "RegisterDefaultPatchBaselineResult"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "RegisterDefaultPatchBaselineOutput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterPatchBaselineForPatchGroupInput = schema.new({
    id = id.from(_N, "RegisterPatchBaselineForPatchGroupRequest"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "RegisterPatchBaselineForPatchGroupInput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PatchGroup = schema.new({
            id = id.from(_N, "RegisterPatchBaselineForPatchGroupInput", "PatchGroup"),
            type = "string",
            name = "PatchGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterPatchBaselineForPatchGroupOutput = schema.new({
    id = id.from(_N, "RegisterPatchBaselineForPatchGroupResult"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "RegisterPatchBaselineForPatchGroupOutput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
        }),
        PatchGroup = schema.new({
            id = id.from(_N, "RegisterPatchBaselineForPatchGroupOutput", "PatchGroup"),
            type = "string",
            name = "PatchGroup",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterTargetWithMaintenanceWindowInput = schema.new({
    id = id.from(_N, "RegisterTargetWithMaintenanceWindowRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "RegisterTargetWithMaintenanceWindowInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "RegisterTargetWithMaintenanceWindowInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Targets = schema.new({
            id = id.from(_N, "RegisterTargetWithMaintenanceWindowInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OwnerInformation = schema.new({
            id = id.from(_N, "RegisterTargetWithMaintenanceWindowInput", "OwnerInformation"),
            type = "string",
            name = "OwnerInformation",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "RegisterTargetWithMaintenanceWindowInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "RegisterTargetWithMaintenanceWindowInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "RegisterTargetWithMaintenanceWindowInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.RegisterTargetWithMaintenanceWindowOutput = schema.new({
    id = id.from(_N, "RegisterTargetWithMaintenanceWindowResult"),
    type = "structure",
    members = {
        WindowTargetId = schema.new({
            id = id.from(_N, "RegisterTargetWithMaintenanceWindowOutput", "WindowTargetId"),
            type = "string",
            name = "WindowTargetId",
            target_id = prelude.String.id,
        }),
    },
})

M.FeatureNotAvailableException = schema.new({
    id = id.from(_N, "FeatureNotAvailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FeatureNotAvailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterTaskWithMaintenanceWindowInput = schema.new({
    id = id.from(_N, "RegisterTaskWithMaintenanceWindowRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Targets = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceRoleArn = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "ServiceRoleArn"),
            type = "string",
            name = "ServiceRoleArn",
            target_id = prelude.String.id,
        }),
        TaskType = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "TaskType"),
            type = "string",
            name = "TaskType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TaskParameters = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "TaskParameters"),
            type = "map",
            name = "TaskParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MaintenanceWindowTaskParameterValueExpression,
        }),
        TaskInvocationParameters = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "TaskInvocationParameters"),
            type = "structure",
            name = "TaskInvocationParameters",
            target_id = id.from(_N, "MaintenanceWindowTaskInvocationParameters"),
            target = M.MaintenanceWindowTaskInvocationParameters,
        }),
        Priority = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
        }),
        Name = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        CutoffBehavior = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "CutoffBehavior"),
            type = "string",
            name = "CutoffBehavior",
            target_id = prelude.String.id,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowInput", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
    },
})

M.RegisterTaskWithMaintenanceWindowOutput = schema.new({
    id = id.from(_N, "RegisterTaskWithMaintenanceWindowResult"),
    type = "structure",
    members = {
        WindowTaskId = schema.new({
            id = id.from(_N, "RegisterTaskWithMaintenanceWindowOutput", "WindowTaskId"),
            type = "string",
            name = "WindowTaskId",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoveTagsFromResourceInput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceRequest"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveTagsFromResourceOutput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceResult"),
    type = "structure",
})

M.ResetServiceSettingInput = schema.new({
    id = id.from(_N, "ResetServiceSettingRequest"),
    type = "structure",
    members = {
        SettingId = schema.new({
            id = id.from(_N, "ResetServiceSettingInput", "SettingId"),
            type = "string",
            name = "SettingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResetServiceSettingOutput = schema.new({
    id = id.from(_N, "ResetServiceSettingResult"),
    type = "structure",
    members = {
        ServiceSetting = schema.new({
            id = id.from(_N, "ResetServiceSettingOutput", "ServiceSetting"),
            type = "structure",
            name = "ServiceSetting",
            target_id = id.from(_N, "ServiceSetting"),
            target = M.ServiceSetting,
        }),
    },
})

M.ResumeSessionInput = schema.new({
    id = id.from(_N, "ResumeSessionRequest"),
    type = "structure",
    members = {
        SessionId = schema.new({
            id = id.from(_N, "ResumeSessionInput", "SessionId"),
            type = "string",
            name = "SessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResumeSessionOutput = schema.new({
    id = id.from(_N, "ResumeSessionResponse"),
    type = "structure",
    members = {
        SessionId = schema.new({
            id = id.from(_N, "ResumeSessionOutput", "SessionId"),
            type = "string",
            name = "SessionId",
            target_id = prelude.String.id,
        }),
        TokenValue = schema.new({
            id = id.from(_N, "ResumeSessionOutput", "TokenValue"),
            type = "string",
            name = "TokenValue",
            target_id = prelude.String.id,
        }),
        StreamUrl = schema.new({
            id = id.from(_N, "ResumeSessionOutput", "StreamUrl"),
            type = "string",
            name = "StreamUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.AutomationStepNotFoundException = schema.new({
    id = id.from(_N, "AutomationStepNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AutomationStepNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidAutomationSignalException = schema.new({
    id = id.from(_N, "InvalidAutomationSignalException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidAutomationSignalException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.SendAutomationSignalInput = schema.new({
    id = id.from(_N, "SendAutomationSignalRequest"),
    type = "structure",
    members = {
        AutomationExecutionId = schema.new({
            id = id.from(_N, "SendAutomationSignalInput", "AutomationExecutionId"),
            type = "string",
            name = "AutomationExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SignalType = schema.new({
            id = id.from(_N, "SendAutomationSignalInput", "SignalType"),
            type = "string",
            name = "SignalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Payload = schema.new({
            id = id.from(_N, "SendAutomationSignalInput", "Payload"),
            type = "map",
            name = "Payload",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
    },
})

M.SendAutomationSignalOutput = schema.new({
    id = id.from(_N, "SendAutomationSignalResult"),
    type = "structure",
})

M.InvalidNotificationConfig = schema.new({
    id = id.from(_N, "InvalidNotificationConfig"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidNotificationConfig", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOutputFolder = schema.new({
    id = id.from(_N, "InvalidOutputFolder"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.InvalidRole = schema.new({
    id = id.from(_N, "InvalidRole"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidRole", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.SendCommandInput = schema.new({
    id = id.from(_N, "SendCommandRequest"),
    type = "structure",
    members = {
        InstanceIds = schema.new({
            id = id.from(_N, "SendCommandInput", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Targets = schema.new({
            id = id.from(_N, "SendCommandInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        DocumentName = schema.new({
            id = id.from(_N, "SendCommandInput", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "SendCommandInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        DocumentHash = schema.new({
            id = id.from(_N, "SendCommandInput", "DocumentHash"),
            type = "string",
            name = "DocumentHash",
            target_id = prelude.String.id,
        }),
        DocumentHashType = schema.new({
            id = id.from(_N, "SendCommandInput", "DocumentHashType"),
            type = "string",
            name = "DocumentHashType",
            target_id = prelude.String.id,
        }),
        TimeoutSeconds = schema.new({
            id = id.from(_N, "SendCommandInput", "TimeoutSeconds"),
            type = "integer",
            name = "TimeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        Comment = schema.new({
            id = id.from(_N, "SendCommandInput", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "SendCommandInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        OutputS3Region = schema.new({
            id = id.from(_N, "SendCommandInput", "OutputS3Region"),
            type = "string",
            name = "OutputS3Region",
            target_id = prelude.String.id,
        }),
        OutputS3BucketName = schema.new({
            id = id.from(_N, "SendCommandInput", "OutputS3BucketName"),
            type = "string",
            name = "OutputS3BucketName",
            target_id = prelude.String.id,
        }),
        OutputS3KeyPrefix = schema.new({
            id = id.from(_N, "SendCommandInput", "OutputS3KeyPrefix"),
            type = "string",
            name = "OutputS3KeyPrefix",
            target_id = prelude.String.id,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "SendCommandInput", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "SendCommandInput", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        ServiceRoleArn = schema.new({
            id = id.from(_N, "SendCommandInput", "ServiceRoleArn"),
            type = "string",
            name = "ServiceRoleArn",
            target_id = prelude.String.id,
        }),
        NotificationConfig = schema.new({
            id = id.from(_N, "SendCommandInput", "NotificationConfig"),
            type = "structure",
            name = "NotificationConfig",
            target_id = id.from(_N, "NotificationConfig"),
            target = M.NotificationConfig,
        }),
        CloudWatchOutputConfig = schema.new({
            id = id.from(_N, "SendCommandInput", "CloudWatchOutputConfig"),
            type = "structure",
            name = "CloudWatchOutputConfig",
            target_id = id.from(_N, "CloudWatchOutputConfig"),
            target = M.CloudWatchOutputConfig,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "SendCommandInput", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
    },
})

M.SendCommandOutput = schema.new({
    id = id.from(_N, "SendCommandResult"),
    type = "structure",
    members = {
        Command = schema.new({
            id = id.from(_N, "SendCommandOutput", "Command"),
            type = "structure",
            name = "Command",
            target_id = id.from(_N, "Command"),
            target = M.Command,
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartAccessRequestInput = schema.new({
    id = id.from(_N, "StartAccessRequestRequest"),
    type = "structure",
    members = {
        Reason = schema.new({
            id = id.from(_N, "StartAccessRequestInput", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Targets = schema.new({
            id = id.from(_N, "StartAccessRequestInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StartAccessRequestInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartAccessRequestOutput = schema.new({
    id = id.from(_N, "StartAccessRequestResponse"),
    type = "structure",
    members = {
        AccessRequestId = schema.new({
            id = id.from(_N, "StartAccessRequestOutput", "AccessRequestId"),
            type = "string",
            name = "AccessRequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidAssociation = schema.new({
    id = id.from(_N, "InvalidAssociation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidAssociation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StartAssociationsOnceInput = schema.new({
    id = id.from(_N, "StartAssociationsOnceRequest"),
    type = "structure",
    members = {
        AssociationIds = schema.new({
            id = id.from(_N, "StartAssociationsOnceInput", "AssociationIds"),
            type = "list",
            name = "AssociationIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartAssociationsOnceOutput = schema.new({
    id = id.from(_N, "StartAssociationsOnceResult"),
    type = "structure",
})

M.AutomationDefinitionNotFoundException = schema.new({
    id = id.from(_N, "AutomationDefinitionNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AutomationDefinitionNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AutomationDefinitionVersionNotFoundException = schema.new({
    id = id.from(_N, "AutomationDefinitionVersionNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AutomationDefinitionVersionNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AutomationExecutionLimitExceededException = schema.new({
    id = id.from(_N, "AutomationExecutionLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AutomationExecutionLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidAutomationExecutionParametersException = schema.new({
    id = id.from(_N, "InvalidAutomationExecutionParametersException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidAutomationExecutionParametersException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StartAutomationExecutionInput = schema.new({
    id = id.from(_N, "StartAutomationExecutionRequest"),
    type = "structure",
    members = {
        DocumentName = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        ClientToken = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        Mode = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        TargetParameterName = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "TargetParameterName"),
            type = "string",
            name = "TargetParameterName",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        TargetLocations = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "TargetLocations"),
            type = "list",
            name = "TargetLocations",
            target_id = prelude.Document.id,
            list_member = M.TargetLocation,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        TargetLocationsURL = schema.new({
            id = id.from(_N, "StartAutomationExecutionInput", "TargetLocationsURL"),
            type = "string",
            name = "TargetLocationsURL",
            target_id = prelude.String.id,
        }),
    },
})

M.StartAutomationExecutionOutput = schema.new({
    id = id.from(_N, "StartAutomationExecutionResult"),
    type = "structure",
    members = {
        AutomationExecutionId = schema.new({
            id = id.from(_N, "StartAutomationExecutionOutput", "AutomationExecutionId"),
            type = "string",
            name = "AutomationExecutionId",
            target_id = prelude.String.id,
        }),
    },
})

M.AutomationDefinitionNotApprovedException = schema.new({
    id = id.from(_N, "AutomationDefinitionNotApprovedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AutomationDefinitionNotApprovedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StartChangeRequestExecutionInput = schema.new({
    id = id.from(_N, "StartChangeRequestExecutionRequest"),
    type = "structure",
    members = {
        ScheduledTime = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "ScheduledTime"),
            type = "timestamp",
            name = "ScheduledTime",
            target_id = prelude.Timestamp.id,
        }),
        DocumentName = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        ChangeRequestName = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "ChangeRequestName"),
            type = "string",
            name = "ChangeRequestName",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        AutoApprove = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "AutoApprove"),
            type = "boolean",
            name = "AutoApprove",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Runbooks = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "Runbooks"),
            type = "list",
            name = "Runbooks",
            target_id = prelude.Document.id,
            list_member = M.Runbook,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ScheduledEndTime = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "ScheduledEndTime"),
            type = "timestamp",
            name = "ScheduledEndTime",
            target_id = prelude.Timestamp.id,
        }),
        ChangeDetails = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionInput", "ChangeDetails"),
            type = "string",
            name = "ChangeDetails",
            target_id = prelude.String.id,
        }),
    },
})

M.StartChangeRequestExecutionOutput = schema.new({
    id = id.from(_N, "StartChangeRequestExecutionResult"),
    type = "structure",
    members = {
        AutomationExecutionId = schema.new({
            id = id.from(_N, "StartChangeRequestExecutionOutput", "AutomationExecutionId"),
            type = "string",
            name = "AutomationExecutionId",
            target_id = prelude.String.id,
        }),
    },
})

M.AutomationExecutionInputs = schema.new({
    id = id.from(_N, "AutomationExecutionInputs"),
    type = "structure",
    members = {
        Parameters = schema.new({
            id = id.from(_N, "AutomationExecutionInputs", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        TargetParameterName = schema.new({
            id = id.from(_N, "AutomationExecutionInputs", "TargetParameterName"),
            type = "string",
            name = "TargetParameterName",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "AutomationExecutionInputs", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "AutomationExecutionInputs", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        TargetLocations = schema.new({
            id = id.from(_N, "AutomationExecutionInputs", "TargetLocations"),
            type = "list",
            name = "TargetLocations",
            target_id = prelude.Document.id,
            list_member = M.TargetLocation,
        }),
        TargetLocationsURL = schema.new({
            id = id.from(_N, "AutomationExecutionInputs", "TargetLocationsURL"),
            type = "string",
            name = "TargetLocationsURL",
            target_id = prelude.String.id,
        }),
    },
})

M.ExecutionInputs = schema.new({
    id = id.from(_N, "ExecutionInputs"),
    type = "union",
    members = {
        Automation = schema.new({
            id = id.from(_N, "ExecutionInputs", "Automation"),
            type = "structure",
            name = "Automation",
            target_id = id.from(_N, "AutomationExecutionInputs"),
            target = M.AutomationExecutionInputs,
        }),
    },
})

M.StartExecutionPreviewInput = schema.new({
    id = id.from(_N, "StartExecutionPreviewRequest"),
    type = "structure",
    members = {
        DocumentName = schema.new({
            id = id.from(_N, "StartExecutionPreviewInput", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "StartExecutionPreviewInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        ExecutionInputs = schema.new({
            id = id.from(_N, "StartExecutionPreviewInput", "ExecutionInputs"),
            type = "union",
            name = "ExecutionInputs",
            target_id = id.from(_N, "ExecutionInputs"),
            target = M.ExecutionInputs,
        }),
    },
})

M.StartExecutionPreviewOutput = schema.new({
    id = id.from(_N, "StartExecutionPreviewResponse"),
    type = "structure",
    members = {
        ExecutionPreviewId = schema.new({
            id = id.from(_N, "StartExecutionPreviewOutput", "ExecutionPreviewId"),
            type = "string",
            name = "ExecutionPreviewId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSessionInput = schema.new({
    id = id.from(_N, "StartSessionRequest"),
    type = "structure",
    members = {
        Target = schema.new({
            id = id.from(_N, "StartSessionInput", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentName = schema.new({
            id = id.from(_N, "StartSessionInput", "DocumentName"),
            type = "string",
            name = "DocumentName",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "StartSessionInput", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "StartSessionInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
    },
})

M.StartSessionOutput = schema.new({
    id = id.from(_N, "StartSessionResponse"),
    type = "structure",
    members = {
        SessionId = schema.new({
            id = id.from(_N, "StartSessionOutput", "SessionId"),
            type = "string",
            name = "SessionId",
            target_id = prelude.String.id,
        }),
        TokenValue = schema.new({
            id = id.from(_N, "StartSessionOutput", "TokenValue"),
            type = "string",
            name = "TokenValue",
            target_id = prelude.String.id,
        }),
        StreamUrl = schema.new({
            id = id.from(_N, "StartSessionOutput", "StreamUrl"),
            type = "string",
            name = "StreamUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetNotConnected = schema.new({
    id = id.from(_N, "TargetNotConnected"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TargetNotConnected", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidAutomationStatusUpdateException = schema.new({
    id = id.from(_N, "InvalidAutomationStatusUpdateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidAutomationStatusUpdateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StopAutomationExecutionInput = schema.new({
    id = id.from(_N, "StopAutomationExecutionRequest"),
    type = "structure",
    members = {
        AutomationExecutionId = schema.new({
            id = id.from(_N, "StopAutomationExecutionInput", "AutomationExecutionId"),
            type = "string",
            name = "AutomationExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "StopAutomationExecutionInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.StopAutomationExecutionOutput = schema.new({
    id = id.from(_N, "StopAutomationExecutionResult"),
    type = "structure",
})

M.TerminateSessionInput = schema.new({
    id = id.from(_N, "TerminateSessionRequest"),
    type = "structure",
    members = {
        SessionId = schema.new({
            id = id.from(_N, "TerminateSessionInput", "SessionId"),
            type = "string",
            name = "SessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TerminateSessionOutput = schema.new({
    id = id.from(_N, "TerminateSessionResponse"),
    type = "structure",
    members = {
        SessionId = schema.new({
            id = id.from(_N, "TerminateSessionOutput", "SessionId"),
            type = "string",
            name = "SessionId",
            target_id = prelude.String.id,
        }),
    },
})

M.UnlabelParameterVersionInput = schema.new({
    id = id.from(_N, "UnlabelParameterVersionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UnlabelParameterVersionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ParameterVersion = schema.new({
            id = id.from(_N, "UnlabelParameterVersionInput", "ParameterVersion"),
            type = "long",
            name = "ParameterVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Labels = schema.new({
            id = id.from(_N, "UnlabelParameterVersionInput", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UnlabelParameterVersionOutput = schema.new({
    id = id.from(_N, "UnlabelParameterVersionResult"),
    type = "structure",
    members = {
        RemovedLabels = schema.new({
            id = id.from(_N, "UnlabelParameterVersionOutput", "RemovedLabels"),
            type = "list",
            name = "RemovedLabels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InvalidLabels = schema.new({
            id = id.from(_N, "UnlabelParameterVersionOutput", "InvalidLabels"),
            type = "list",
            name = "InvalidLabels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AssociationVersionLimitExceeded = schema.new({
    id = id.from(_N, "AssociationVersionLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AssociationVersionLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidUpdate = schema.new({
    id = id.from(_N, "InvalidUpdate"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidUpdate", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAssociationInput = schema.new({
    id = id.from(_N, "UpdateAssociationRequest"),
    type = "structure",
    members = {
        AssociationId = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "AssociationId"),
            type = "string",
            name = "AssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        ScheduleExpression = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "ScheduleExpression"),
            type = "string",
            name = "ScheduleExpression",
            target_id = prelude.String.id,
        }),
        OutputLocation = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "OutputLocation"),
            type = "structure",
            name = "OutputLocation",
            target_id = id.from(_N, "InstanceAssociationOutputLocation"),
            target = M.InstanceAssociationOutputLocation,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        AssociationName = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "AssociationName"),
            type = "string",
            name = "AssociationName",
            target_id = prelude.String.id,
        }),
        AssociationVersion = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "AssociationVersion"),
            type = "string",
            name = "AssociationVersion",
            target_id = prelude.String.id,
        }),
        AutomationTargetParameterName = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "AutomationTargetParameterName"),
            type = "string",
            name = "AutomationTargetParameterName",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        ComplianceSeverity = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "ComplianceSeverity"),
            type = "string",
            name = "ComplianceSeverity",
            target_id = prelude.String.id,
        }),
        SyncCompliance = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "SyncCompliance"),
            type = "string",
            name = "SyncCompliance",
            target_id = prelude.String.id,
        }),
        ApplyOnlyAtCronInterval = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "ApplyOnlyAtCronInterval"),
            type = "boolean",
            name = "ApplyOnlyAtCronInterval",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CalendarNames = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "CalendarNames"),
            type = "list",
            name = "CalendarNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TargetLocations = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "TargetLocations"),
            type = "list",
            name = "TargetLocations",
            target_id = prelude.Document.id,
            list_member = M.TargetLocation,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        TargetMaps = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "TargetMaps"),
            type = "list",
            name = "TargetMaps",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
        AssociationDispatchAssumeRole = schema.new({
            id = id.from(_N, "UpdateAssociationInput", "AssociationDispatchAssumeRole"),
            type = "string",
            name = "AssociationDispatchAssumeRole",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAssociationOutput = schema.new({
    id = id.from(_N, "UpdateAssociationResult"),
    type = "structure",
    members = {
        AssociationDescription = schema.new({
            id = id.from(_N, "UpdateAssociationOutput", "AssociationDescription"),
            type = "structure",
            name = "AssociationDescription",
            target_id = id.from(_N, "AssociationDescription"),
            target = M.AssociationDescription,
        }),
    },
})

M.StatusUnchanged = schema.new({
    id = id.from(_N, "StatusUnchanged"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.UpdateAssociationStatusInput = schema.new({
    id = id.from(_N, "UpdateAssociationStatusRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateAssociationStatusInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceId = schema.new({
            id = id.from(_N, "UpdateAssociationStatusInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssociationStatus = schema.new({
            id = id.from(_N, "UpdateAssociationStatusInput", "AssociationStatus"),
            type = "structure",
            name = "AssociationStatus",
            target_id = id.from(_N, "AssociationStatus"),
            target = M.AssociationStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAssociationStatusOutput = schema.new({
    id = id.from(_N, "UpdateAssociationStatusResult"),
    type = "structure",
    members = {
        AssociationDescription = schema.new({
            id = id.from(_N, "UpdateAssociationStatusOutput", "AssociationDescription"),
            type = "structure",
            name = "AssociationDescription",
            target_id = id.from(_N, "AssociationDescription"),
            target = M.AssociationDescription,
        }),
    },
})

M.DocumentVersionLimitExceeded = schema.new({
    id = id.from(_N, "DocumentVersionLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DocumentVersionLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DuplicateDocumentContent = schema.new({
    id = id.from(_N, "DuplicateDocumentContent"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DuplicateDocumentContent", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DuplicateDocumentVersionName = schema.new({
    id = id.from(_N, "DuplicateDocumentVersionName"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DuplicateDocumentVersionName", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDocumentInput = schema.new({
    id = id.from(_N, "UpdateDocumentRequest"),
    type = "structure",
    members = {
        Content = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Attachments = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "Attachments"),
            type = "list",
            name = "Attachments",
            target_id = prelude.Document.id,
            list_member = M.AttachmentsSource,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        DocumentFormat = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "DocumentFormat"),
            type = "string",
            name = "DocumentFormat",
            target_id = prelude.String.id,
        }),
        TargetType = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDocumentOutput = schema.new({
    id = id.from(_N, "UpdateDocumentResult"),
    type = "structure",
    members = {
        DocumentDescription = schema.new({
            id = id.from(_N, "UpdateDocumentOutput", "DocumentDescription"),
            type = "structure",
            name = "DocumentDescription",
            target_id = id.from(_N, "DocumentDescription"),
            target = M.DocumentDescription,
        }),
    },
})

M.UpdateDocumentDefaultVersionInput = schema.new({
    id = id.from(_N, "UpdateDocumentDefaultVersionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateDocumentDefaultVersionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "UpdateDocumentDefaultVersionInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DocumentDefaultVersionDescription = schema.new({
    id = id.from(_N, "DocumentDefaultVersionDescription"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DocumentDefaultVersionDescription", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DefaultVersion = schema.new({
            id = id.from(_N, "DocumentDefaultVersionDescription", "DefaultVersion"),
            type = "string",
            name = "DefaultVersion",
            target_id = prelude.String.id,
        }),
        DefaultVersionName = schema.new({
            id = id.from(_N, "DocumentDefaultVersionDescription", "DefaultVersionName"),
            type = "string",
            name = "DefaultVersionName",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDocumentDefaultVersionOutput = schema.new({
    id = id.from(_N, "UpdateDocumentDefaultVersionResult"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "UpdateDocumentDefaultVersionOutput", "Description"),
            type = "structure",
            name = "Description",
            target_id = id.from(_N, "DocumentDefaultVersionDescription"),
            target = M.DocumentDefaultVersionDescription,
        }),
    },
})

M.DocumentReviews = schema.new({
    id = id.from(_N, "DocumentReviews"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "DocumentReviews", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "DocumentReviews", "Comment"),
            type = "list",
            name = "Comment",
            target_id = prelude.Document.id,
            list_member = M.DocumentReviewCommentSource,
        }),
    },
})

M.UpdateDocumentMetadataInput = schema.new({
    id = id.from(_N, "UpdateDocumentMetadataRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateDocumentMetadataInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentVersion = schema.new({
            id = id.from(_N, "UpdateDocumentMetadataInput", "DocumentVersion"),
            type = "string",
            name = "DocumentVersion",
            target_id = prelude.String.id,
        }),
        DocumentReviews = schema.new({
            id = id.from(_N, "UpdateDocumentMetadataInput", "DocumentReviews"),
            type = "structure",
            name = "DocumentReviews",
            target_id = id.from(_N, "DocumentReviews"),
            target = M.DocumentReviews,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDocumentMetadataOutput = schema.new({
    id = id.from(_N, "UpdateDocumentMetadataResponse"),
    type = "structure",
})

M.UpdateMaintenanceWindowInput = schema.new({
    id = id.from(_N, "UpdateMaintenanceWindowRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        StartDate = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "StartDate"),
            type = "string",
            name = "StartDate",
            target_id = prelude.String.id,
        }),
        EndDate = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "EndDate"),
            type = "string",
            name = "EndDate",
            target_id = prelude.String.id,
        }),
        Schedule = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "Schedule"),
            type = "string",
            name = "Schedule",
            target_id = prelude.String.id,
        }),
        ScheduleTimezone = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "ScheduleTimezone"),
            type = "string",
            name = "ScheduleTimezone",
            target_id = prelude.String.id,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        Cutoff = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "Cutoff"),
            type = "integer",
            name = "Cutoff",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        AllowUnassociatedTargets = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "AllowUnassociatedTargets"),
            type = "boolean",
            name = "AllowUnassociatedTargets",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Replace = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowInput", "Replace"),
            type = "boolean",
            name = "Replace",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.UpdateMaintenanceWindowOutput = schema.new({
    id = id.from(_N, "UpdateMaintenanceWindowResult"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        StartDate = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "StartDate"),
            type = "string",
            name = "StartDate",
            target_id = prelude.String.id,
        }),
        EndDate = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "EndDate"),
            type = "string",
            name = "EndDate",
            target_id = prelude.String.id,
        }),
        Schedule = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "Schedule"),
            type = "string",
            name = "Schedule",
            target_id = prelude.String.id,
        }),
        ScheduleTimezone = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "ScheduleTimezone"),
            type = "string",
            name = "ScheduleTimezone",
            target_id = prelude.String.id,
        }),
        ScheduleOffset = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "ScheduleOffset"),
            type = "integer",
            name = "ScheduleOffset",
            target_id = prelude.Integer.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        Cutoff = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "Cutoff"),
            type = "integer",
            name = "Cutoff",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AllowUnassociatedTargets = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "AllowUnassociatedTargets"),
            type = "boolean",
            name = "AllowUnassociatedTargets",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowOutput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.UpdateMaintenanceWindowTargetInput = schema.new({
    id = id.from(_N, "UpdateMaintenanceWindowTargetRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WindowTargetId = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetInput", "WindowTargetId"),
            type = "string",
            name = "WindowTargetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Targets = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        OwnerInformation = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetInput", "OwnerInformation"),
            type = "string",
            name = "OwnerInformation",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Replace = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetInput", "Replace"),
            type = "boolean",
            name = "Replace",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.UpdateMaintenanceWindowTargetOutput = schema.new({
    id = id.from(_N, "UpdateMaintenanceWindowTargetResult"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetOutput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        WindowTargetId = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetOutput", "WindowTargetId"),
            type = "string",
            name = "WindowTargetId",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetOutput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        OwnerInformation = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetOutput", "OwnerInformation"),
            type = "string",
            name = "OwnerInformation",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTargetOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateMaintenanceWindowTaskInput = schema.new({
    id = id.from(_N, "UpdateMaintenanceWindowTaskRequest"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WindowTaskId = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "WindowTaskId"),
            type = "string",
            name = "WindowTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Targets = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        ServiceRoleArn = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "ServiceRoleArn"),
            type = "string",
            name = "ServiceRoleArn",
            target_id = prelude.String.id,
        }),
        TaskParameters = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "TaskParameters"),
            type = "map",
            name = "TaskParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MaintenanceWindowTaskParameterValueExpression,
        }),
        TaskInvocationParameters = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "TaskInvocationParameters"),
            type = "structure",
            name = "TaskInvocationParameters",
            target_id = id.from(_N, "MaintenanceWindowTaskInvocationParameters"),
            target = M.MaintenanceWindowTaskInvocationParameters,
        }),
        Priority = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Replace = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "Replace"),
            type = "boolean",
            name = "Replace",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        CutoffBehavior = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "CutoffBehavior"),
            type = "string",
            name = "CutoffBehavior",
            target_id = prelude.String.id,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskInput", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
    },
})

M.UpdateMaintenanceWindowTaskOutput = schema.new({
    id = id.from(_N, "UpdateMaintenanceWindowTaskResult"),
    type = "structure",
    members = {
        WindowId = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "WindowId"),
            type = "string",
            name = "WindowId",
            target_id = prelude.String.id,
        }),
        WindowTaskId = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "WindowTaskId"),
            type = "string",
            name = "WindowTaskId",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        ServiceRoleArn = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "ServiceRoleArn"),
            type = "string",
            name = "ServiceRoleArn",
            target_id = prelude.String.id,
        }),
        TaskParameters = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "TaskParameters"),
            type = "map",
            name = "TaskParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MaintenanceWindowTaskParameterValueExpression,
        }),
        TaskInvocationParameters = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "TaskInvocationParameters"),
            type = "structure",
            name = "TaskInvocationParameters",
            target_id = id.from(_N, "MaintenanceWindowTaskInvocationParameters"),
            target = M.MaintenanceWindowTaskInvocationParameters,
        }),
        Priority = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "MaxConcurrency"),
            type = "string",
            name = "MaxConcurrency",
            target_id = prelude.String.id,
        }),
        MaxErrors = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "MaxErrors"),
            type = "string",
            name = "MaxErrors",
            target_id = prelude.String.id,
        }),
        LoggingInfo = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "LoggingInfo"),
            type = "structure",
            name = "LoggingInfo",
            target_id = id.from(_N, "LoggingInfo"),
            target = M.LoggingInfo,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CutoffBehavior = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "CutoffBehavior"),
            type = "string",
            name = "CutoffBehavior",
            target_id = prelude.String.id,
        }),
        AlarmConfiguration = schema.new({
            id = id.from(_N, "UpdateMaintenanceWindowTaskOutput", "AlarmConfiguration"),
            type = "structure",
            name = "AlarmConfiguration",
            target_id = id.from(_N, "AlarmConfiguration"),
            target = M.AlarmConfiguration,
        }),
    },
})

M.UpdateManagedInstanceRoleInput = schema.new({
    id = id.from(_N, "UpdateManagedInstanceRoleRequest"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "UpdateManagedInstanceRoleInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IamRole = schema.new({
            id = id.from(_N, "UpdateManagedInstanceRoleInput", "IamRole"),
            type = "string",
            name = "IamRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateManagedInstanceRoleOutput = schema.new({
    id = id.from(_N, "UpdateManagedInstanceRoleResult"),
    type = "structure",
})

M.UpdateOpsItemInput = schema.new({
    id = id.from(_N, "UpdateOpsItemRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        OperationalData = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "OperationalData"),
            type = "map",
            name = "OperationalData",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.OpsItemDataValue,
        }),
        OperationalDataToDelete = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "OperationalDataToDelete"),
            type = "list",
            name = "OperationalDataToDelete",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Notifications = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "Notifications"),
            type = "list",
            name = "Notifications",
            target_id = prelude.Document.id,
            list_member = M.OpsItemNotification,
        }),
        Priority = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        RelatedOpsItems = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "RelatedOpsItems"),
            type = "list",
            name = "RelatedOpsItems",
            target_id = prelude.Document.id,
            list_member = M.RelatedOpsItem,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        OpsItemId = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "OpsItemId"),
            type = "string",
            name = "OpsItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Title = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        Category = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        ActualStartTime = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "ActualStartTime"),
            type = "timestamp",
            name = "ActualStartTime",
            target_id = prelude.Timestamp.id,
        }),
        ActualEndTime = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "ActualEndTime"),
            type = "timestamp",
            name = "ActualEndTime",
            target_id = prelude.Timestamp.id,
        }),
        PlannedStartTime = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "PlannedStartTime"),
            type = "timestamp",
            name = "PlannedStartTime",
            target_id = prelude.Timestamp.id,
        }),
        PlannedEndTime = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "PlannedEndTime"),
            type = "timestamp",
            name = "PlannedEndTime",
            target_id = prelude.Timestamp.id,
        }),
        OpsItemArn = schema.new({
            id = id.from(_N, "UpdateOpsItemInput", "OpsItemArn"),
            type = "string",
            name = "OpsItemArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOpsItemOutput = schema.new({
    id = id.from(_N, "UpdateOpsItemResponse"),
    type = "structure",
})

M.OpsMetadataKeyLimitExceededException = schema.new({
    id = id.from(_N, "OpsMetadataKeyLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OpsMetadataKeyLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOpsMetadataInput = schema.new({
    id = id.from(_N, "UpdateOpsMetadataRequest"),
    type = "structure",
    members = {
        OpsMetadataArn = schema.new({
            id = id.from(_N, "UpdateOpsMetadataInput", "OpsMetadataArn"),
            type = "string",
            name = "OpsMetadataArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetadataToUpdate = schema.new({
            id = id.from(_N, "UpdateOpsMetadataInput", "MetadataToUpdate"),
            type = "map",
            name = "MetadataToUpdate",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MetadataValue,
        }),
        KeysToDelete = schema.new({
            id = id.from(_N, "UpdateOpsMetadataInput", "KeysToDelete"),
            type = "list",
            name = "KeysToDelete",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateOpsMetadataOutput = schema.new({
    id = id.from(_N, "UpdateOpsMetadataResult"),
    type = "structure",
    members = {
        OpsMetadataArn = schema.new({
            id = id.from(_N, "UpdateOpsMetadataOutput", "OpsMetadataArn"),
            type = "string",
            name = "OpsMetadataArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePatchBaselineInput = schema.new({
    id = id.from(_N, "UpdatePatchBaselineRequest"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        GlobalFilters = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "GlobalFilters"),
            type = "structure",
            name = "GlobalFilters",
            target_id = id.from(_N, "PatchFilterGroup"),
            target = M.PatchFilterGroup,
        }),
        ApprovalRules = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "ApprovalRules"),
            type = "structure",
            name = "ApprovalRules",
            target_id = id.from(_N, "PatchRuleGroup"),
            target = M.PatchRuleGroup,
        }),
        ApprovedPatches = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "ApprovedPatches"),
            type = "list",
            name = "ApprovedPatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ApprovedPatchesComplianceLevel = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "ApprovedPatchesComplianceLevel"),
            type = "string",
            name = "ApprovedPatchesComplianceLevel",
            target_id = prelude.String.id,
        }),
        ApprovedPatchesEnableNonSecurity = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "ApprovedPatchesEnableNonSecurity"),
            type = "boolean",
            name = "ApprovedPatchesEnableNonSecurity",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        RejectedPatches = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "RejectedPatches"),
            type = "list",
            name = "RejectedPatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RejectedPatchesAction = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "RejectedPatchesAction"),
            type = "string",
            name = "RejectedPatchesAction",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Sources = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.PatchSource,
        }),
        AvailableSecurityUpdatesComplianceStatus = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "AvailableSecurityUpdatesComplianceStatus"),
            type = "string",
            name = "AvailableSecurityUpdatesComplianceStatus",
            target_id = prelude.String.id,
        }),
        Replace = schema.new({
            id = id.from(_N, "UpdatePatchBaselineInput", "Replace"),
            type = "boolean",
            name = "Replace",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.UpdatePatchBaselineOutput = schema.new({
    id = id.from(_N, "UpdatePatchBaselineResult"),
    type = "structure",
    members = {
        BaselineId = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "BaselineId"),
            type = "string",
            name = "BaselineId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        OperatingSystem = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "OperatingSystem"),
            type = "string",
            name = "OperatingSystem",
            target_id = prelude.String.id,
        }),
        GlobalFilters = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "GlobalFilters"),
            type = "structure",
            name = "GlobalFilters",
            target_id = id.from(_N, "PatchFilterGroup"),
            target = M.PatchFilterGroup,
        }),
        ApprovalRules = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "ApprovalRules"),
            type = "structure",
            name = "ApprovalRules",
            target_id = id.from(_N, "PatchRuleGroup"),
            target = M.PatchRuleGroup,
        }),
        ApprovedPatches = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "ApprovedPatches"),
            type = "list",
            name = "ApprovedPatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ApprovedPatchesComplianceLevel = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "ApprovedPatchesComplianceLevel"),
            type = "string",
            name = "ApprovedPatchesComplianceLevel",
            target_id = prelude.String.id,
        }),
        ApprovedPatchesEnableNonSecurity = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "ApprovedPatchesEnableNonSecurity"),
            type = "boolean",
            name = "ApprovedPatchesEnableNonSecurity",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        RejectedPatches = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "RejectedPatches"),
            type = "list",
            name = "RejectedPatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RejectedPatchesAction = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "RejectedPatchesAction"),
            type = "string",
            name = "RejectedPatchesAction",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        ModifiedDate = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "ModifiedDate"),
            type = "timestamp",
            name = "ModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Sources = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "Sources"),
            type = "list",
            name = "Sources",
            target_id = prelude.Document.id,
            list_member = M.PatchSource,
        }),
        AvailableSecurityUpdatesComplianceStatus = schema.new({
            id = id.from(_N, "UpdatePatchBaselineOutput", "AvailableSecurityUpdatesComplianceStatus"),
            type = "string",
            name = "AvailableSecurityUpdatesComplianceStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceDataSyncConflictException = schema.new({
    id = id.from(_N, "ResourceDataSyncConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceDataSyncConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateResourceDataSyncInput = schema.new({
    id = id.from(_N, "UpdateResourceDataSyncRequest"),
    type = "structure",
    members = {
        SyncName = schema.new({
            id = id.from(_N, "UpdateResourceDataSyncInput", "SyncName"),
            type = "string",
            name = "SyncName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncType = schema.new({
            id = id.from(_N, "UpdateResourceDataSyncInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncSource = schema.new({
            id = id.from(_N, "UpdateResourceDataSyncInput", "SyncSource"),
            type = "structure",
            name = "SyncSource",
            target_id = id.from(_N, "ResourceDataSyncSource"),
            target = M.ResourceDataSyncSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateResourceDataSyncOutput = schema.new({
    id = id.from(_N, "UpdateResourceDataSyncResult"),
    type = "structure",
})

M.UpdateServiceSettingInput = schema.new({
    id = id.from(_N, "UpdateServiceSettingRequest"),
    type = "structure",
    members = {
        SettingId = schema.new({
            id = id.from(_N, "UpdateServiceSettingInput", "SettingId"),
            type = "string",
            name = "SettingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SettingValue = schema.new({
            id = id.from(_N, "UpdateServiceSettingInput", "SettingValue"),
            type = "string",
            name = "SettingValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateServiceSettingOutput = schema.new({
    id = id.from(_N, "UpdateServiceSettingResult"),
    type = "structure",
})

M.InventoryAggregator = schema.new({
    id = id.from(_N, "InventoryAggregator"),
    type = "structure",
    members = {
        Expression = schema.new({
            id = id.from(_N, "InventoryAggregator", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
        }),
        Aggregators = schema.new({
            id = id.from(_N, "InventoryAggregator", "Aggregators"),
            type = "list",
            name = "Aggregators",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InventoryAggregator, traits = { [traits.XML_NAME] = { name = "Aggregator" } } }),
        }),
        Groups = schema.new({
            id = id.from(_N, "InventoryAggregator", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InventoryGroup, traits = { [traits.XML_NAME] = { name = "InventoryGroup" } } }),
        }),
    },
})

M.NodeAggregator = schema.new({
    id = id.from(_N, "NodeAggregator"),
    type = "structure",
    members = {
        AggregatorType = schema.new({
            id = id.from(_N, "NodeAggregator", "AggregatorType"),
            type = "string",
            name = "AggregatorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TypeName = schema.new({
            id = id.from(_N, "NodeAggregator", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeName = schema.new({
            id = id.from(_N, "NodeAggregator", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Aggregators = schema.new({
            id = id.from(_N, "NodeAggregator", "Aggregators"),
            type = "list",
            name = "Aggregators",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NodeAggregator, traits = { [traits.XML_NAME] = { name = "NodeAggregator" } } }),
        }),
    },
})

M.OpsAggregator = schema.new({
    id = id.from(_N, "OpsAggregator"),
    type = "structure",
    members = {
        AggregatorType = schema.new({
            id = id.from(_N, "OpsAggregator", "AggregatorType"),
            type = "string",
            name = "AggregatorType",
            target_id = prelude.String.id,
        }),
        TypeName = schema.new({
            id = id.from(_N, "OpsAggregator", "TypeName"),
            type = "string",
            name = "TypeName",
            target_id = prelude.String.id,
        }),
        AttributeName = schema.new({
            id = id.from(_N, "OpsAggregator", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "OpsAggregator", "Values"),
            type = "map",
            name = "Values",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "OpsAggregator", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OpsFilter, traits = { [traits.XML_NAME] = { name = "OpsFilter" } } }),
        }),
        Aggregators = schema.new({
            id = id.from(_N, "OpsAggregator", "Aggregators"),
            type = "list",
            name = "Aggregators",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OpsAggregator, traits = { [traits.XML_NAME] = { name = "Aggregator" } } }),
        }),
    },
})

M.GetInventoryInput = schema.new({
    id = id.from(_N, "GetInventoryRequest"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "GetInventoryInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InventoryFilter, traits = { [traits.XML_NAME] = { name = "InventoryFilter" } } }),
        }),
        Aggregators = schema.new({
            id = id.from(_N, "GetInventoryInput", "Aggregators"),
            type = "list",
            name = "Aggregators",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InventoryAggregator, traits = { [traits.XML_NAME] = { name = "Aggregator" } } }),
        }),
        ResultAttributes = schema.new({
            id = id.from(_N, "GetInventoryInput", "ResultAttributes"),
            type = "list",
            name = "ResultAttributes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ResultAttribute, traits = { [traits.XML_NAME] = { name = "ResultAttribute" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetInventoryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetInventoryInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetOpsSummaryInput = schema.new({
    id = id.from(_N, "GetOpsSummaryRequest"),
    type = "structure",
    members = {
        SyncName = schema.new({
            id = id.from(_N, "GetOpsSummaryInput", "SyncName"),
            type = "string",
            name = "SyncName",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "GetOpsSummaryInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OpsFilter, traits = { [traits.XML_NAME] = { name = "OpsFilter" } } }),
        }),
        Aggregators = schema.new({
            id = id.from(_N, "GetOpsSummaryInput", "Aggregators"),
            type = "list",
            name = "Aggregators",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OpsAggregator, traits = { [traits.XML_NAME] = { name = "Aggregator" } } }),
        }),
        ResultAttributes = schema.new({
            id = id.from(_N, "GetOpsSummaryInput", "ResultAttributes"),
            type = "list",
            name = "ResultAttributes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OpsResultAttribute, traits = { [traits.XML_NAME] = { name = "OpsResultAttribute" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetOpsSummaryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetOpsSummaryInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListNodesSummaryInput = schema.new({
    id = id.from(_N, "ListNodesSummaryRequest"),
    type = "structure",
    members = {
        SyncName = schema.new({
            id = id.from(_N, "ListNodesSummaryInput", "SyncName"),
            type = "string",
            name = "SyncName",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListNodesSummaryInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NodeFilter, traits = { [traits.XML_NAME] = { name = "NodeFilter" } } }),
        }),
        Aggregators = schema.new({
            id = id.from(_N, "ListNodesSummaryInput", "Aggregators"),
            type = "list",
            name = "Aggregators",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NodeAggregator, traits = { [traits.XML_NAME] = { name = "NodeAggregator" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNodesSummaryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListNodesSummaryInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
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
