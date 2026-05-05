local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.shield"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessDeniedForDependencyException = schema.new({
    id = id.from(_N, "AccessDeniedForDependencyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedForDependencyException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BlockAction = schema.new({
    id = id.from(_N, "BlockAction"),
    type = "structure",
})

M.CountAction = schema.new({
    id = id.from(_N, "CountAction"),
    type = "structure",
})

M.ResponseAction = schema.new({
    id = id.from(_N, "ResponseAction"),
    type = "structure",
    members = {
        Block = schema.new({
            id = id.from(_N, "ResponseAction", "Block"),
            type = "structure",
            name = "Block",
            target_id = id.from(_N, "BlockAction"),
            target = M.BlockAction,
        }),
        Count = schema.new({
            id = id.from(_N, "ResponseAction", "Count"),
            type = "structure",
            name = "Count",
            target_id = id.from(_N, "CountAction"),
            target = M.CountAction,
        }),
    },
})

M.ApplicationLayerAutomaticResponseConfiguration = schema.new({
    id = id.from(_N, "ApplicationLayerAutomaticResponseConfiguration"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "ApplicationLayerAutomaticResponseConfiguration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "ApplicationLayerAutomaticResponseConfiguration", "Action"),
            type = "structure",
            name = "Action",
            target_id = id.from(_N, "ResponseAction"),
            target = M.ResponseAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateDRTLogBucketInput = schema.new({
    id = id.from(_N, "AssociateDRTLogBucketInput"),
    type = "structure",
    members = {
        LogBucket = schema.new({
            id = id.from(_N, "AssociateDRTLogBucketInput", "LogBucket"),
            type = "string",
            name = "LogBucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateDRTLogBucketOutput = schema.new({
    id = id.from(_N, "AssociateDRTLogBucketOutput"),
    type = "structure",
})

M.InternalErrorException = schema.new({
    id = id.from(_N, "InternalErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalErrorException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOperationException = schema.new({
    id = id.from(_N, "InvalidOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidOperationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidParameterException = schema.new({
    id = id.from(_N, "InvalidParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidParameterException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "InvalidParameterException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        fields = schema.new({
            id = id.from(_N, "InvalidParameterException", "fields"),
            type = "list",
            name = "fields",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.LimitsExceededException = schema.new({
    id = id.from(_N, "LimitsExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitsExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "LimitsExceededException", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "LimitsExceededException", "Limit"),
            type = "long",
            name = "Limit",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.NoAssociatedRoleException = schema.new({
    id = id.from(_N, "NoAssociatedRoleException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoAssociatedRoleException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.OptimisticLockException = schema.new({
    id = id.from(_N, "OptimisticLockException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OptimisticLockException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateDRTRoleInput = schema.new({
    id = id.from(_N, "AssociateDRTRoleInput"),
    type = "structure",
    members = {
        RoleArn = schema.new({
            id = id.from(_N, "AssociateDRTRoleInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateDRTRoleOutput = schema.new({
    id = id.from(_N, "AssociateDRTRoleOutput"),
    type = "structure",
})

M.AssociateHealthCheckInput = schema.new({
    id = id.from(_N, "AssociateHealthCheckInput"),
    type = "structure",
    members = {
        ProtectionId = schema.new({
            id = id.from(_N, "AssociateHealthCheckInput", "ProtectionId"),
            type = "string",
            name = "ProtectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HealthCheckArn = schema.new({
            id = id.from(_N, "AssociateHealthCheckInput", "HealthCheckArn"),
            type = "string",
            name = "HealthCheckArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateHealthCheckOutput = schema.new({
    id = id.from(_N, "AssociateHealthCheckOutput"),
    type = "structure",
})

M.InvalidResourceException = schema.new({
    id = id.from(_N, "InvalidResourceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidResourceException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EmergencyContact = schema.new({
    id = id.from(_N, "EmergencyContact"),
    type = "structure",
    members = {
        EmailAddress = schema.new({
            id = id.from(_N, "EmergencyContact", "EmailAddress"),
            type = "string",
            name = "EmailAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "EmergencyContact", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
        }),
        ContactNotes = schema.new({
            id = id.from(_N, "EmergencyContact", "ContactNotes"),
            type = "string",
            name = "ContactNotes",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateProactiveEngagementDetailsInput = schema.new({
    id = id.from(_N, "AssociateProactiveEngagementDetailsInput"),
    type = "structure",
    members = {
        EmergencyContactList = schema.new({
            id = id.from(_N, "AssociateProactiveEngagementDetailsInput", "EmergencyContactList"),
            type = "list",
            name = "EmergencyContactList",
            target_id = prelude.Document.id,
            list_member = M.EmergencyContact,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateProactiveEngagementDetailsOutput = schema.new({
    id = id.from(_N, "AssociateProactiveEngagementDetailsOutput"),
    type = "structure",
})

M.SummarizedCounter = schema.new({
    id = id.from(_N, "SummarizedCounter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "SummarizedCounter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Max = schema.new({
            id = id.from(_N, "SummarizedCounter", "Max"),
            type = "double",
            name = "Max",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Average = schema.new({
            id = id.from(_N, "SummarizedCounter", "Average"),
            type = "double",
            name = "Average",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Sum = schema.new({
            id = id.from(_N, "SummarizedCounter", "Sum"),
            type = "double",
            name = "Sum",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        N = schema.new({
            id = id.from(_N, "SummarizedCounter", "N"),
            type = "integer",
            name = "N",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "SummarizedCounter", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.Contributor = schema.new({
    id = id.from(_N, "Contributor"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Contributor", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Contributor", "Value"),
            type = "long",
            name = "Value",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AttackProperty = schema.new({
    id = id.from(_N, "AttackProperty"),
    type = "structure",
    members = {
        AttackLayer = schema.new({
            id = id.from(_N, "AttackProperty", "AttackLayer"),
            type = "string",
            name = "AttackLayer",
            target_id = prelude.String.id,
        }),
        AttackPropertyIdentifier = schema.new({
            id = id.from(_N, "AttackProperty", "AttackPropertyIdentifier"),
            type = "string",
            name = "AttackPropertyIdentifier",
            target_id = prelude.String.id,
        }),
        TopContributors = schema.new({
            id = id.from(_N, "AttackProperty", "TopContributors"),
            type = "list",
            name = "TopContributors",
            target_id = prelude.Document.id,
            list_member = M.Contributor,
        }),
        Unit = schema.new({
            id = id.from(_N, "AttackProperty", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        Total = schema.new({
            id = id.from(_N, "AttackProperty", "Total"),
            type = "long",
            name = "Total",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.Mitigation = schema.new({
    id = id.from(_N, "Mitigation"),
    type = "structure",
    members = {
        MitigationName = schema.new({
            id = id.from(_N, "Mitigation", "MitigationName"),
            type = "string",
            name = "MitigationName",
            target_id = prelude.String.id,
        }),
    },
})

M.SummarizedAttackVector = schema.new({
    id = id.from(_N, "SummarizedAttackVector"),
    type = "structure",
    members = {
        VectorType = schema.new({
            id = id.from(_N, "SummarizedAttackVector", "VectorType"),
            type = "string",
            name = "VectorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VectorCounters = schema.new({
            id = id.from(_N, "SummarizedAttackVector", "VectorCounters"),
            type = "list",
            name = "VectorCounters",
            target_id = prelude.Document.id,
            list_member = M.SummarizedCounter,
        }),
    },
})

M.SubResourceSummary = schema.new({
    id = id.from(_N, "SubResourceSummary"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "SubResourceSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "SubResourceSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        AttackVectors = schema.new({
            id = id.from(_N, "SubResourceSummary", "AttackVectors"),
            type = "list",
            name = "AttackVectors",
            target_id = prelude.Document.id,
            list_member = M.SummarizedAttackVector,
        }),
        Counters = schema.new({
            id = id.from(_N, "SubResourceSummary", "Counters"),
            type = "list",
            name = "Counters",
            target_id = prelude.Document.id,
            list_member = M.SummarizedCounter,
        }),
    },
})

M.AttackDetail = schema.new({
    id = id.from(_N, "AttackDetail"),
    type = "structure",
    members = {
        AttackId = schema.new({
            id = id.from(_N, "AttackDetail", "AttackId"),
            type = "string",
            name = "AttackId",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "AttackDetail", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        SubResources = schema.new({
            id = id.from(_N, "AttackDetail", "SubResources"),
            type = "list",
            name = "SubResources",
            target_id = prelude.Document.id,
            list_member = M.SubResourceSummary,
        }),
        StartTime = schema.new({
            id = id.from(_N, "AttackDetail", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "AttackDetail", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        AttackCounters = schema.new({
            id = id.from(_N, "AttackDetail", "AttackCounters"),
            type = "list",
            name = "AttackCounters",
            target_id = prelude.Document.id,
            list_member = M.SummarizedCounter,
        }),
        AttackProperties = schema.new({
            id = id.from(_N, "AttackDetail", "AttackProperties"),
            type = "list",
            name = "AttackProperties",
            target_id = prelude.Document.id,
            list_member = M.AttackProperty,
        }),
        Mitigations = schema.new({
            id = id.from(_N, "AttackDetail", "Mitigations"),
            type = "list",
            name = "Mitigations",
            target_id = prelude.Document.id,
            list_member = M.Mitigation,
        }),
    },
})

M.AttackVolumeStatistics = schema.new({
    id = id.from(_N, "AttackVolumeStatistics"),
    type = "structure",
    members = {
        Max = schema.new({
            id = id.from(_N, "AttackVolumeStatistics", "Max"),
            type = "double",
            name = "Max",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AttackVolume = schema.new({
    id = id.from(_N, "AttackVolume"),
    type = "structure",
    members = {
        BitsPerSecond = schema.new({
            id = id.from(_N, "AttackVolume", "BitsPerSecond"),
            type = "structure",
            name = "BitsPerSecond",
            target_id = id.from(_N, "AttackVolumeStatistics"),
            target = M.AttackVolumeStatistics,
        }),
        PacketsPerSecond = schema.new({
            id = id.from(_N, "AttackVolume", "PacketsPerSecond"),
            type = "structure",
            name = "PacketsPerSecond",
            target_id = id.from(_N, "AttackVolumeStatistics"),
            target = M.AttackVolumeStatistics,
        }),
        RequestsPerSecond = schema.new({
            id = id.from(_N, "AttackVolume", "RequestsPerSecond"),
            type = "structure",
            name = "RequestsPerSecond",
            target_id = id.from(_N, "AttackVolumeStatistics"),
            target = M.AttackVolumeStatistics,
        }),
    },
})

M.AttackStatisticsDataItem = schema.new({
    id = id.from(_N, "AttackStatisticsDataItem"),
    type = "structure",
    members = {
        AttackVolume = schema.new({
            id = id.from(_N, "AttackStatisticsDataItem", "AttackVolume"),
            type = "structure",
            name = "AttackVolume",
            target_id = id.from(_N, "AttackVolume"),
            target = M.AttackVolume,
        }),
        AttackCount = schema.new({
            id = id.from(_N, "AttackStatisticsDataItem", "AttackCount"),
            type = "long",
            name = "AttackCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AttackVectorDescription = schema.new({
    id = id.from(_N, "AttackVectorDescription"),
    type = "structure",
    members = {
        VectorType = schema.new({
            id = id.from(_N, "AttackVectorDescription", "VectorType"),
            type = "string",
            name = "VectorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttackSummary = schema.new({
    id = id.from(_N, "AttackSummary"),
    type = "structure",
    members = {
        AttackId = schema.new({
            id = id.from(_N, "AttackSummary", "AttackId"),
            type = "string",
            name = "AttackId",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "AttackSummary", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "AttackSummary", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "AttackSummary", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        AttackVectors = schema.new({
            id = id.from(_N, "AttackSummary", "AttackVectors"),
            type = "list",
            name = "AttackVectors",
            target_id = prelude.Document.id,
            list_member = M.AttackVectorDescription,
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
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateProtectionInput = schema.new({
    id = id.from(_N, "CreateProtectionInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateProtectionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "CreateProtectionInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProtectionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateProtectionOutput = schema.new({
    id = id.from(_N, "CreateProtectionOutput"),
    type = "structure",
    members = {
        ProtectionId = schema.new({
            id = id.from(_N, "CreateProtectionOutput", "ProtectionId"),
            type = "string",
            name = "ProtectionId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceAlreadyExistsException = schema.new({
    id = id.from(_N, "ResourceAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateProtectionGroupInput = schema.new({
    id = id.from(_N, "CreateProtectionGroupInput"),
    type = "structure",
    members = {
        ProtectionGroupId = schema.new({
            id = id.from(_N, "CreateProtectionGroupInput", "ProtectionGroupId"),
            type = "string",
            name = "ProtectionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Aggregation = schema.new({
            id = id.from(_N, "CreateProtectionGroupInput", "Aggregation"),
            type = "string",
            name = "Aggregation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Pattern = schema.new({
            id = id.from(_N, "CreateProtectionGroupInput", "Pattern"),
            type = "string",
            name = "Pattern",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "CreateProtectionGroupInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Members = schema.new({
            id = id.from(_N, "CreateProtectionGroupInput", "Members"),
            type = "list",
            name = "Members",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProtectionGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateProtectionGroupOutput = schema.new({
    id = id.from(_N, "CreateProtectionGroupOutput"),
    type = "structure",
})

M.CreateSubscriptionInput = schema.new({
    id = id.from(_N, "CreateSubscriptionInput"),
    type = "structure",
})

M.CreateSubscriptionOutput = schema.new({
    id = id.from(_N, "CreateSubscriptionOutput"),
    type = "structure",
})

M.DeleteProtectionInput = schema.new({
    id = id.from(_N, "DeleteProtectionInput"),
    type = "structure",
    members = {
        ProtectionId = schema.new({
            id = id.from(_N, "DeleteProtectionInput", "ProtectionId"),
            type = "string",
            name = "ProtectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProtectionOutput = schema.new({
    id = id.from(_N, "DeleteProtectionOutput"),
    type = "structure",
})

M.DeleteProtectionGroupInput = schema.new({
    id = id.from(_N, "DeleteProtectionGroupInput"),
    type = "structure",
    members = {
        ProtectionGroupId = schema.new({
            id = id.from(_N, "DeleteProtectionGroupInput", "ProtectionGroupId"),
            type = "string",
            name = "ProtectionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProtectionGroupOutput = schema.new({
    id = id.from(_N, "DeleteProtectionGroupOutput"),
    type = "structure",
})

M.DeleteSubscriptionInput = schema.new({
    id = id.from(_N, "DeleteSubscriptionInput"),
    type = "structure",
})

M.DeleteSubscriptionOutput = schema.new({
    id = id.from(_N, "DeleteSubscriptionOutput"),
    type = "structure",
})

M.LockedSubscriptionException = schema.new({
    id = id.from(_N, "LockedSubscriptionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LockedSubscriptionException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAttackInput = schema.new({
    id = id.from(_N, "DescribeAttackInput"),
    type = "structure",
    members = {
        AttackId = schema.new({
            id = id.from(_N, "DescribeAttackInput", "AttackId"),
            type = "string",
            name = "AttackId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAttackOutput = schema.new({
    id = id.from(_N, "DescribeAttackOutput"),
    type = "structure",
    members = {
        Attack = schema.new({
            id = id.from(_N, "DescribeAttackOutput", "Attack"),
            type = "structure",
            name = "Attack",
            target_id = id.from(_N, "AttackDetail"),
            target = M.AttackDetail,
        }),
    },
})

M.DescribeAttackStatisticsInput = schema.new({
    id = id.from(_N, "DescribeAttackStatisticsInput"),
    type = "structure",
})

M.TimeRange = schema.new({
    id = id.from(_N, "TimeRange"),
    type = "structure",
    members = {
        FromInclusive = schema.new({
            id = id.from(_N, "TimeRange", "FromInclusive"),
            type = "timestamp",
            name = "FromInclusive",
            target_id = prelude.Timestamp.id,
        }),
        ToExclusive = schema.new({
            id = id.from(_N, "TimeRange", "ToExclusive"),
            type = "timestamp",
            name = "ToExclusive",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeAttackStatisticsOutput = schema.new({
    id = id.from(_N, "DescribeAttackStatisticsOutput"),
    type = "structure",
    members = {
        TimeRange = schema.new({
            id = id.from(_N, "DescribeAttackStatisticsOutput", "TimeRange"),
            type = "structure",
            name = "TimeRange",
            target_id = id.from(_N, "TimeRange"),
            target = M.TimeRange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataItems = schema.new({
            id = id.from(_N, "DescribeAttackStatisticsOutput", "DataItems"),
            type = "list",
            name = "DataItems",
            target_id = prelude.Document.id,
            list_member = M.AttackStatisticsDataItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeDRTAccessInput = schema.new({
    id = id.from(_N, "DescribeDRTAccessInput"),
    type = "structure",
})

M.DescribeDRTAccessOutput = schema.new({
    id = id.from(_N, "DescribeDRTAccessOutput"),
    type = "structure",
    members = {
        RoleArn = schema.new({
            id = id.from(_N, "DescribeDRTAccessOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        LogBucketList = schema.new({
            id = id.from(_N, "DescribeDRTAccessOutput", "LogBucketList"),
            type = "list",
            name = "LogBucketList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeEmergencyContactSettingsInput = schema.new({
    id = id.from(_N, "DescribeEmergencyContactSettingsInput"),
    type = "structure",
})

M.DescribeEmergencyContactSettingsOutput = schema.new({
    id = id.from(_N, "DescribeEmergencyContactSettingsOutput"),
    type = "structure",
    members = {
        EmergencyContactList = schema.new({
            id = id.from(_N, "DescribeEmergencyContactSettingsOutput", "EmergencyContactList"),
            type = "list",
            name = "EmergencyContactList",
            target_id = prelude.Document.id,
            list_member = M.EmergencyContact,
        }),
    },
})

M.DescribeProtectionInput = schema.new({
    id = id.from(_N, "DescribeProtectionInput"),
    type = "structure",
    members = {
        ProtectionId = schema.new({
            id = id.from(_N, "DescribeProtectionInput", "ProtectionId"),
            type = "string",
            name = "ProtectionId",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "DescribeProtectionInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Protection = schema.new({
    id = id.from(_N, "Protection"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Protection", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Protection", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Protection", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        HealthCheckIds = schema.new({
            id = id.from(_N, "Protection", "HealthCheckIds"),
            type = "list",
            name = "HealthCheckIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ProtectionArn = schema.new({
            id = id.from(_N, "Protection", "ProtectionArn"),
            type = "string",
            name = "ProtectionArn",
            target_id = prelude.String.id,
        }),
        ApplicationLayerAutomaticResponseConfiguration = schema.new({
            id = id.from(_N, "Protection", "ApplicationLayerAutomaticResponseConfiguration"),
            type = "structure",
            name = "ApplicationLayerAutomaticResponseConfiguration",
            target_id = id.from(_N, "ApplicationLayerAutomaticResponseConfiguration"),
            target = M.ApplicationLayerAutomaticResponseConfiguration,
        }),
    },
})

M.DescribeProtectionOutput = schema.new({
    id = id.from(_N, "DescribeProtectionOutput"),
    type = "structure",
    members = {
        Protection = schema.new({
            id = id.from(_N, "DescribeProtectionOutput", "Protection"),
            type = "structure",
            name = "Protection",
            target_id = id.from(_N, "Protection"),
            target = M.Protection,
        }),
    },
})

M.DescribeProtectionGroupInput = schema.new({
    id = id.from(_N, "DescribeProtectionGroupInput"),
    type = "structure",
    members = {
        ProtectionGroupId = schema.new({
            id = id.from(_N, "DescribeProtectionGroupInput", "ProtectionGroupId"),
            type = "string",
            name = "ProtectionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProtectionGroup = schema.new({
    id = id.from(_N, "ProtectionGroup"),
    type = "structure",
    members = {
        ProtectionGroupId = schema.new({
            id = id.from(_N, "ProtectionGroup", "ProtectionGroupId"),
            type = "string",
            name = "ProtectionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Aggregation = schema.new({
            id = id.from(_N, "ProtectionGroup", "Aggregation"),
            type = "string",
            name = "Aggregation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Pattern = schema.new({
            id = id.from(_N, "ProtectionGroup", "Pattern"),
            type = "string",
            name = "Pattern",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ProtectionGroup", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Members = schema.new({
            id = id.from(_N, "ProtectionGroup", "Members"),
            type = "list",
            name = "Members",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectionGroupArn = schema.new({
            id = id.from(_N, "ProtectionGroup", "ProtectionGroupArn"),
            type = "string",
            name = "ProtectionGroupArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeProtectionGroupOutput = schema.new({
    id = id.from(_N, "DescribeProtectionGroupOutput"),
    type = "structure",
    members = {
        ProtectionGroup = schema.new({
            id = id.from(_N, "DescribeProtectionGroupOutput", "ProtectionGroup"),
            type = "structure",
            name = "ProtectionGroup",
            target_id = id.from(_N, "ProtectionGroup"),
            target = M.ProtectionGroup,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeSubscriptionInput = schema.new({
    id = id.from(_N, "DescribeSubscriptionInput"),
    type = "structure",
})

M.Limit = schema.new({
    id = id.from(_N, "Limit"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "Limit", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Max = schema.new({
            id = id.from(_N, "Limit", "Max"),
            type = "long",
            name = "Max",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ProtectionGroupArbitraryPatternLimits = schema.new({
    id = id.from(_N, "ProtectionGroupArbitraryPatternLimits"),
    type = "structure",
    members = {
        MaxMembers = schema.new({
            id = id.from(_N, "ProtectionGroupArbitraryPatternLimits", "MaxMembers"),
            type = "long",
            name = "MaxMembers",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ProtectionGroupPatternTypeLimits = schema.new({
    id = id.from(_N, "ProtectionGroupPatternTypeLimits"),
    type = "structure",
    members = {
        ArbitraryPatternLimits = schema.new({
            id = id.from(_N, "ProtectionGroupPatternTypeLimits", "ArbitraryPatternLimits"),
            type = "structure",
            name = "ArbitraryPatternLimits",
            target_id = id.from(_N, "ProtectionGroupArbitraryPatternLimits"),
            target = M.ProtectionGroupArbitraryPatternLimits,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProtectionGroupLimits = schema.new({
    id = id.from(_N, "ProtectionGroupLimits"),
    type = "structure",
    members = {
        MaxProtectionGroups = schema.new({
            id = id.from(_N, "ProtectionGroupLimits", "MaxProtectionGroups"),
            type = "long",
            name = "MaxProtectionGroups",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PatternTypeLimits = schema.new({
            id = id.from(_N, "ProtectionGroupLimits", "PatternTypeLimits"),
            type = "structure",
            name = "PatternTypeLimits",
            target_id = id.from(_N, "ProtectionGroupPatternTypeLimits"),
            target = M.ProtectionGroupPatternTypeLimits,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProtectionLimits = schema.new({
    id = id.from(_N, "ProtectionLimits"),
    type = "structure",
    members = {
        ProtectedResourceTypeLimits = schema.new({
            id = id.from(_N, "ProtectionLimits", "ProtectedResourceTypeLimits"),
            type = "list",
            name = "ProtectedResourceTypeLimits",
            target_id = prelude.Document.id,
            list_member = M.Limit,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SubscriptionLimits = schema.new({
    id = id.from(_N, "SubscriptionLimits"),
    type = "structure",
    members = {
        ProtectionLimits = schema.new({
            id = id.from(_N, "SubscriptionLimits", "ProtectionLimits"),
            type = "structure",
            name = "ProtectionLimits",
            target_id = id.from(_N, "ProtectionLimits"),
            target = M.ProtectionLimits,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectionGroupLimits = schema.new({
            id = id.from(_N, "SubscriptionLimits", "ProtectionGroupLimits"),
            type = "structure",
            name = "ProtectionGroupLimits",
            target_id = id.from(_N, "ProtectionGroupLimits"),
            target = M.ProtectionGroupLimits,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Subscription = schema.new({
    id = id.from(_N, "Subscription"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "Subscription", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "Subscription", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        TimeCommitmentInSeconds = schema.new({
            id = id.from(_N, "Subscription", "TimeCommitmentInSeconds"),
            type = "long",
            name = "TimeCommitmentInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AutoRenew = schema.new({
            id = id.from(_N, "Subscription", "AutoRenew"),
            type = "string",
            name = "AutoRenew",
            target_id = prelude.String.id,
        }),
        Limits = schema.new({
            id = id.from(_N, "Subscription", "Limits"),
            type = "list",
            name = "Limits",
            target_id = prelude.Document.id,
            list_member = M.Limit,
        }),
        ProactiveEngagementStatus = schema.new({
            id = id.from(_N, "Subscription", "ProactiveEngagementStatus"),
            type = "string",
            name = "ProactiveEngagementStatus",
            target_id = prelude.String.id,
        }),
        SubscriptionLimits = schema.new({
            id = id.from(_N, "Subscription", "SubscriptionLimits"),
            type = "structure",
            name = "SubscriptionLimits",
            target_id = id.from(_N, "SubscriptionLimits"),
            target = M.SubscriptionLimits,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubscriptionArn = schema.new({
            id = id.from(_N, "Subscription", "SubscriptionArn"),
            type = "string",
            name = "SubscriptionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSubscriptionOutput = schema.new({
    id = id.from(_N, "DescribeSubscriptionOutput"),
    type = "structure",
    members = {
        Subscription = schema.new({
            id = id.from(_N, "DescribeSubscriptionOutput", "Subscription"),
            type = "structure",
            name = "Subscription",
            target_id = id.from(_N, "Subscription"),
            target = M.Subscription,
        }),
    },
})

M.DisableApplicationLayerAutomaticResponseInput = schema.new({
    id = id.from(_N, "DisableApplicationLayerAutomaticResponseInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DisableApplicationLayerAutomaticResponseInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableApplicationLayerAutomaticResponseOutput = schema.new({
    id = id.from(_N, "DisableApplicationLayerAutomaticResponseOutput"),
    type = "structure",
})

M.DisableProactiveEngagementInput = schema.new({
    id = id.from(_N, "DisableProactiveEngagementInput"),
    type = "structure",
})

M.DisableProactiveEngagementOutput = schema.new({
    id = id.from(_N, "DisableProactiveEngagementOutput"),
    type = "structure",
})

M.DisassociateDRTLogBucketInput = schema.new({
    id = id.from(_N, "DisassociateDRTLogBucketInput"),
    type = "structure",
    members = {
        LogBucket = schema.new({
            id = id.from(_N, "DisassociateDRTLogBucketInput", "LogBucket"),
            type = "string",
            name = "LogBucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateDRTLogBucketOutput = schema.new({
    id = id.from(_N, "DisassociateDRTLogBucketOutput"),
    type = "structure",
})

M.DisassociateDRTRoleInput = schema.new({
    id = id.from(_N, "DisassociateDRTRoleInput"),
    type = "structure",
})

M.DisassociateDRTRoleOutput = schema.new({
    id = id.from(_N, "DisassociateDRTRoleOutput"),
    type = "structure",
})

M.DisassociateHealthCheckInput = schema.new({
    id = id.from(_N, "DisassociateHealthCheckInput"),
    type = "structure",
    members = {
        ProtectionId = schema.new({
            id = id.from(_N, "DisassociateHealthCheckInput", "ProtectionId"),
            type = "string",
            name = "ProtectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HealthCheckArn = schema.new({
            id = id.from(_N, "DisassociateHealthCheckInput", "HealthCheckArn"),
            type = "string",
            name = "HealthCheckArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateHealthCheckOutput = schema.new({
    id = id.from(_N, "DisassociateHealthCheckOutput"),
    type = "structure",
})

M.EnableApplicationLayerAutomaticResponseInput = schema.new({
    id = id.from(_N, "EnableApplicationLayerAutomaticResponseInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "EnableApplicationLayerAutomaticResponseInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "EnableApplicationLayerAutomaticResponseInput", "Action"),
            type = "structure",
            name = "Action",
            target_id = id.from(_N, "ResponseAction"),
            target = M.ResponseAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableApplicationLayerAutomaticResponseOutput = schema.new({
    id = id.from(_N, "EnableApplicationLayerAutomaticResponseOutput"),
    type = "structure",
})

M.EnableProactiveEngagementInput = schema.new({
    id = id.from(_N, "EnableProactiveEngagementInput"),
    type = "structure",
})

M.EnableProactiveEngagementOutput = schema.new({
    id = id.from(_N, "EnableProactiveEngagementOutput"),
    type = "structure",
})

M.GetSubscriptionStateInput = schema.new({
    id = id.from(_N, "GetSubscriptionStateInput"),
    type = "structure",
})

M.GetSubscriptionStateOutput = schema.new({
    id = id.from(_N, "GetSubscriptionStateOutput"),
    type = "structure",
    members = {
        SubscriptionState = schema.new({
            id = id.from(_N, "GetSubscriptionStateOutput", "SubscriptionState"),
            type = "string",
            name = "SubscriptionState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAttacksInput = schema.new({
    id = id.from(_N, "ListAttacksInput"),
    type = "structure",
    members = {
        ResourceArns = schema.new({
            id = id.from(_N, "ListAttacksInput", "ResourceArns"),
            type = "list",
            name = "ResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ListAttacksInput", "StartTime"),
            type = "structure",
            name = "StartTime",
            target_id = id.from(_N, "TimeRange"),
            target = M.TimeRange,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ListAttacksInput", "EndTime"),
            type = "structure",
            name = "EndTime",
            target_id = id.from(_N, "TimeRange"),
            target = M.TimeRange,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAttacksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAttacksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAttacksOutput = schema.new({
    id = id.from(_N, "ListAttacksOutput"),
    type = "structure",
    members = {
        AttackSummaries = schema.new({
            id = id.from(_N, "ListAttacksOutput", "AttackSummaries"),
            type = "list",
            name = "AttackSummaries",
            target_id = prelude.Document.id,
            list_member = M.AttackSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAttacksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPaginationTokenException = schema.new({
    id = id.from(_N, "InvalidPaginationTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidPaginationTokenException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InclusionProtectionGroupFilters = schema.new({
    id = id.from(_N, "InclusionProtectionGroupFilters"),
    type = "structure",
    members = {
        ProtectionGroupIds = schema.new({
            id = id.from(_N, "InclusionProtectionGroupFilters", "ProtectionGroupIds"),
            type = "list",
            name = "ProtectionGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Patterns = schema.new({
            id = id.from(_N, "InclusionProtectionGroupFilters", "Patterns"),
            type = "list",
            name = "Patterns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ResourceTypes = schema.new({
            id = id.from(_N, "InclusionProtectionGroupFilters", "ResourceTypes"),
            type = "list",
            name = "ResourceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Aggregations = schema.new({
            id = id.from(_N, "InclusionProtectionGroupFilters", "Aggregations"),
            type = "list",
            name = "Aggregations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListProtectionGroupsInput = schema.new({
    id = id.from(_N, "ListProtectionGroupsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListProtectionGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListProtectionGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        InclusionFilters = schema.new({
            id = id.from(_N, "ListProtectionGroupsInput", "InclusionFilters"),
            type = "structure",
            name = "InclusionFilters",
            target_id = id.from(_N, "InclusionProtectionGroupFilters"),
            target = M.InclusionProtectionGroupFilters,
        }),
    },
})

M.ListProtectionGroupsOutput = schema.new({
    id = id.from(_N, "ListProtectionGroupsOutput"),
    type = "structure",
    members = {
        ProtectionGroups = schema.new({
            id = id.from(_N, "ListProtectionGroupsOutput", "ProtectionGroups"),
            type = "list",
            name = "ProtectionGroups",
            target_id = prelude.Document.id,
            list_member = M.ProtectionGroup,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListProtectionGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InclusionProtectionFilters = schema.new({
    id = id.from(_N, "InclusionProtectionFilters"),
    type = "structure",
    members = {
        ResourceArns = schema.new({
            id = id.from(_N, "InclusionProtectionFilters", "ResourceArns"),
            type = "list",
            name = "ResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ProtectionNames = schema.new({
            id = id.from(_N, "InclusionProtectionFilters", "ProtectionNames"),
            type = "list",
            name = "ProtectionNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ResourceTypes = schema.new({
            id = id.from(_N, "InclusionProtectionFilters", "ResourceTypes"),
            type = "list",
            name = "ResourceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListProtectionsInput = schema.new({
    id = id.from(_N, "ListProtectionsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListProtectionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListProtectionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        InclusionFilters = schema.new({
            id = id.from(_N, "ListProtectionsInput", "InclusionFilters"),
            type = "structure",
            name = "InclusionFilters",
            target_id = id.from(_N, "InclusionProtectionFilters"),
            target = M.InclusionProtectionFilters,
        }),
    },
})

M.ListProtectionsOutput = schema.new({
    id = id.from(_N, "ListProtectionsOutput"),
    type = "structure",
    members = {
        Protections = schema.new({
            id = id.from(_N, "ListProtectionsOutput", "Protections"),
            type = "list",
            name = "Protections",
            target_id = prelude.Document.id,
            list_member = M.Protection,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListProtectionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourcesInProtectionGroupInput = schema.new({
    id = id.from(_N, "ListResourcesInProtectionGroupInput"),
    type = "structure",
    members = {
        ProtectionGroupId = schema.new({
            id = id.from(_N, "ListResourcesInProtectionGroupInput", "ProtectionGroupId"),
            type = "string",
            name = "ProtectionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourcesInProtectionGroupInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResourcesInProtectionGroupInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListResourcesInProtectionGroupOutput = schema.new({
    id = id.from(_N, "ListResourcesInProtectionGroupOutput"),
    type = "structure",
    members = {
        ResourceArns = schema.new({
            id = id.from(_N, "ListResourcesInProtectionGroupOutput", "ResourceArns"),
            type = "list",
            name = "ResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourcesInProtectionGroupOutput", "NextToken"),
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
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
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

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateApplicationLayerAutomaticResponseInput = schema.new({
    id = id.from(_N, "UpdateApplicationLayerAutomaticResponseInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UpdateApplicationLayerAutomaticResponseInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "UpdateApplicationLayerAutomaticResponseInput", "Action"),
            type = "structure",
            name = "Action",
            target_id = id.from(_N, "ResponseAction"),
            target = M.ResponseAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateApplicationLayerAutomaticResponseOutput = schema.new({
    id = id.from(_N, "UpdateApplicationLayerAutomaticResponseOutput"),
    type = "structure",
})

M.UpdateEmergencyContactSettingsInput = schema.new({
    id = id.from(_N, "UpdateEmergencyContactSettingsInput"),
    type = "structure",
    members = {
        EmergencyContactList = schema.new({
            id = id.from(_N, "UpdateEmergencyContactSettingsInput", "EmergencyContactList"),
            type = "list",
            name = "EmergencyContactList",
            target_id = prelude.Document.id,
            list_member = M.EmergencyContact,
        }),
    },
})

M.UpdateEmergencyContactSettingsOutput = schema.new({
    id = id.from(_N, "UpdateEmergencyContactSettingsOutput"),
    type = "structure",
})

M.UpdateProtectionGroupInput = schema.new({
    id = id.from(_N, "UpdateProtectionGroupInput"),
    type = "structure",
    members = {
        ProtectionGroupId = schema.new({
            id = id.from(_N, "UpdateProtectionGroupInput", "ProtectionGroupId"),
            type = "string",
            name = "ProtectionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Aggregation = schema.new({
            id = id.from(_N, "UpdateProtectionGroupInput", "Aggregation"),
            type = "string",
            name = "Aggregation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Pattern = schema.new({
            id = id.from(_N, "UpdateProtectionGroupInput", "Pattern"),
            type = "string",
            name = "Pattern",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "UpdateProtectionGroupInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Members = schema.new({
            id = id.from(_N, "UpdateProtectionGroupInput", "Members"),
            type = "list",
            name = "Members",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateProtectionGroupOutput = schema.new({
    id = id.from(_N, "UpdateProtectionGroupOutput"),
    type = "structure",
})

M.UpdateSubscriptionInput = schema.new({
    id = id.from(_N, "UpdateSubscriptionInput"),
    type = "structure",
    members = {
        AutoRenew = schema.new({
            id = id.from(_N, "UpdateSubscriptionInput", "AutoRenew"),
            type = "string",
            name = "AutoRenew",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSubscriptionOutput = schema.new({
    id = id.from(_N, "UpdateSubscriptionOutput"),
    type = "structure",
})

return M
