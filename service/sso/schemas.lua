local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.sso"

local M = {}

M.AccountInfo = schema.new({
    id = id.from(_N, "AccountInfo"),
    type = "structure",
    members = {
        accountId = schema.new({
            id = id.from(_N, "AccountInfo", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        accountName = schema.new({
            id = id.from(_N, "AccountInfo", "accountName"),
            type = "string",
            name = "accountName",
            target_id = prelude.String.id,
        }),
        emailAddress = schema.new({
            id = id.from(_N, "AccountInfo", "emailAddress"),
            type = "string",
            name = "emailAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRoleCredentialsInput = schema.new({
    id = id.from(_N, "GetRoleCredentialsRequest"),
    type = "structure",
    members = {
        roleName = schema.new({
            id = id.from(_N, "GetRoleCredentialsInput", "roleName"),
            type = "string",
            name = "roleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "role_name" },
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "GetRoleCredentialsInput", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "account_id" },
            },
        }),
        accessToken = schema.new({
            id = id.from(_N, "GetRoleCredentialsInput", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-sso_bearer_token" },
            },
        }),
    },
})

M.RoleCredentials = schema.new({
    id = id.from(_N, "RoleCredentials"),
    type = "structure",
    members = {
        accessKeyId = schema.new({
            id = id.from(_N, "RoleCredentials", "accessKeyId"),
            type = "string",
            name = "accessKeyId",
            target_id = prelude.String.id,
        }),
        secretAccessKey = schema.new({
            id = id.from(_N, "RoleCredentials", "secretAccessKey"),
            type = "string",
            name = "secretAccessKey",
            target_id = prelude.String.id,
        }),
        sessionToken = schema.new({
            id = id.from(_N, "RoleCredentials", "sessionToken"),
            type = "string",
            name = "sessionToken",
            target_id = prelude.String.id,
        }),
        expiration = schema.new({
            id = id.from(_N, "RoleCredentials", "expiration"),
            type = "long",
            name = "expiration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GetRoleCredentialsOutput = schema.new({
    id = id.from(_N, "GetRoleCredentialsResponse"),
    type = "structure",
    members = {
        roleCredentials = schema.new({
            id = id.from(_N, "GetRoleCredentialsOutput", "roleCredentials"),
            type = "structure",
            name = "roleCredentials",
            target_id = id.from(_N, "RoleCredentials"),
            target = M.RoleCredentials,
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

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
        message = schema.new({
            id = id.from(_N, "UnauthorizedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountRolesInput = schema.new({
    id = id.from(_N, "ListAccountRolesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAccountRolesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAccountRolesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_result" },
            },
        }),
        accessToken = schema.new({
            id = id.from(_N, "ListAccountRolesInput", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-sso_bearer_token" },
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "ListAccountRolesInput", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "account_id" },
            },
        }),
    },
})

M.RoleInfo = schema.new({
    id = id.from(_N, "RoleInfo"),
    type = "structure",
    members = {
        roleName = schema.new({
            id = id.from(_N, "RoleInfo", "roleName"),
            type = "string",
            name = "roleName",
            target_id = prelude.String.id,
        }),
        accountId = schema.new({
            id = id.from(_N, "RoleInfo", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccountRolesOutput = schema.new({
    id = id.from(_N, "ListAccountRolesResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAccountRolesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        roleList = schema.new({
            id = id.from(_N, "ListAccountRolesOutput", "roleList"),
            type = "list",
            name = "roleList",
            target_id = prelude.Document.id,
            list_member = M.RoleInfo,
        }),
    },
})

M.ListAccountsInput = schema.new({
    id = id.from(_N, "ListAccountsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAccountsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAccountsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_result" },
            },
        }),
        accessToken = schema.new({
            id = id.from(_N, "ListAccountsInput", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-sso_bearer_token" },
            },
        }),
    },
})

M.ListAccountsOutput = schema.new({
    id = id.from(_N, "ListAccountsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAccountsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        accountList = schema.new({
            id = id.from(_N, "ListAccountsOutput", "accountList"),
            type = "list",
            name = "accountList",
            target_id = prelude.Document.id,
            list_member = M.AccountInfo,
        }),
    },
})

M.LogoutInput = schema.new({
    id = id.from(_N, "LogoutRequest"),
    type = "structure",
    members = {
        accessToken = schema.new({
            id = id.from(_N, "LogoutInput", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-sso_bearer_token" },
            },
        }),
    },
})

M.LogoutOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
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
