local M = {}

M.AccessDeniedExceptionReason = {
    KMS_ACCESS_DENIED = "KMS_ACCESS_DENIED",
}

M.AccessDeniedException = {
    type = "structure",
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
        },
    },
}

M.ExternalId = {
    type = "structure",
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
    members = {
        ExternalId = {
            type = "structure",
        },
        UniqueAttribute = {
            type = "structure",
        },
    },
}

M.AttributeOperation = {
    type = "structure",
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
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlternateIdentifier = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGroupIdOutput = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        RetryAfterSeconds = {
            type = "number",
            traits = {
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        RetryAfterSeconds = {
            type = "number",
            traits = {
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
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.GetGroupMembershipIdInput = {
    type = "structure",
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
        MemberId = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGroupMembershipIdOutput = {
    type = "structure",
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
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlternateIdentifier = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.GetUserIdOutput = {
    type = "structure",
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
        MemberId = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateGroupMembershipOutput = {
    type = "structure",
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
}

M.DescribeGroupMembershipInput = {
    type = "structure",
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
        MemberId = {
            type = "union",
            traits = {
                required = true,
            },
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
    },
}

M.ListGroupMembershipsInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GroupMembership = {
    type = "structure",
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
        MemberId = {
            type = "union",
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
    },
}

M.ListGroupMembershipsOutput = {
    type = "structure",
    members = {
        GroupMemberships = {
            type = "list",
            member_type = "structure",
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
}

M.DescribeGroupInput = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Group = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        Groups = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
}

M.IsMemberInGroupsInput = {
    type = "structure",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberId = {
            type = "union",
            traits = {
                required = true,
            },
        },
        GroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GroupMembershipExistenceResult = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
        },
        MemberId = {
            type = "union",
        },
        MembershipExists = {
            type = "boolean",
        },
    },
}

M.IsMemberInGroupsOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListGroupMembershipsForMemberInput = {
    type = "structure",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberId = {
            type = "union",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupMembershipsForMemberOutput = {
    type = "structure",
    members = {
        GroupMemberships = {
            type = "list",
            member_type = "structure",
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
    members = {
        Value = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Primary = {
            type = "boolean",
        },
    },
}

M.Name = {
    type = "structure",
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
    members = {
        Value = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Primary = {
            type = "boolean",
        },
    },
}

M.Photo = {
    type = "structure",
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
        },
    },
}

M.Role = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Primary = {
            type = "boolean",
        },
    },
}

M.CreateUserInput = {
    type = "structure",
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
        Name = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Addresses = {
            type = "list",
            member_type = "structure",
        },
        PhoneNumbers = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Website = {
            type = "string",
        },
        Birthdate = {
            type = "string",
        },
        Roles = {
            type = "list",
            member_type = "structure",
        },
        Extensions = {
            type = "map",
            key_type = "string",
            value_type = "document",
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
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
}

M.DescribeUserInput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.UserStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DescribeUserOutput = {
    type = "structure",
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
            member_type = "structure",
        },
        Name = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Addresses = {
            type = "list",
            member_type = "structure",
        },
        PhoneNumbers = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Website = {
            type = "string",
        },
        Birthdate = {
            type = "string",
        },
        Roles = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "document",
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    members = {
        IdentityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Extensions = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.User = {
    type = "structure",
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
            member_type = "structure",
        },
        Name = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Addresses = {
            type = "list",
            member_type = "structure",
        },
        PhoneNumbers = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Website = {
            type = "string",
        },
        Birthdate = {
            type = "string",
        },
        Roles = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "document",
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    members = {
        Users = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
}

return M
