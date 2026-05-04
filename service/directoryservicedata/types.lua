local M = {}

M.AccessDeniedReason = {
    IAM_AUTH = "IAM_AUTH",
    DIRECTORY_AUTH = "DIRECTORY_AUTH",
    DATA_DISABLED = "DATA_DISABLED",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.AddGroupMemberInput = {
    type = "structure",
    id = "AddGroupMemberInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberRealm = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AddGroupMemberOutput = {
    type = "structure",
    id = "AddGroupMemberOutput",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DirectoryUnavailableReason = {
    INVALID_DIRECTORY_STATE = "INVALID_DIRECTORY_STATE",
    DIRECTORY_TIMEOUT = "DIRECTORY_TIMEOUT",
    DIRECTORY_RESOURCES_EXCEEDED = "DIRECTORY_RESOURCES_EXCEEDED",
    NO_DISK_SPACE = "NO_DISK_SPACE",
    TRUST_AUTH_FAILURE = "TRUST_AUTH_FAILURE",
}

M.DirectoryUnavailableException = {
    type = "structure",
    id = "DirectoryUnavailableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
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
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionReason = {
    INVALID_REALM = "INVALID_REALM",
    INVALID_DIRECTORY_TYPE = "INVALID_DIRECTORY_TYPE",
    INVALID_SECONDARY_REGION = "INVALID_SECONDARY_REGION",
    INVALID_NEXT_TOKEN = "INVALID_NEXT_TOKEN",
    INVALID_ATTRIBUTE_VALUE = "INVALID_ATTRIBUTE_VALUE",
    INVALID_ATTRIBUTE_NAME = "INVALID_ATTRIBUTE_NAME",
    INVALID_ATTRIBUTE_FOR_USER = "INVALID_ATTRIBUTE_FOR_USER",
    INVALID_ATTRIBUTE_FOR_GROUP = "INVALID_ATTRIBUTE_FOR_GROUP",
    INVALID_ATTRIBUTE_FOR_SEARCH = "INVALID_ATTRIBUTE_FOR_SEARCH",
    INVALID_ATTRIBUTE_FOR_MODIFY = "INVALID_ATTRIBUTE_FOR_MODIFY",
    DUPLICATE_ATTRIBUTE = "DUPLICATE_ATTRIBUTE",
    MISSING_ATTRIBUTE = "MISSING_ATTRIBUTE",
    ATTRIBUTE_EXISTS = "ATTRIBUTE_EXISTS",
    LDAP_SIZE_LIMIT_EXCEEDED = "LDAP_SIZE_LIMIT_EXCEEDED",
    LDAP_UNSUPPORTED_OPERATION = "LDAP_UNSUPPORTED_OPERATION",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.AttributeValue = {
    type = "union",
    id = "AttributeValue",
    members = {
        S = {
            type = "string",
        },
        N = {
            type = "long",
        },
        BOOL = {
            type = "boolean",
        },
        SS = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GroupScope = {
    DOMAIN_LOCAL = "DomainLocal",
    GLOBAL = "Global",
    UNIVERSAL = "Universal",
    BUILTIN_LOCAL = "BuiltinLocal",
}

M.GroupType = {
    DISTRIBUTION = "Distribution",
    SECURITY = "Security",
}

M.CreateGroupInput = {
    type = "structure",
    id = "CreateGroupInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupType = {
            type = "string",
        },
        GroupScope = {
            type = "string",
        },
        OtherAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    id = "CreateGroupOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        SAMAccountName = {
            type = "string",
        },
        SID = {
            type = "string",
        },
    },
}

M.CreateUserInput = {
    type = "structure",
    id = "CreateUserInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EmailAddress = {
            type = "string",
        },
        GivenName = {
            type = "string",
        },
        Surname = {
            type = "string",
        },
        OtherAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    id = "CreateUserOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        SID = {
            type = "string",
        },
        SAMAccountName = {
            type = "string",
        },
    },
}

M.DeleteGroupInput = {
    type = "structure",
    id = "DeleteGroupInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
    id = "DeleteGroupOutput",
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
    id = "DeleteUserOutput",
}

M.DescribeGroupInput = {
    type = "structure",
    id = "DescribeGroupInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        Realm = {
            type = "string",
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OtherAttributes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeGroupOutput = {
    type = "structure",
    id = "DescribeGroupOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        Realm = {
            type = "string",
        },
        SID = {
            type = "string",
        },
        SAMAccountName = {
            type = "string",
        },
        DistinguishedName = {
            type = "string",
        },
        GroupType = {
            type = "string",
        },
        GroupScope = {
            type = "string",
        },
        OtherAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
    },
}

M.DescribeUserInput = {
    type = "structure",
    id = "DescribeUserInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OtherAttributes = {
            type = "list",
            member = { type = "string" },
        },
        Realm = {
            type = "string",
        },
    },
}

M.DescribeUserOutput = {
    type = "structure",
    id = "DescribeUserOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        Realm = {
            type = "string",
        },
        SID = {
            type = "string",
        },
        SAMAccountName = {
            type = "string",
        },
        DistinguishedName = {
            type = "string",
        },
        UserPrincipalName = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        GivenName = {
            type = "string",
        },
        Surname = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        OtherAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
    },
}

M.DisableUserInput = {
    type = "structure",
    id = "DisableUserInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DisableUserOutput = {
    type = "structure",
    id = "DisableUserOutput",
}

M.ListGroupMembersInput = {
    type = "structure",
    id = "ListGroupMembersInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        Realm = {
            type = "string",
        },
        MemberRealm = {
            type = "string",
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.MemberType = {
    USER = "USER",
    GROUP = "GROUP",
    COMPUTER = "COMPUTER",
}

M.Member = {
    type = "structure",
    id = "Member",
    members = {
        SID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListGroupMembersOutput = {
    type = "structure",
    id = "ListGroupMembersOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        Realm = {
            type = "string",
        },
        MemberRealm = {
            type = "string",
        },
        Members = {
            type = "list",
            member = M.Member,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    id = "ListGroupsInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        Realm = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GroupSummary = {
    type = "structure",
    id = "GroupSummary",
    members = {
        SID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupScope = {
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
        DirectoryId = {
            type = "string",
        },
        Realm = {
            type = "string",
        },
        Groups = {
            type = "list",
            member = M.GroupSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsForMemberInput = {
    type = "structure",
    id = "ListGroupsForMemberInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        Realm = {
            type = "string",
        },
        MemberRealm = {
            type = "string",
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListGroupsForMemberOutput = {
    type = "structure",
    id = "ListGroupsForMemberOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        Realm = {
            type = "string",
        },
        MemberRealm = {
            type = "string",
        },
        Groups = {
            type = "list",
            member = M.GroupSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    id = "ListUsersInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        Realm = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.UserSummary = {
    type = "structure",
    id = "UserSummary",
    members = {
        SID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GivenName = {
            type = "string",
        },
        Surname = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    id = "ListUsersOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        Realm = {
            type = "string",
        },
        Users = {
            type = "list",
            member = M.UserSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RemoveGroupMemberInput = {
    type = "structure",
    id = "RemoveGroupMemberInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberRealm = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.RemoveGroupMemberOutput = {
    type = "structure",
    id = "RemoveGroupMemberOutput",
}

M.SearchGroupsInput = {
    type = "structure",
    id = "SearchGroupsInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        SearchString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SearchAttributes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Realm = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Group = {
    type = "structure",
    id = "Group",
    members = {
        SID = {
            type = "string",
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DistinguishedName = {
            type = "string",
        },
        GroupType = {
            type = "string",
        },
        GroupScope = {
            type = "string",
        },
        OtherAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
    },
}

M.SearchGroupsOutput = {
    type = "structure",
    id = "SearchGroupsOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        Realm = {
            type = "string",
        },
        Groups = {
            type = "list",
            member = M.Group,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SearchUsersInput = {
    type = "structure",
    id = "SearchUsersInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        Realm = {
            type = "string",
        },
        SearchString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SearchAttributes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        SID = {
            type = "string",
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DistinguishedName = {
            type = "string",
        },
        UserPrincipalName = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        GivenName = {
            type = "string",
        },
        Surname = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        OtherAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
    },
}

M.SearchUsersOutput = {
    type = "structure",
    id = "SearchUsersOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        Realm = {
            type = "string",
        },
        Users = {
            type = "list",
            member = M.User,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateType = {
    ADD = "ADD",
    REPLACE = "REPLACE",
    REMOVE = "REMOVE",
}

M.UpdateGroupInput = {
    type = "structure",
    id = "UpdateGroupInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupType = {
            type = "string",
        },
        GroupScope = {
            type = "string",
        },
        OtherAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        UpdateType = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
    id = "UpdateGroupOutput",
}

M.UpdateUserInput = {
    type = "structure",
    id = "UpdateUserInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                http_query = "DirectoryId",
                required = true,
            },
        },
        SAMAccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EmailAddress = {
            type = "string",
        },
        GivenName = {
            type = "string",
        },
        Surname = {
            type = "string",
        },
        OtherAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        UpdateType = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    id = "UpdateUserOutput",
}

return M
