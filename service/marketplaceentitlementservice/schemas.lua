local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.marketplaceentitlementservice"

local M = {}

M.GetEntitlementsInput = schema.new({
    id = id.from(_N, "GetEntitlementsRequest"),
    type = "structure",
    members = {
        ProductCode = schema.new({
            id = id.from(_N, "GetEntitlementsInput", "ProductCode"),
            type = "string",
            name = "ProductCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filter = schema.new({
            id = id.from(_N, "GetEntitlementsInput", "Filter"),
            type = "map",
            name = "Filter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetEntitlementsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetEntitlementsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EntitlementValue = schema.new({
    id = id.from(_N, "EntitlementValue"),
    type = "structure",
    members = {
        IntegerValue = schema.new({
            id = id.from(_N, "EntitlementValue", "IntegerValue"),
            type = "integer",
            name = "IntegerValue",
            target_id = prelude.Integer.id,
        }),
        DoubleValue = schema.new({
            id = id.from(_N, "EntitlementValue", "DoubleValue"),
            type = "double",
            name = "DoubleValue",
            target_id = prelude.Double.id,
        }),
        BooleanValue = schema.new({
            id = id.from(_N, "EntitlementValue", "BooleanValue"),
            type = "boolean",
            name = "BooleanValue",
            target_id = prelude.Boolean.id,
        }),
        StringValue = schema.new({
            id = id.from(_N, "EntitlementValue", "StringValue"),
            type = "string",
            name = "StringValue",
            target_id = prelude.String.id,
        }),
    },
})

M.Entitlement = schema.new({
    id = id.from(_N, "Entitlement"),
    type = "structure",
    members = {
        ProductCode = schema.new({
            id = id.from(_N, "Entitlement", "ProductCode"),
            type = "string",
            name = "ProductCode",
            target_id = prelude.String.id,
        }),
        Dimension = schema.new({
            id = id.from(_N, "Entitlement", "Dimension"),
            type = "string",
            name = "Dimension",
            target_id = prelude.String.id,
        }),
        CustomerIdentifier = schema.new({
            id = id.from(_N, "Entitlement", "CustomerIdentifier"),
            type = "string",
            name = "CustomerIdentifier",
            target_id = prelude.String.id,
        }),
        CustomerAWSAccountId = schema.new({
            id = id.from(_N, "Entitlement", "CustomerAWSAccountId"),
            type = "string",
            name = "CustomerAWSAccountId",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Entitlement", "Value"),
            type = "structure",
            name = "Value",
            target_id = id.from(_N, "EntitlementValue"),
            target = M.EntitlementValue,
        }),
        ExpirationDate = schema.new({
            id = id.from(_N, "Entitlement", "ExpirationDate"),
            type = "timestamp",
            name = "ExpirationDate",
            target_id = prelude.Timestamp.id,
        }),
        LicenseArn = schema.new({
            id = id.from(_N, "Entitlement", "LicenseArn"),
            type = "string",
            name = "LicenseArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetEntitlementsOutput = schema.new({
    id = id.from(_N, "GetEntitlementsResult"),
    type = "structure",
    members = {
        Entitlements = schema.new({
            id = id.from(_N, "GetEntitlementsOutput", "Entitlements"),
            type = "list",
            name = "Entitlements",
            target_id = prelude.Document.id,
            list_member = M.Entitlement,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetEntitlementsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServiceErrorException = schema.new({
    id = id.from(_N, "InternalServiceErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServiceErrorException", "message"),
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
