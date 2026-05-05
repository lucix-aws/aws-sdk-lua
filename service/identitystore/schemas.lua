local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.identitystore"

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
        }),
        RequestId = schema.new({
            id = id.from(_N, "AccessDeniedException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "AccessDeniedException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.Address = schema.new({
    id = id.from(_N, "Address"),
    type = "structure",
    members = {
        StreetAddress = schema.new({
            id = id.from(_N, "Address", "StreetAddress"),
            type = "string",
            name = "StreetAddress",
            target_id = prelude.String.id,
        }),
        Locality = schema.new({
            id = id.from(_N, "Address", "Locality"),
            type = "string",
            name = "Locality",
            target_id = prelude.String.id,
        }),
        Region = schema.new({
            id = id.from(_N, "Address", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        PostalCode = schema.new({
            id = id.from(_N, "Address", "PostalCode"),
            type = "string",
            name = "PostalCode",
            target_id = prelude.String.id,
        }),
        Country = schema.new({
            id = id.from(_N, "Address", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
        }),
        Formatted = schema.new({
            id = id.from(_N, "Address", "Formatted"),
            type = "string",
            name = "Formatted",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Address", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Primary = schema.new({
            id = id.from(_N, "Address", "Primary"),
            type = "boolean",
            name = "Primary",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ExternalId = schema.new({
    id = id.from(_N, "ExternalId"),
    type = "structure",
    members = {
        Issuer = schema.new({
            id = id.from(_N, "ExternalId", "Issuer"),
            type = "string",
            name = "Issuer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "ExternalId", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UniqueAttribute = schema.new({
    id = id.from(_N, "UniqueAttribute"),
    type = "structure",
    members = {
        AttributePath = schema.new({
            id = id.from(_N, "UniqueAttribute", "AttributePath"),
            type = "string",
            name = "AttributePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeValue = schema.new({
            id = id.from(_N, "UniqueAttribute", "AttributeValue"),
            type = "document",
            name = "AttributeValue",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AlternateIdentifier = schema.new({
    id = id.from(_N, "AlternateIdentifier"),
    type = "union",
    members = {
        ExternalId = schema.new({
            id = id.from(_N, "AlternateIdentifier", "ExternalId"),
            type = "structure",
            name = "ExternalId",
            target_id = id.from(_N, "ExternalId"),
            target = M.ExternalId,
        }),
        UniqueAttribute = schema.new({
            id = id.from(_N, "AlternateIdentifier", "UniqueAttribute"),
            type = "structure",
            name = "UniqueAttribute",
            target_id = id.from(_N, "UniqueAttribute"),
            target = M.UniqueAttribute,
        }),
    },
})

M.AttributeOperation = schema.new({
    id = id.from(_N, "AttributeOperation"),
    type = "structure",
    members = {
        AttributePath = schema.new({
            id = id.from(_N, "AttributeOperation", "AttributePath"),
            type = "string",
            name = "AttributePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeValue = schema.new({
            id = id.from(_N, "AttributeOperation", "AttributeValue"),
            type = "document",
            name = "AttributeValue",
            target_id = prelude.Document.id,
        }),
    },
})

M.GetGroupIdInput = schema.new({
    id = id.from(_N, "GetGroupIdInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "GetGroupIdInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AlternateIdentifier = schema.new({
            id = id.from(_N, "GetGroupIdInput", "AlternateIdentifier"),
            type = "union",
            name = "AlternateIdentifier",
            target_id = id.from(_N, "AlternateIdentifier"),
            target = M.AlternateIdentifier,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetGroupIdOutput = schema.new({
    id = id.from(_N, "GetGroupIdOutput"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "GetGroupIdOutput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdentityStoreId = schema.new({
            id = id.from(_N, "GetGroupIdOutput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "InternalServerException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Retry-After" },
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
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "RequestId"),
            type = "string",
            name = "RequestId",
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
        RequestId = schema.new({
            id = id.from(_N, "ThrottlingException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "ThrottlingException", "Reason"),
            type = "string",
            name = "Reason",
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
        RequestId = schema.new({
            id = id.from(_N, "ValidationException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "ValidationException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.MemberId = schema.new({
    id = id.from(_N, "MemberId"),
    type = "union",
    members = {
        UserId = schema.new({
            id = id.from(_N, "MemberId", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGroupMembershipIdInput = schema.new({
    id = id.from(_N, "GetGroupMembershipIdInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "GetGroupMembershipIdInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "GetGroupMembershipIdInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberId = schema.new({
            id = id.from(_N, "GetGroupMembershipIdInput", "MemberId"),
            type = "union",
            name = "MemberId",
            target_id = id.from(_N, "MemberId"),
            target = M.MemberId,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetGroupMembershipIdOutput = schema.new({
    id = id.from(_N, "GetGroupMembershipIdOutput"),
    type = "structure",
    members = {
        MembershipId = schema.new({
            id = id.from(_N, "GetGroupMembershipIdOutput", "MembershipId"),
            type = "string",
            name = "MembershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdentityStoreId = schema.new({
            id = id.from(_N, "GetGroupMembershipIdOutput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetUserIdInput = schema.new({
    id = id.from(_N, "GetUserIdInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "GetUserIdInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AlternateIdentifier = schema.new({
            id = id.from(_N, "GetUserIdInput", "AlternateIdentifier"),
            type = "union",
            name = "AlternateIdentifier",
            target_id = id.from(_N, "AlternateIdentifier"),
            target = M.AlternateIdentifier,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetUserIdOutput = schema.new({
    id = id.from(_N, "GetUserIdOutput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "GetUserIdOutput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "GetUserIdOutput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ConflictException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "ConflictException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGroupMembershipInput = schema.new({
    id = id.from(_N, "CreateGroupMembershipInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "CreateGroupMembershipInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "CreateGroupMembershipInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberId = schema.new({
            id = id.from(_N, "CreateGroupMembershipInput", "MemberId"),
            type = "union",
            name = "MemberId",
            target_id = id.from(_N, "MemberId"),
            target = M.MemberId,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateGroupMembershipOutput = schema.new({
    id = id.from(_N, "CreateGroupMembershipOutput"),
    type = "structure",
    members = {
        MembershipId = schema.new({
            id = id.from(_N, "CreateGroupMembershipOutput", "MembershipId"),
            type = "string",
            name = "MembershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdentityStoreId = schema.new({
            id = id.from(_N, "CreateGroupMembershipOutput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        RequestId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteGroupMembershipInput = schema.new({
    id = id.from(_N, "DeleteGroupMembershipInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "DeleteGroupMembershipInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MembershipId = schema.new({
            id = id.from(_N, "DeleteGroupMembershipInput", "MembershipId"),
            type = "string",
            name = "MembershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGroupMembershipOutput = schema.new({
    id = id.from(_N, "DeleteGroupMembershipOutput"),
    type = "structure",
})

M.DescribeGroupMembershipInput = schema.new({
    id = id.from(_N, "DescribeGroupMembershipInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "DescribeGroupMembershipInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MembershipId = schema.new({
            id = id.from(_N, "DescribeGroupMembershipInput", "MembershipId"),
            type = "string",
            name = "MembershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeGroupMembershipOutput = schema.new({
    id = id.from(_N, "DescribeGroupMembershipOutput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "DescribeGroupMembershipOutput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MembershipId = schema.new({
            id = id.from(_N, "DescribeGroupMembershipOutput", "MembershipId"),
            type = "string",
            name = "MembershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "DescribeGroupMembershipOutput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberId = schema.new({
            id = id.from(_N, "DescribeGroupMembershipOutput", "MemberId"),
            type = "union",
            name = "MemberId",
            target_id = id.from(_N, "MemberId"),
            target = M.MemberId,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "DescribeGroupMembershipOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "DescribeGroupMembershipOutput", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "DescribeGroupMembershipOutput", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        UpdatedBy = schema.new({
            id = id.from(_N, "DescribeGroupMembershipOutput", "UpdatedBy"),
            type = "string",
            name = "UpdatedBy",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupMembershipsInput = schema.new({
    id = id.from(_N, "ListGroupMembershipsInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "ListGroupMembershipsInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "ListGroupMembershipsInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupMembershipsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupMembershipsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupMembership = schema.new({
    id = id.from(_N, "GroupMembership"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "GroupMembership", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MembershipId = schema.new({
            id = id.from(_N, "GroupMembership", "MembershipId"),
            type = "string",
            name = "MembershipId",
            target_id = prelude.String.id,
        }),
        GroupId = schema.new({
            id = id.from(_N, "GroupMembership", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
        }),
        MemberId = schema.new({
            id = id.from(_N, "GroupMembership", "MemberId"),
            type = "union",
            name = "MemberId",
            target_id = id.from(_N, "MemberId"),
            target = M.MemberId,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GroupMembership", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "GroupMembership", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "GroupMembership", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        UpdatedBy = schema.new({
            id = id.from(_N, "GroupMembership", "UpdatedBy"),
            type = "string",
            name = "UpdatedBy",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupMembershipsOutput = schema.new({
    id = id.from(_N, "ListGroupMembershipsOutput"),
    type = "structure",
    members = {
        GroupMemberships = schema.new({
            id = id.from(_N, "ListGroupMembershipsOutput", "GroupMemberships"),
            type = "list",
            name = "GroupMemberships",
            target_id = prelude.Document.id,
            list_member = M.GroupMembership,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupMembershipsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGroupInput = schema.new({
    id = id.from(_N, "CreateGroupInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "CreateGroupInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "CreateGroupInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGroupOutput = schema.new({
    id = id.from(_N, "CreateGroupOutput"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "CreateGroupOutput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdentityStoreId = schema.new({
            id = id.from(_N, "CreateGroupOutput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGroupInput = schema.new({
    id = id.from(_N, "DeleteGroupInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "DeleteGroupInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "DeleteGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGroupOutput = schema.new({
    id = id.from(_N, "DeleteGroupOutput"),
    type = "structure",
})

M.DescribeGroupInput = schema.new({
    id = id.from(_N, "DescribeGroupInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "DescribeGroupInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "DescribeGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeGroupOutput = schema.new({
    id = id.from(_N, "DescribeGroupOutput"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        ExternalIds = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "ExternalIds"),
            type = "list",
            name = "ExternalIds",
            target_id = prelude.Document.id,
            list_member = M.ExternalId,
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        UpdatedBy = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "UpdatedBy"),
            type = "string",
            name = "UpdatedBy",
            target_id = prelude.String.id,
        }),
        IdentityStoreId = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        AttributePath = schema.new({
            id = id.from(_N, "Filter", "AttributePath"),
            type = "string",
            name = "AttributePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeValue = schema.new({
            id = id.from(_N, "Filter", "AttributeValue"),
            type = "string",
            name = "AttributeValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListGroupsInput = schema.new({
    id = id.from(_N, "ListGroupsInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "ListGroupsInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListGroupsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.Group = schema.new({
    id = id.from(_N, "Group"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "Group", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "Group", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        ExternalIds = schema.new({
            id = id.from(_N, "Group", "ExternalIds"),
            type = "list",
            name = "ExternalIds",
            target_id = prelude.Document.id,
            list_member = M.ExternalId,
        }),
        Description = schema.new({
            id = id.from(_N, "Group", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Group", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "Group", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "Group", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        UpdatedBy = schema.new({
            id = id.from(_N, "Group", "UpdatedBy"),
            type = "string",
            name = "UpdatedBy",
            target_id = prelude.String.id,
        }),
        IdentityStoreId = schema.new({
            id = id.from(_N, "Group", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListGroupsOutput = schema.new({
    id = id.from(_N, "ListGroupsOutput"),
    type = "structure",
    members = {
        Groups = schema.new({
            id = id.from(_N, "ListGroupsOutput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = M.Group,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGroupInput = schema.new({
    id = id.from(_N, "UpdateGroupInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "UpdateGroupInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "UpdateGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operations = schema.new({
            id = id.from(_N, "UpdateGroupInput", "Operations"),
            type = "list",
            name = "Operations",
            target_id = prelude.Document.id,
            list_member = M.AttributeOperation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateGroupOutput = schema.new({
    id = id.from(_N, "UpdateGroupOutput"),
    type = "structure",
})

M.IsMemberInGroupsInput = schema.new({
    id = id.from(_N, "IsMemberInGroupsInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "IsMemberInGroupsInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberId = schema.new({
            id = id.from(_N, "IsMemberInGroupsInput", "MemberId"),
            type = "union",
            name = "MemberId",
            target_id = id.from(_N, "MemberId"),
            target = M.MemberId,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupIds = schema.new({
            id = id.from(_N, "IsMemberInGroupsInput", "GroupIds"),
            type = "list",
            name = "GroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GroupMembershipExistenceResult = schema.new({
    id = id.from(_N, "GroupMembershipExistenceResult"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "GroupMembershipExistenceResult", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
        }),
        MemberId = schema.new({
            id = id.from(_N, "GroupMembershipExistenceResult", "MemberId"),
            type = "union",
            name = "MemberId",
            target_id = id.from(_N, "MemberId"),
            target = M.MemberId,
        }),
        MembershipExists = schema.new({
            id = id.from(_N, "GroupMembershipExistenceResult", "MembershipExists"),
            type = "boolean",
            name = "MembershipExists",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.IsMemberInGroupsOutput = schema.new({
    id = id.from(_N, "IsMemberInGroupsOutput"),
    type = "structure",
    members = {
        Results = schema.new({
            id = id.from(_N, "IsMemberInGroupsOutput", "Results"),
            type = "list",
            name = "Results",
            target_id = prelude.Document.id,
            list_member = M.GroupMembershipExistenceResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListGroupMembershipsForMemberInput = schema.new({
    id = id.from(_N, "ListGroupMembershipsForMemberInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "ListGroupMembershipsForMemberInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberId = schema.new({
            id = id.from(_N, "ListGroupMembershipsForMemberInput", "MemberId"),
            type = "union",
            name = "MemberId",
            target_id = id.from(_N, "MemberId"),
            target = M.MemberId,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupMembershipsForMemberInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupMembershipsForMemberInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupMembershipsForMemberOutput = schema.new({
    id = id.from(_N, "ListGroupMembershipsForMemberOutput"),
    type = "structure",
    members = {
        GroupMemberships = schema.new({
            id = id.from(_N, "ListGroupMembershipsForMemberOutput", "GroupMemberships"),
            type = "list",
            name = "GroupMemberships",
            target_id = prelude.Document.id,
            list_member = M.GroupMembership,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupMembershipsForMemberOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Email = schema.new({
    id = id.from(_N, "Email"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "Email", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Email", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Primary = schema.new({
            id = id.from(_N, "Email", "Primary"),
            type = "boolean",
            name = "Primary",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.Name = schema.new({
    id = id.from(_N, "Name"),
    type = "structure",
    members = {
        Formatted = schema.new({
            id = id.from(_N, "Name", "Formatted"),
            type = "string",
            name = "Formatted",
            target_id = prelude.String.id,
        }),
        FamilyName = schema.new({
            id = id.from(_N, "Name", "FamilyName"),
            type = "string",
            name = "FamilyName",
            target_id = prelude.String.id,
        }),
        GivenName = schema.new({
            id = id.from(_N, "Name", "GivenName"),
            type = "string",
            name = "GivenName",
            target_id = prelude.String.id,
        }),
        MiddleName = schema.new({
            id = id.from(_N, "Name", "MiddleName"),
            type = "string",
            name = "MiddleName",
            target_id = prelude.String.id,
        }),
        HonorificPrefix = schema.new({
            id = id.from(_N, "Name", "HonorificPrefix"),
            type = "string",
            name = "HonorificPrefix",
            target_id = prelude.String.id,
        }),
        HonorificSuffix = schema.new({
            id = id.from(_N, "Name", "HonorificSuffix"),
            type = "string",
            name = "HonorificSuffix",
            target_id = prelude.String.id,
        }),
    },
})

M.PhoneNumber = schema.new({
    id = id.from(_N, "PhoneNumber"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "PhoneNumber", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "PhoneNumber", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Primary = schema.new({
            id = id.from(_N, "PhoneNumber", "Primary"),
            type = "boolean",
            name = "Primary",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.Photo = schema.new({
    id = id.from(_N, "Photo"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "Photo", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "Photo", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Display = schema.new({
            id = id.from(_N, "Photo", "Display"),
            type = "string",
            name = "Display",
            target_id = prelude.String.id,
        }),
        Primary = schema.new({
            id = id.from(_N, "Photo", "Primary"),
            type = "boolean",
            name = "Primary",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.Role = schema.new({
    id = id.from(_N, "Role"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "Role", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Role", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Primary = schema.new({
            id = id.from(_N, "Role", "Primary"),
            type = "boolean",
            name = "Primary",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateUserInput = schema.new({
    id = id.from(_N, "CreateUserInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "CreateUserInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "CreateUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateUserInput", "Name"),
            type = "structure",
            name = "Name",
            target_id = id.from(_N, "Name"),
            target = M.Name,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "CreateUserInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        NickName = schema.new({
            id = id.from(_N, "CreateUserInput", "NickName"),
            type = "string",
            name = "NickName",
            target_id = prelude.String.id,
        }),
        ProfileUrl = schema.new({
            id = id.from(_N, "CreateUserInput", "ProfileUrl"),
            type = "string",
            name = "ProfileUrl",
            target_id = prelude.String.id,
        }),
        Emails = schema.new({
            id = id.from(_N, "CreateUserInput", "Emails"),
            type = "list",
            name = "Emails",
            target_id = prelude.Document.id,
            list_member = M.Email,
        }),
        Addresses = schema.new({
            id = id.from(_N, "CreateUserInput", "Addresses"),
            type = "list",
            name = "Addresses",
            target_id = prelude.Document.id,
            list_member = M.Address,
        }),
        PhoneNumbers = schema.new({
            id = id.from(_N, "CreateUserInput", "PhoneNumbers"),
            type = "list",
            name = "PhoneNumbers",
            target_id = prelude.Document.id,
            list_member = M.PhoneNumber,
        }),
        UserType = schema.new({
            id = id.from(_N, "CreateUserInput", "UserType"),
            type = "string",
            name = "UserType",
            target_id = prelude.String.id,
        }),
        Title = schema.new({
            id = id.from(_N, "CreateUserInput", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        PreferredLanguage = schema.new({
            id = id.from(_N, "CreateUserInput", "PreferredLanguage"),
            type = "string",
            name = "PreferredLanguage",
            target_id = prelude.String.id,
        }),
        Locale = schema.new({
            id = id.from(_N, "CreateUserInput", "Locale"),
            type = "string",
            name = "Locale",
            target_id = prelude.String.id,
        }),
        Timezone = schema.new({
            id = id.from(_N, "CreateUserInput", "Timezone"),
            type = "string",
            name = "Timezone",
            target_id = prelude.String.id,
        }),
        Photos = schema.new({
            id = id.from(_N, "CreateUserInput", "Photos"),
            type = "list",
            name = "Photos",
            target_id = prelude.Document.id,
            list_member = M.Photo,
        }),
        Website = schema.new({
            id = id.from(_N, "CreateUserInput", "Website"),
            type = "string",
            name = "Website",
            target_id = prelude.String.id,
        }),
        Birthdate = schema.new({
            id = id.from(_N, "CreateUserInput", "Birthdate"),
            type = "string",
            name = "Birthdate",
            target_id = prelude.String.id,
        }),
        Roles = schema.new({
            id = id.from(_N, "CreateUserInput", "Roles"),
            type = "list",
            name = "Roles",
            target_id = prelude.Document.id,
            list_member = M.Role,
        }),
        Extensions = schema.new({
            id = id.from(_N, "CreateUserInput", "Extensions"),
            type = "map",
            name = "Extensions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.CreateUserOutput = schema.new({
    id = id.from(_N, "CreateUserOutput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "CreateUserOutput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "CreateUserOutput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserInput = schema.new({
    id = id.from(_N, "DeleteUserInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "DeleteUserInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "DeleteUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserOutput = schema.new({
    id = id.from(_N, "DeleteUserOutput"),
    type = "structure",
})

M.DescribeUserInput = schema.new({
    id = id.from(_N, "DescribeUserInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "DescribeUserInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "DescribeUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Extensions = schema.new({
            id = id.from(_N, "DescribeUserInput", "Extensions"),
            type = "list",
            name = "Extensions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeUserOutput = schema.new({
    id = id.from(_N, "DescribeUserOutput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "DescribeUserOutput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "DescribeUserOutput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "DescribeUserOutput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        ExternalIds = schema.new({
            id = id.from(_N, "DescribeUserOutput", "ExternalIds"),
            type = "list",
            name = "ExternalIds",
            target_id = prelude.Document.id,
            list_member = M.ExternalId,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Name"),
            type = "structure",
            name = "Name",
            target_id = id.from(_N, "Name"),
            target = M.Name,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "DescribeUserOutput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        NickName = schema.new({
            id = id.from(_N, "DescribeUserOutput", "NickName"),
            type = "string",
            name = "NickName",
            target_id = prelude.String.id,
        }),
        ProfileUrl = schema.new({
            id = id.from(_N, "DescribeUserOutput", "ProfileUrl"),
            type = "string",
            name = "ProfileUrl",
            target_id = prelude.String.id,
        }),
        Emails = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Emails"),
            type = "list",
            name = "Emails",
            target_id = prelude.Document.id,
            list_member = M.Email,
        }),
        Addresses = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Addresses"),
            type = "list",
            name = "Addresses",
            target_id = prelude.Document.id,
            list_member = M.Address,
        }),
        PhoneNumbers = schema.new({
            id = id.from(_N, "DescribeUserOutput", "PhoneNumbers"),
            type = "list",
            name = "PhoneNumbers",
            target_id = prelude.Document.id,
            list_member = M.PhoneNumber,
        }),
        UserType = schema.new({
            id = id.from(_N, "DescribeUserOutput", "UserType"),
            type = "string",
            name = "UserType",
            target_id = prelude.String.id,
        }),
        Title = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        PreferredLanguage = schema.new({
            id = id.from(_N, "DescribeUserOutput", "PreferredLanguage"),
            type = "string",
            name = "PreferredLanguage",
            target_id = prelude.String.id,
        }),
        Locale = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Locale"),
            type = "string",
            name = "Locale",
            target_id = prelude.String.id,
        }),
        Timezone = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Timezone"),
            type = "string",
            name = "Timezone",
            target_id = prelude.String.id,
        }),
        UserStatus = schema.new({
            id = id.from(_N, "DescribeUserOutput", "UserStatus"),
            type = "string",
            name = "UserStatus",
            target_id = prelude.String.id,
        }),
        Photos = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Photos"),
            type = "list",
            name = "Photos",
            target_id = prelude.Document.id,
            list_member = M.Photo,
        }),
        Website = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Website"),
            type = "string",
            name = "Website",
            target_id = prelude.String.id,
        }),
        Birthdate = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Birthdate"),
            type = "string",
            name = "Birthdate",
            target_id = prelude.String.id,
        }),
        Roles = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Roles"),
            type = "list",
            name = "Roles",
            target_id = prelude.Document.id,
            list_member = M.Role,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "DescribeUserOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "DescribeUserOutput", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "DescribeUserOutput", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedBy = schema.new({
            id = id.from(_N, "DescribeUserOutput", "UpdatedBy"),
            type = "string",
            name = "UpdatedBy",
            target_id = prelude.String.id,
        }),
        Extensions = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Extensions"),
            type = "map",
            name = "Extensions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.ListUsersInput = schema.new({
    id = id.from(_N, "ListUsersInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "ListUsersInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Extensions = schema.new({
            id = id.from(_N, "ListUsersInput", "Extensions"),
            type = "list",
            name = "Extensions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListUsersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListUsersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListUsersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.User = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "User", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "User", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "User", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        ExternalIds = schema.new({
            id = id.from(_N, "User", "ExternalIds"),
            type = "list",
            name = "ExternalIds",
            target_id = prelude.Document.id,
            list_member = M.ExternalId,
        }),
        Name = schema.new({
            id = id.from(_N, "User", "Name"),
            type = "structure",
            name = "Name",
            target_id = id.from(_N, "Name"),
            target = M.Name,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "User", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        NickName = schema.new({
            id = id.from(_N, "User", "NickName"),
            type = "string",
            name = "NickName",
            target_id = prelude.String.id,
        }),
        ProfileUrl = schema.new({
            id = id.from(_N, "User", "ProfileUrl"),
            type = "string",
            name = "ProfileUrl",
            target_id = prelude.String.id,
        }),
        Emails = schema.new({
            id = id.from(_N, "User", "Emails"),
            type = "list",
            name = "Emails",
            target_id = prelude.Document.id,
            list_member = M.Email,
        }),
        Addresses = schema.new({
            id = id.from(_N, "User", "Addresses"),
            type = "list",
            name = "Addresses",
            target_id = prelude.Document.id,
            list_member = M.Address,
        }),
        PhoneNumbers = schema.new({
            id = id.from(_N, "User", "PhoneNumbers"),
            type = "list",
            name = "PhoneNumbers",
            target_id = prelude.Document.id,
            list_member = M.PhoneNumber,
        }),
        UserType = schema.new({
            id = id.from(_N, "User", "UserType"),
            type = "string",
            name = "UserType",
            target_id = prelude.String.id,
        }),
        Title = schema.new({
            id = id.from(_N, "User", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        PreferredLanguage = schema.new({
            id = id.from(_N, "User", "PreferredLanguage"),
            type = "string",
            name = "PreferredLanguage",
            target_id = prelude.String.id,
        }),
        Locale = schema.new({
            id = id.from(_N, "User", "Locale"),
            type = "string",
            name = "Locale",
            target_id = prelude.String.id,
        }),
        Timezone = schema.new({
            id = id.from(_N, "User", "Timezone"),
            type = "string",
            name = "Timezone",
            target_id = prelude.String.id,
        }),
        UserStatus = schema.new({
            id = id.from(_N, "User", "UserStatus"),
            type = "string",
            name = "UserStatus",
            target_id = prelude.String.id,
        }),
        Photos = schema.new({
            id = id.from(_N, "User", "Photos"),
            type = "list",
            name = "Photos",
            target_id = prelude.Document.id,
            list_member = M.Photo,
        }),
        Website = schema.new({
            id = id.from(_N, "User", "Website"),
            type = "string",
            name = "Website",
            target_id = prelude.String.id,
        }),
        Birthdate = schema.new({
            id = id.from(_N, "User", "Birthdate"),
            type = "string",
            name = "Birthdate",
            target_id = prelude.String.id,
        }),
        Roles = schema.new({
            id = id.from(_N, "User", "Roles"),
            type = "list",
            name = "Roles",
            target_id = prelude.Document.id,
            list_member = M.Role,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "User", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "User", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "User", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedBy = schema.new({
            id = id.from(_N, "User", "UpdatedBy"),
            type = "string",
            name = "UpdatedBy",
            target_id = prelude.String.id,
        }),
        Extensions = schema.new({
            id = id.from(_N, "User", "Extensions"),
            type = "map",
            name = "Extensions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.ListUsersOutput = schema.new({
    id = id.from(_N, "ListUsersOutput"),
    type = "structure",
    members = {
        Users = schema.new({
            id = id.from(_N, "ListUsersOutput", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.User,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListUsersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateUserInput = schema.new({
    id = id.from(_N, "UpdateUserInput"),
    type = "structure",
    members = {
        IdentityStoreId = schema.new({
            id = id.from(_N, "UpdateUserInput", "IdentityStoreId"),
            type = "string",
            name = "IdentityStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "UpdateUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operations = schema.new({
            id = id.from(_N, "UpdateUserInput", "Operations"),
            type = "list",
            name = "Operations",
            target_id = prelude.Document.id,
            list_member = M.AttributeOperation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateUserOutput = schema.new({
    id = id.from(_N, "UpdateUserOutput"),
    type = "structure",
})

return M
