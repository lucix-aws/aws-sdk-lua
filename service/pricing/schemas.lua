local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.pricing"

local M = {}

M.ServiceList = schema.new({ type = "list", list_member = M.Service })

M.AttributeValueList = schema.new({ type = "list", list_member = M.AttributeValue })

M.Filters = schema.new({ type = "list", list_member = M.Filter })

M.PriceListJsonItems = schema.new({ type = "list", list_member = prelude.String })

M.PriceLists = schema.new({ type = "list", list_member = M.PriceList })

M.AttributeNameList = schema.new({ type = "list", list_member = prelude.String })

M.FileFormats = schema.new({ type = "list", list_member = prelude.String })

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
        }),
    },
})

M.AttributeValue = schema.new({
    id = id.from(_N, "AttributeValue"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "AttributeValue", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeServicesInput = schema.new({
    id = id.from(_N, "DescribeServicesRequest"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "DescribeServicesInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        FormatVersion = schema.new({
            id = id.from(_N, "DescribeServicesInput", "FormatVersion"),
            type = "string",
            name = "FormatVersion",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeServicesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeServicesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.Service = schema.new({
    id = id.from(_N, "Service"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "Service", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeNames = schema.new({
            id = id.from(_N, "Service", "AttributeNames"),
            type = "list",
            name = "AttributeNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeServicesOutput = schema.new({
    id = id.from(_N, "DescribeServicesResponse"),
    type = "structure",
    members = {
        Services = schema.new({
            id = id.from(_N, "DescribeServicesOutput", "Services"),
            type = "list",
            name = "Services",
            target_id = prelude.Document.id,
            list_member = M.Service,
        }),
        FormatVersion = schema.new({
            id = id.from(_N, "DescribeServicesOutput", "FormatVersion"),
            type = "string",
            name = "FormatVersion",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeServicesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ExpiredNextTokenException = schema.new({
    id = id.from(_N, "ExpiredNextTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ExpiredNextTokenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalErrorException = schema.new({
    id = id.from(_N, "InternalErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidNextTokenException = schema.new({
    id = id.from(_N, "InvalidNextTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidNextTokenException", "Message"),
            type = "string",
            name = "Message",
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
        Message = schema.new({
            id = id.from(_N, "InvalidParameterException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
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

M.GetAttributeValuesInput = schema.new({
    id = id.from(_N, "GetAttributeValuesRequest"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "GetAttributeValuesInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeName = schema.new({
            id = id.from(_N, "GetAttributeValuesInput", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetAttributeValuesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetAttributeValuesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.GetAttributeValuesOutput = schema.new({
    id = id.from(_N, "GetAttributeValuesResponse"),
    type = "structure",
    members = {
        AttributeValues = schema.new({
            id = id.from(_N, "GetAttributeValuesOutput", "AttributeValues"),
            type = "list",
            name = "AttributeValues",
            target_id = prelude.Document.id,
            list_member = M.AttributeValue,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetAttributeValuesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPriceListFileUrlInput = schema.new({
    id = id.from(_N, "GetPriceListFileUrlRequest"),
    type = "structure",
    members = {
        PriceListArn = schema.new({
            id = id.from(_N, "GetPriceListFileUrlInput", "PriceListArn"),
            type = "string",
            name = "PriceListArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileFormat = schema.new({
            id = id.from(_N, "GetPriceListFileUrlInput", "FileFormat"),
            type = "string",
            name = "FileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPriceListFileUrlOutput = schema.new({
    id = id.from(_N, "GetPriceListFileUrlResponse"),
    type = "structure",
    members = {
        Url = schema.new({
            id = id.from(_N, "GetPriceListFileUrlOutput", "Url"),
            type = "string",
            name = "Url",
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

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "Filter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Field = schema.new({
            id = id.from(_N, "Filter", "Field"),
            type = "string",
            name = "Field",
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
    },
})

M.GetProductsInput = schema.new({
    id = id.from(_N, "GetProductsRequest"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "GetProductsInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "GetProductsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        FormatVersion = schema.new({
            id = id.from(_N, "GetProductsInput", "FormatVersion"),
            type = "string",
            name = "FormatVersion",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetProductsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetProductsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.GetProductsOutput = schema.new({
    id = id.from(_N, "GetProductsResponse"),
    type = "structure",
    members = {
        FormatVersion = schema.new({
            id = id.from(_N, "GetProductsOutput", "FormatVersion"),
            type = "string",
            name = "FormatVersion",
            target_id = prelude.String.id,
        }),
        PriceList = schema.new({
            id = id.from(_N, "GetProductsOutput", "PriceList"),
            type = "list",
            name = "PriceList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetProductsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPriceListsInput = schema.new({
    id = id.from(_N, "ListPriceListsRequest"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "ListPriceListsInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EffectiveDate = schema.new({
            id = id.from(_N, "ListPriceListsInput", "EffectiveDate"),
            type = "timestamp",
            name = "EffectiveDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegionCode = schema.new({
            id = id.from(_N, "ListPriceListsInput", "RegionCode"),
            type = "string",
            name = "RegionCode",
            target_id = prelude.String.id,
        }),
        CurrencyCode = schema.new({
            id = id.from(_N, "ListPriceListsInput", "CurrencyCode"),
            type = "string",
            name = "CurrencyCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPriceListsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPriceListsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.PriceList = schema.new({
    id = id.from(_N, "PriceList"),
    type = "structure",
    members = {
        PriceListArn = schema.new({
            id = id.from(_N, "PriceList", "PriceListArn"),
            type = "string",
            name = "PriceListArn",
            target_id = prelude.String.id,
        }),
        RegionCode = schema.new({
            id = id.from(_N, "PriceList", "RegionCode"),
            type = "string",
            name = "RegionCode",
            target_id = prelude.String.id,
        }),
        CurrencyCode = schema.new({
            id = id.from(_N, "PriceList", "CurrencyCode"),
            type = "string",
            name = "CurrencyCode",
            target_id = prelude.String.id,
        }),
        FileFormats = schema.new({
            id = id.from(_N, "PriceList", "FileFormats"),
            type = "list",
            name = "FileFormats",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListPriceListsOutput = schema.new({
    id = id.from(_N, "ListPriceListsResponse"),
    type = "structure",
    members = {
        PriceLists = schema.new({
            id = id.from(_N, "ListPriceListsOutput", "PriceLists"),
            type = "list",
            name = "PriceLists",
            target_id = prelude.Document.id,
            list_member = M.PriceList,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPriceListsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
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
