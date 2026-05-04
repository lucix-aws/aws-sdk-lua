local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateProfileInput = {
    type = "structure",
    id = "AssociateProfileInput",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ProfileStatus = {
    COMPLETE = "COMPLETE",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    CREATING = "CREATING",
    DELETED = "DELETED",
    FAILED = "FAILED",
}

M.ProfileAssociation = {
    type = "structure",
    id = "ProfileAssociation",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ModificationTime = {
            type = "timestamp",
        },
    },
}

M.AssociateProfileOutput = {
    type = "structure",
    id = "AssociateProfileOutput",
    members = {
        ProfileAssociation = M.ProfileAssociation,
    },
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

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldName = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.ResourceExistsException = {
    type = "structure",
    id = "ResourceExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
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
        ResourceType = {
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
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateResourceToProfileInput = {
    type = "structure",
    id = "AssociateResourceToProfileInput",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceProperties = {
            type = "string",
        },
    },
}

M.ProfileResourceAssociation = {
    type = "structure",
    id = "ProfileResourceAssociation",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceProperties = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ModificationTime = {
            type = "timestamp",
        },
    },
}

M.AssociateResourceToProfileOutput = {
    type = "structure",
    id = "AssociateResourceToProfileOutput",
    members = {
        ProfileResourceAssociation = M.ProfileResourceAssociation,
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    id = "InternalServiceErrorException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateProfileInput = {
    type = "structure",
    id = "CreateProfileInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ShareStatus = {
    NOT_SHARED = "NOT_SHARED",
    SHARED_WITH_ME = "SHARED_WITH_ME",
    SHARED_BY_ME = "SHARED_BY_ME",
}

M.Profile = {
    type = "structure",
    id = "Profile",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ShareStatus = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ModificationTime = {
            type = "timestamp",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateProfileOutput = {
    type = "structure",
    id = "CreateProfileOutput",
    members = {
        Profile = M.Profile,
    },
}

M.DeleteProfileInput = {
    type = "structure",
    id = "DeleteProfileInput",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProfileOutput = {
    type = "structure",
    id = "DeleteProfileOutput",
    members = {
        Profile = M.Profile,
    },
}

M.DisassociateProfileInput = {
    type = "structure",
    id = "DisassociateProfileInput",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateProfileOutput = {
    type = "structure",
    id = "DisassociateProfileOutput",
    members = {
        ProfileAssociation = M.ProfileAssociation,
    },
}

M.DisassociateResourceFromProfileInput = {
    type = "structure",
    id = "DisassociateResourceFromProfileInput",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateResourceFromProfileOutput = {
    type = "structure",
    id = "DisassociateResourceFromProfileOutput",
    members = {
        ProfileResourceAssociation = M.ProfileResourceAssociation,
    },
}

M.GetProfileInput = {
    type = "structure",
    id = "GetProfileInput",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProfileOutput = {
    type = "structure",
    id = "GetProfileOutput",
    members = {
        Profile = M.Profile,
    },
}

M.GetProfileAssociationInput = {
    type = "structure",
    id = "GetProfileAssociationInput",
    members = {
        ProfileAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProfileAssociationOutput = {
    type = "structure",
    id = "GetProfileAssociationOutput",
    members = {
        ProfileAssociation = M.ProfileAssociation,
    },
}

M.GetProfileResourceAssociationInput = {
    type = "structure",
    id = "GetProfileResourceAssociationInput",
    members = {
        ProfileResourceAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProfileResourceAssociationOutput = {
    type = "structure",
    id = "GetProfileResourceAssociationOutput",
    members = {
        ProfileResourceAssociation = M.ProfileResourceAssociation,
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListProfileAssociationsInput = {
    type = "structure",
    id = "ListProfileAssociationsInput",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                http_query = "resourceId",
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                http_query = "profileId",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListProfileAssociationsOutput = {
    type = "structure",
    id = "ListProfileAssociationsOutput",
    members = {
        ProfileAssociations = {
            type = "list",
            member = M.ProfileAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProfileResourceAssociationsInput = {
    type = "structure",
    id = "ListProfileResourceAssociationsInput",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListProfileResourceAssociationsOutput = {
    type = "structure",
    id = "ListProfileResourceAssociationsOutput",
    members = {
        ProfileResourceAssociations = {
            type = "list",
            member = M.ProfileResourceAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProfilesInput = {
    type = "structure",
    id = "ListProfilesInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ProfileSummary = {
    type = "structure",
    id = "ProfileSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ShareStatus = {
            type = "string",
        },
    },
}

M.ListProfilesOutput = {
    type = "structure",
    id = "ListProfilesOutput",
    members = {
        ProfileSummaries = {
            type = "list",
            member = M.ProfileSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateProfileResourceAssociationInput = {
    type = "structure",
    id = "UpdateProfileResourceAssociationInput",
    members = {
        ProfileResourceAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        ResourceProperties = {
            type = "string",
        },
    },
}

M.UpdateProfileResourceAssociationOutput = {
    type = "structure",
    id = "UpdateProfileResourceAssociationOutput",
    members = {
        ProfileResourceAssociation = M.ProfileResourceAssociation,
    },
}

return M
