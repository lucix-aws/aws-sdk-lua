local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.appconfigdata"

local M = {}

M.InvalidParameterDetail = schema.new({
    id = id.from(_N, "InvalidParameterDetail"),
    type = "structure",
    members = {
        Problem = schema.new({
            id = id.from(_N, "InvalidParameterDetail", "Problem"),
            type = "string",
            name = "Problem",
            target_id = prelude.String.id,
        }),
    },
})

M.BadRequestDetails = schema.new({
    id = id.from(_N, "BadRequestDetails"),
    type = "union",
    members = {
        InvalidParameters = schema.new({
            id = id.from(_N, "BadRequestDetails", "InvalidParameters"),
            type = "map",
            name = "InvalidParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.InvalidParameterDetail,
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
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ReferencedBy = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ReferencedBy"),
            type = "map",
            name = "ReferencedBy",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartConfigurationSessionInput = schema.new({
    id = id.from(_N, "StartConfigurationSessionInput"),
    type = "structure",
    members = {
        ApplicationIdentifier = schema.new({
            id = id.from(_N, "StartConfigurationSessionInput", "ApplicationIdentifier"),
            type = "string",
            name = "ApplicationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnvironmentIdentifier = schema.new({
            id = id.from(_N, "StartConfigurationSessionInput", "EnvironmentIdentifier"),
            type = "string",
            name = "EnvironmentIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationProfileIdentifier = schema.new({
            id = id.from(_N, "StartConfigurationSessionInput", "ConfigurationProfileIdentifier"),
            type = "string",
            name = "ConfigurationProfileIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RequiredMinimumPollIntervalInSeconds = schema.new({
            id = id.from(_N, "StartConfigurationSessionInput", "RequiredMinimumPollIntervalInSeconds"),
            type = "integer",
            name = "RequiredMinimumPollIntervalInSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.StartConfigurationSessionOutput = schema.new({
    id = id.from(_N, "StartConfigurationSessionOutput"),
    type = "structure",
    members = {
        InitialConfigurationToken = schema.new({
            id = id.from(_N, "StartConfigurationSessionOutput", "InitialConfigurationToken"),
            type = "string",
            name = "InitialConfigurationToken",
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
        }),
    },
})

M.GetLatestConfigurationInput = schema.new({
    id = id.from(_N, "GetLatestConfigurationInput"),
    type = "structure",
    members = {
        ConfigurationToken = schema.new({
            id = id.from(_N, "GetLatestConfigurationInput", "ConfigurationToken"),
            type = "string",
            name = "ConfigurationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "configuration_token" },
            },
        }),
    },
})

M.GetLatestConfigurationOutput = schema.new({
    id = id.from(_N, "GetLatestConfigurationOutput"),
    type = "structure",
    members = {
        NextPollConfigurationToken = schema.new({
            id = id.from(_N, "GetLatestConfigurationOutput", "NextPollConfigurationToken"),
            type = "string",
            name = "NextPollConfigurationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Next-Poll-Configuration-Token" },
            },
        }),
        NextPollIntervalInSeconds = schema.new({
            id = id.from(_N, "GetLatestConfigurationOutput", "NextPollIntervalInSeconds"),
            type = "integer",
            name = "NextPollIntervalInSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Next-Poll-Interval-In-Seconds" },
            },
        }),
        ContentType = schema.new({
            id = id.from(_N, "GetLatestConfigurationOutput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        Configuration = schema.new({
            id = id.from(_N, "GetLatestConfigurationOutput", "Configuration"),
            type = "blob",
            name = "Configuration",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        VersionLabel = schema.new({
            id = id.from(_N, "GetLatestConfigurationOutput", "VersionLabel"),
            type = "string",
            name = "VersionLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Version-Label" },
            },
        }),
    },
})

return M
