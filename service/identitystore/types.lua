local M = {}

M.AccessDeniedExceptionReason = {
    KMS_ACCESS_DENIED = "KMS_ACCESS_DENIED",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.Address = {
    type = "structure",
    id = "Address",
    members = {
        StreetAddress = {
            type = "string",
        },
        Locality = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        PostalCode = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        Formatted = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Primary = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ExternalId = {
    type = "structure",
    id = "ExternalId",
    members = {
        Issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UniqueAttribute = {
    type = "structure",
    id = "UniqueAttribute",
    members = {
        AttributePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeValue = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.AlternateIdentifier = {
    type = "union",
    id = "AlternateIdentifier",
    members = {
        ExternalId = M.ExternalId,
        UniqueAttribute = M.UniqueAttribute,
    },
}

M.AttributeOperation = {
    type = "structure",
    id = "AttributeOperation",
    members = {
        AttributePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeValue = {
            type = "document",
        },
    },
}

M.GetGroupIdInput = {
    type = "structure",
    id = "GetGroupIdInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlternateIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlternateIdentifier }),
    },
}

M.GetGroupIdOutput = {
    type = "structure",
    id = "GetGroupIdOutput",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceNotFoundExceptionReason = {
    KMS_KEY_NOT_FOUND = "KMS_KEY_NOT_FOUND",
}

M.ResourceType = {
    GROUP = "GROUP",
    USER = "USER",
    IDENTITY_STORE = "IDENTITY_STORE",
    GROUP_MEMBERSHIP = "GROUP_MEMBERSHIP",
    RESOURCE_POLICY = "RESOURCE_POLICY",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ThrottlingExceptionReason = {
    KMS_THROTTLING = "KMS_THROTTLING",
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
        Reason = {
            type = "string",
        },
    },
}

M.ValidationExceptionReason = {
    KMS_INVALID_ARN = "KMS_INVALID_ARN",
    KMS_INVALID_KEY_USAGE = "KMS_INVALID_KEY_USAGE",
    KMS_INVALID_STATE = "KMS_INVALID_STATE",
    KMS_DISABLED = "KMS_DISABLED",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.MemberId = {
    type = "union",
    id = "MemberId",
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.GetGroupMembershipIdInput = {
    type = "structure",
    id = "GetGroupMembershipIdInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemberId }),
    },
}

M.GetGroupMembershipIdOutput = {
    type = "structure",
    id = "GetGroupMembershipIdOutput",
    members = {
        MembershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetUserIdInput = {
    type = "structure",
    id = "GetUserIdInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlternateIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlternateIdentifier }),
    },
}

M.GetUserIdOutput = {
    type = "structure",
    id = "GetUserIdOutput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictExceptionReason = {
    UNIQUENESS_CONSTRAINT_VIOLATION = "UNIQUENESS_CONSTRAINT_VIOLATION",
    CONCURRENT_MODIFICATION = "CONCURRENT_MODIFICATION",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.CreateGroupMembershipInput = {
    type = "structure",
    id = "CreateGroupMembershipInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemberId }),
    },
}

M.CreateGroupMembershipOutput = {
    type = "structure",
    id = "CreateGroupMembershipOutput",
    members = {
        MembershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DeleteGroupMembershipInput = {
    type = "structure",
    id = "DeleteGroupMembershipInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MembershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGroupMembershipOutput = {
    type = "structure",
    id = "DeleteGroupMembershipOutput",
}

M.DescribeGroupMembershipInput = {
    type = "structure",
    id = "DescribeGroupMembershipInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MembershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeGroupMembershipOutput = {
    type = "structure",
    id = "DescribeGroupMembershipOutput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MembershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemberId }),
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        UpdatedBy = {
            type = "string",
        },
    },
}

M.ListGroupMembershipsInput = {
    type = "structure",
    id = "ListGroupMembershipsInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GroupMembership = {
    type = "structure",
    id = "GroupMembership",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MembershipId = {
            type = "string",
        },
        GroupId = {
            type = "string",
        },
        MemberId = M.MemberId,
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        UpdatedBy = {
            type = "string",
        },
    },
}

M.ListGroupMembershipsOutput = {
    type = "structure",
    id = "ListGroupMembershipsOutput",
    members = {
        GroupMemberships = {
            type = "list",
            member = M.GroupMembership,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CreateGroupInput = {
    type = "structure",
    id = "CreateGroupInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    id = "CreateGroupOutput",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGroupInput = {
    type = "structure",
    id = "DeleteGroupInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
    id = "DeleteGroupOutput",
}

M.DescribeGroupInput = {
    type = "structure",
    id = "DescribeGroupInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeGroupOutput = {
    type = "structure",
    id = "DescribeGroupOutput",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        ExternalIds = {
            type = "list",
            member = M.ExternalId,
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        UpdatedBy = {
            type = "string",
        },
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        AttributePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    id = "ListGroupsInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.Group = {
    type = "structure",
    id = "Group",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        ExternalIds = {
            type = "list",
            member = M.ExternalId,
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        UpdatedBy = {
            type = "string",
        },
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListGroupsOutput = {
    type = "structure",
    id = "ListGroupsOutput",
    members = {
        Groups = {
            type = "list",
            member = M.Group,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateGroupInput = {
    type = "structure",
    id = "UpdateGroupInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operations = {
            type = "list",
            member = M.AttributeOperation,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
    id = "UpdateGroupOutput",
}

M.IsMemberInGroupsInput = {
    type = "structure",
    id = "IsMemberInGroupsInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemberId }),
        GroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GroupMembershipExistenceResult = {
    type = "structure",
    id = "GroupMembershipExistenceResult",
    members = {
        GroupId = {
            type = "string",
        },
        MemberId = M.MemberId,
        MembershipExists = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.IsMemberInGroupsOutput = {
    type = "structure",
    id = "IsMemberInGroupsOutput",
    members = {
        Results = {
            type = "list",
            member = M.GroupMembershipExistenceResult,
            traits = {
                required = true,
            },
        },
    },
}

M.ListGroupMembershipsForMemberInput = {
    type = "structure",
    id = "ListGroupMembershipsForMemberInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemberId }),
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupMembershipsForMemberOutput = {
    type = "structure",
    id = "ListGroupMembershipsForMemberOutput",
    members = {
        GroupMemberships = {
            type = "list",
            member = M.GroupMembership,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Email = {
    type = "structure",
    id = "Email",
    members = {
        Value = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Primary = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Name = {
    type = "structure",
    id = "Name",
    members = {
        Formatted = {
            type = "string",
        },
        FamilyName = {
            type = "string",
        },
        GivenName = {
            type = "string",
        },
        MiddleName = {
            type = "string",
        },
        HonorificPrefix = {
            type = "string",
        },
        HonorificSuffix = {
            type = "string",
        },
    },
}

M.PhoneNumber = {
    type = "structure",
    id = "PhoneNumber",
    members = {
        Value = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Primary = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Photo = {
    type = "structure",
    id = "Photo",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        Display = {
            type = "string",
        },
        Primary = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Role = {
    type = "structure",
    id = "Role",
    members = {
        Value = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Primary = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateUserInput = {
    type = "structure",
    id = "CreateUserInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
        },
        Name = M.Name,
        DisplayName = {
            type = "string",
        },
        NickName = {
            type = "string",
        },
        ProfileUrl = {
            type = "string",
        },
        Emails = {
            type = "list",
            member = M.Email,
        },
        Addresses = {
            type = "list",
            member = M.Address,
        },
        PhoneNumbers = {
            type = "list",
            member = M.PhoneNumber,
        },
        UserType = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        PreferredLanguage = {
            type = "string",
        },
        Locale = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
        Photos = {
            type = "list",
            member = M.Photo,
        },
        Website = {
            type = "string",
        },
        Birthdate = {
            type = "string",
        },
        Roles = {
            type = "list",
            member = M.Role,
        },
        Extensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    id = "CreateUserOutput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
    id = "DeleteUserOutput",
}

M.DescribeUserInput = {
    type = "structure",
    id = "DescribeUserInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Extensions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UserStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DescribeUserOutput = {
    type = "structure",
    id = "DescribeUserOutput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
        },
        ExternalIds = {
            type = "list",
            member = M.ExternalId,
        },
        Name = M.Name,
        DisplayName = {
            type = "string",
        },
        NickName = {
            type = "string",
        },
        ProfileUrl = {
            type = "string",
        },
        Emails = {
            type = "list",
            member = M.Email,
        },
        Addresses = {
            type = "list",
            member = M.Address,
        },
        PhoneNumbers = {
            type = "list",
            member = M.PhoneNumber,
        },
        UserType = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        PreferredLanguage = {
            type = "string",
        },
        Locale = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
        UserStatus = {
            type = "string",
        },
        Photos = {
            type = "list",
            member = M.Photo,
        },
        Website = {
            type = "string",
        },
        Birthdate = {
            type = "string",
        },
        Roles = {
            type = "list",
            member = M.Role,
        },
        CreatedAt = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        UpdatedBy = {
            type = "string",
        },
        Extensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    id = "ListUsersInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Extensions = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
        },
        ExternalIds = {
            type = "list",
            member = M.ExternalId,
        },
        Name = M.Name,
        DisplayName = {
            type = "string",
        },
        NickName = {
            type = "string",
        },
        ProfileUrl = {
            type = "string",
        },
        Emails = {
            type = "list",
            member = M.Email,
        },
        Addresses = {
            type = "list",
            member = M.Address,
        },
        PhoneNumbers = {
            type = "list",
            member = M.PhoneNumber,
        },
        UserType = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        PreferredLanguage = {
            type = "string",
        },
        Locale = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
        UserStatus = {
            type = "string",
        },
        Photos = {
            type = "list",
            member = M.Photo,
        },
        Website = {
            type = "string",
        },
        Birthdate = {
            type = "string",
        },
        Roles = {
            type = "list",
            member = M.Role,
        },
        CreatedAt = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        UpdatedBy = {
            type = "string",
        },
        Extensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    id = "ListUsersOutput",
    members = {
        Users = {
            type = "list",
            member = M.User,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateUserInput = {
    type = "structure",
    id = "UpdateUserInput",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operations = {
            type = "list",
            member = M.AttributeOperation,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    id = "UpdateUserOutput",
}

return M
