local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.account"

local M = {}

M.AcceptPrimaryEmailUpdateInput = schema.new({
    id = id.from(_N, "AcceptPrimaryEmailUpdateInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "AcceptPrimaryEmailUpdateInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrimaryEmail = schema.new({
            id = id.from(_N, "AcceptPrimaryEmailUpdateInput", "PrimaryEmail"),
            type = "string",
            name = "PrimaryEmail",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Otp = schema.new({
            id = id.from(_N, "AcceptPrimaryEmailUpdateInput", "Otp"),
            type = "string",
            name = "Otp",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AcceptPrimaryEmailUpdateOutput = schema.new({
    id = id.from(_N, "AcceptPrimaryEmailUpdateOutput"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "AcceptPrimaryEmailUpdateOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorType = schema.new({
            id = id.from(_N, "AccessDeniedException", "errorType"),
            type = "string",
            name = "errorType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
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
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorType = schema.new({
            id = id.from(_N, "ConflictException", "errorType"),
            type = "string",
            name = "errorType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorType = schema.new({
            id = id.from(_N, "InternalServerException", "errorType"),
            type = "string",
            name = "errorType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "errorType"),
            type = "string",
            name = "errorType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorType = schema.new({
            id = id.from(_N, "TooManyRequestsException", "errorType"),
            type = "string",
            name = "errorType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
            },
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

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.GetAccountInformationInput = schema.new({
    id = id.from(_N, "GetAccountInformationInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "GetAccountInformationInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAccountInformationOutput = schema.new({
    id = id.from(_N, "GetAccountInformationOutput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "GetAccountInformationOutput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        AccountName = schema.new({
            id = id.from(_N, "GetAccountInformationOutput", "AccountName"),
            type = "string",
            name = "AccountName",
            target_id = prelude.String.id,
        }),
        AccountCreatedDate = schema.new({
            id = id.from(_N, "GetAccountInformationOutput", "AccountCreatedDate"),
            type = "timestamp",
            name = "AccountCreatedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        AccountState = schema.new({
            id = id.from(_N, "GetAccountInformationOutput", "AccountState"),
            type = "string",
            name = "AccountState",
            target_id = prelude.String.id,
        }),
    },
})

M.PutAccountNameInput = schema.new({
    id = id.from(_N, "PutAccountNameInput"),
    type = "structure",
    members = {
        AccountName = schema.new({
            id = id.from(_N, "PutAccountNameInput", "AccountName"),
            type = "string",
            name = "AccountName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "PutAccountNameInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.PutAccountNameOutput = schema.new({
    id = id.from(_N, "PutAccountNameOutput"),
    type = "structure",
})

M.DeleteAlternateContactInput = schema.new({
    id = id.from(_N, "DeleteAlternateContactInput"),
    type = "structure",
    members = {
        AlternateContactType = schema.new({
            id = id.from(_N, "DeleteAlternateContactInput", "AlternateContactType"),
            type = "string",
            name = "AlternateContactType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "DeleteAlternateContactInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAlternateContactOutput = schema.new({
    id = id.from(_N, "DeleteAlternateContactOutput"),
    type = "structure",
})

M.GetAlternateContactInput = schema.new({
    id = id.from(_N, "GetAlternateContactInput"),
    type = "structure",
    members = {
        AlternateContactType = schema.new({
            id = id.from(_N, "GetAlternateContactInput", "AlternateContactType"),
            type = "string",
            name = "AlternateContactType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "GetAlternateContactInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.AlternateContact = schema.new({
    id = id.from(_N, "AlternateContact"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AlternateContact", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Title = schema.new({
            id = id.from(_N, "AlternateContact", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        EmailAddress = schema.new({
            id = id.from(_N, "AlternateContact", "EmailAddress"),
            type = "string",
            name = "EmailAddress",
            target_id = prelude.String.id,
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "AlternateContact", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
        }),
        AlternateContactType = schema.new({
            id = id.from(_N, "AlternateContact", "AlternateContactType"),
            type = "string",
            name = "AlternateContactType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAlternateContactOutput = schema.new({
    id = id.from(_N, "GetAlternateContactOutput"),
    type = "structure",
    members = {
        AlternateContact = schema.new({
            id = id.from(_N, "GetAlternateContactOutput", "AlternateContact"),
            type = "structure",
            name = "AlternateContact",
            target_id = id.from(_N, "AlternateContact"),
            target = M.AlternateContact,
        }),
    },
})

M.PutAlternateContactInput = schema.new({
    id = id.from(_N, "PutAlternateContactInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PutAlternateContactInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Title = schema.new({
            id = id.from(_N, "PutAlternateContactInput", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EmailAddress = schema.new({
            id = id.from(_N, "PutAlternateContactInput", "EmailAddress"),
            type = "string",
            name = "EmailAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "PutAlternateContactInput", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AlternateContactType = schema.new({
            id = id.from(_N, "PutAlternateContactInput", "AlternateContactType"),
            type = "string",
            name = "AlternateContactType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "PutAlternateContactInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.PutAlternateContactOutput = schema.new({
    id = id.from(_N, "PutAlternateContactOutput"),
    type = "structure",
})

M.GetGovCloudAccountInformationInput = schema.new({
    id = id.from(_N, "GetGovCloudAccountInformationInput"),
    type = "structure",
    members = {
        StandardAccountId = schema.new({
            id = id.from(_N, "GetGovCloudAccountInformationInput", "StandardAccountId"),
            type = "string",
            name = "StandardAccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGovCloudAccountInformationOutput = schema.new({
    id = id.from(_N, "GetGovCloudAccountInformationOutput"),
    type = "structure",
    members = {
        GovCloudAccountId = schema.new({
            id = id.from(_N, "GetGovCloudAccountInformationOutput", "GovCloudAccountId"),
            type = "string",
            name = "GovCloudAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountState = schema.new({
            id = id.from(_N, "GetGovCloudAccountInformationOutput", "AccountState"),
            type = "string",
            name = "AccountState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceUnavailableException = schema.new({
    id = id.from(_N, "ResourceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorType = schema.new({
            id = id.from(_N, "ResourceUnavailableException", "errorType"),
            type = "string",
            name = "errorType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
            },
        }),
    },
})

M.GetContactInformationInput = schema.new({
    id = id.from(_N, "GetContactInformationInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "GetContactInformationInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.ContactInformation = schema.new({
    id = id.from(_N, "ContactInformation"),
    type = "structure",
    members = {
        FullName = schema.new({
            id = id.from(_N, "ContactInformation", "FullName"),
            type = "string",
            name = "FullName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AddressLine1 = schema.new({
            id = id.from(_N, "ContactInformation", "AddressLine1"),
            type = "string",
            name = "AddressLine1",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AddressLine2 = schema.new({
            id = id.from(_N, "ContactInformation", "AddressLine2"),
            type = "string",
            name = "AddressLine2",
            target_id = prelude.String.id,
        }),
        AddressLine3 = schema.new({
            id = id.from(_N, "ContactInformation", "AddressLine3"),
            type = "string",
            name = "AddressLine3",
            target_id = prelude.String.id,
        }),
        City = schema.new({
            id = id.from(_N, "ContactInformation", "City"),
            type = "string",
            name = "City",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StateOrRegion = schema.new({
            id = id.from(_N, "ContactInformation", "StateOrRegion"),
            type = "string",
            name = "StateOrRegion",
            target_id = prelude.String.id,
        }),
        DistrictOrCounty = schema.new({
            id = id.from(_N, "ContactInformation", "DistrictOrCounty"),
            type = "string",
            name = "DistrictOrCounty",
            target_id = prelude.String.id,
        }),
        PostalCode = schema.new({
            id = id.from(_N, "ContactInformation", "PostalCode"),
            type = "string",
            name = "PostalCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CountryCode = schema.new({
            id = id.from(_N, "ContactInformation", "CountryCode"),
            type = "string",
            name = "CountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "ContactInformation", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CompanyName = schema.new({
            id = id.from(_N, "ContactInformation", "CompanyName"),
            type = "string",
            name = "CompanyName",
            target_id = prelude.String.id,
        }),
        WebsiteUrl = schema.new({
            id = id.from(_N, "ContactInformation", "WebsiteUrl"),
            type = "string",
            name = "WebsiteUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.GetContactInformationOutput = schema.new({
    id = id.from(_N, "GetContactInformationOutput"),
    type = "structure",
    members = {
        ContactInformation = schema.new({
            id = id.from(_N, "GetContactInformationOutput", "ContactInformation"),
            type = "structure",
            name = "ContactInformation",
            target_id = id.from(_N, "ContactInformation"),
            target = M.ContactInformation,
        }),
    },
})

M.PutContactInformationInput = schema.new({
    id = id.from(_N, "PutContactInformationInput"),
    type = "structure",
    members = {
        ContactInformation = schema.new({
            id = id.from(_N, "PutContactInformationInput", "ContactInformation"),
            type = "structure",
            name = "ContactInformation",
            target_id = id.from(_N, "ContactInformation"),
            target = M.ContactInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "PutContactInformationInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.PutContactInformationOutput = schema.new({
    id = id.from(_N, "PutContactInformationOutput"),
    type = "structure",
})

M.GetPrimaryEmailInput = schema.new({
    id = id.from(_N, "GetPrimaryEmailInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "GetPrimaryEmailInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPrimaryEmailOutput = schema.new({
    id = id.from(_N, "GetPrimaryEmailOutput"),
    type = "structure",
    members = {
        PrimaryEmail = schema.new({
            id = id.from(_N, "GetPrimaryEmailOutput", "PrimaryEmail"),
            type = "string",
            name = "PrimaryEmail",
            target_id = prelude.String.id,
        }),
    },
})

M.StartPrimaryEmailUpdateInput = schema.new({
    id = id.from(_N, "StartPrimaryEmailUpdateInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "StartPrimaryEmailUpdateInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrimaryEmail = schema.new({
            id = id.from(_N, "StartPrimaryEmailUpdateInput", "PrimaryEmail"),
            type = "string",
            name = "PrimaryEmail",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartPrimaryEmailUpdateOutput = schema.new({
    id = id.from(_N, "StartPrimaryEmailUpdateOutput"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "StartPrimaryEmailUpdateOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableRegionInput = schema.new({
    id = id.from(_N, "DisableRegionInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DisableRegionInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        RegionName = schema.new({
            id = id.from(_N, "DisableRegionInput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableRegionOutput = schema.new({
    id = id.from(_N, "DisableRegionOutput"),
    type = "structure",
})

M.EnableRegionInput = schema.new({
    id = id.from(_N, "EnableRegionInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "EnableRegionInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        RegionName = schema.new({
            id = id.from(_N, "EnableRegionInput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableRegionOutput = schema.new({
    id = id.from(_N, "EnableRegionOutput"),
    type = "structure",
})

M.GetRegionOptStatusInput = schema.new({
    id = id.from(_N, "GetRegionOptStatusInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "GetRegionOptStatusInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        RegionName = schema.new({
            id = id.from(_N, "GetRegionOptStatusInput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRegionOptStatusOutput = schema.new({
    id = id.from(_N, "GetRegionOptStatusOutput"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "GetRegionOptStatusOutput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
        RegionOptStatus = schema.new({
            id = id.from(_N, "GetRegionOptStatusOutput", "RegionOptStatus"),
            type = "string",
            name = "RegionOptStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRegionsInput = schema.new({
    id = id.from(_N, "ListRegionsInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "ListRegionsInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRegionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRegionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        RegionOptStatusContains = schema.new({
            id = id.from(_N, "ListRegionsInput", "RegionOptStatusContains"),
            type = "list",
            name = "RegionOptStatusContains",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Region = schema.new({
    id = id.from(_N, "Region"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "Region", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
        RegionOptStatus = schema.new({
            id = id.from(_N, "Region", "RegionOptStatus"),
            type = "string",
            name = "RegionOptStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRegionsOutput = schema.new({
    id = id.from(_N, "ListRegionsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListRegionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Regions = schema.new({
            id = id.from(_N, "ListRegionsOutput", "Regions"),
            type = "list",
            name = "Regions",
            target_id = prelude.Document.id,
            list_member = M.Region,
        }),
    },
})

return M
