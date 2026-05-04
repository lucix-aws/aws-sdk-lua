local M = {}

M.AccessDeniedReason = {
    IAM_AUTH = "IAM_AUTH",
    DIRECTORY_AUTH = "DIRECTORY_AUTH",
    DATA_DISABLED = "DATA_DISABLED",
}

M.AccessDeniedException = {
    type = "structure",
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
        },
    },
}

M.AddGroupMemberOutput = {
    type = "structure",
}

M.ConflictException = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
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
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
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
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
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
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
}

M.DeleteUserInput = {
    type = "structure",
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
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
}

M.DescribeGroupInput = {
    type = "structure",
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
        },
    },
}

M.DisableUserOutput = {
    type = "structure",
}

M.ListGroupMembersInput = {
    type = "structure",
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
        },
    },
}

M.RemoveGroupMemberOutput = {
    type = "structure",
}

M.SearchGroupsInput = {
    type = "structure",
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
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
}

M.UpdateUserInput = {
    type = "structure",
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
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
}

return M
