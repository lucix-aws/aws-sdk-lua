local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.eksauth"

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

M.AssumedRoleUser = schema.new({
    id = id.from(_N, "AssumedRoleUser"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "AssumedRoleUser", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assumeRoleId = schema.new({
            id = id.from(_N, "AssumedRoleUser", "assumeRoleId"),
            type = "string",
            name = "assumeRoleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssumeRoleForPodIdentityInput = schema.new({
    id = id.from(_N, "AssumeRoleForPodIdentityRequest"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "AssumeRoleForPodIdentityInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        token = schema.new({
            id = id.from(_N, "AssumeRoleForPodIdentityInput", "token"),
            type = "string",
            name = "token",
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
        sessionToken = schema.new({
            id = id.from(_N, "Credentials", "sessionToken"),
            type = "string",
            name = "sessionToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secretAccessKey = schema.new({
            id = id.from(_N, "Credentials", "secretAccessKey"),
            type = "string",
            name = "secretAccessKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessKeyId = schema.new({
            id = id.from(_N, "Credentials", "accessKeyId"),
            type = "string",
            name = "accessKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiration = schema.new({
            id = id.from(_N, "Credentials", "expiration"),
            type = "timestamp",
            name = "expiration",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PodIdentityAssociation = schema.new({
    id = id.from(_N, "PodIdentityAssociation"),
    type = "structure",
    members = {
        associationArn = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "associationArn"),
            type = "string",
            name = "associationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        associationId = schema.new({
            id = id.from(_N, "PodIdentityAssociation", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Subject = schema.new({
    id = id.from(_N, "Subject"),
    type = "structure",
    members = {
        namespace = schema.new({
            id = id.from(_N, "Subject", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceAccount = schema.new({
            id = id.from(_N, "Subject", "serviceAccount"),
            type = "string",
            name = "serviceAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssumeRoleForPodIdentityOutput = schema.new({
    id = id.from(_N, "AssumeRoleForPodIdentityResponse"),
    type = "structure",
    members = {
        subject = schema.new({
            id = id.from(_N, "AssumeRoleForPodIdentityOutput", "subject"),
            type = "structure",
            name = "subject",
            target_id = id.from(_N, "Subject"),
            target = M.Subject,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        audience = schema.new({
            id = id.from(_N, "AssumeRoleForPodIdentityOutput", "audience"),
            type = "string",
            name = "audience",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        podIdentityAssociation = schema.new({
            id = id.from(_N, "AssumeRoleForPodIdentityOutput", "podIdentityAssociation"),
            type = "structure",
            name = "podIdentityAssociation",
            target_id = id.from(_N, "PodIdentityAssociation"),
            target = M.PodIdentityAssociation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assumedRoleUser = schema.new({
            id = id.from(_N, "AssumeRoleForPodIdentityOutput", "assumedRoleUser"),
            type = "structure",
            name = "assumedRoleUser",
            target_id = id.from(_N, "AssumedRoleUser"),
            target = M.AssumedRoleUser,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentials = schema.new({
            id = id.from(_N, "AssumeRoleForPodIdentityOutput", "credentials"),
            type = "structure",
            name = "credentials",
            target_id = id.from(_N, "Credentials"),
            target = M.Credentials,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExpiredTokenException = schema.new({
    id = id.from(_N, "ExpiredTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ExpiredTokenException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTokenException = schema.new({
    id = id.from(_N, "InvalidTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidTokenException", "message"),
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
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
