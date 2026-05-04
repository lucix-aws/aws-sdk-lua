local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
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
    members = {
        ProfileAssociation = M.ProfileAssociation,
    },
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

M.InvalidParameterException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateResourceToProfileInput = {
    type = "structure",
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
    members = {
        ProfileResourceAssociation = M.ProfileResourceAssociation,
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateProfileInput = {
    type = "structure",
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
    members = {
        Profile = M.Profile,
    },
}

M.DeleteProfileInput = {
    type = "structure",
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
    members = {
        Profile = M.Profile,
    },
}

M.DisassociateProfileInput = {
    type = "structure",
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
    members = {
        ProfileAssociation = M.ProfileAssociation,
    },
}

M.DisassociateResourceFromProfileInput = {
    type = "structure",
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
    members = {
        ProfileResourceAssociation = M.ProfileResourceAssociation,
    },
}

M.GetProfileInput = {
    type = "structure",
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
    members = {
        Profile = M.Profile,
    },
}

M.GetProfileAssociationInput = {
    type = "structure",
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
    members = {
        ProfileAssociation = M.ProfileAssociation,
    },
}

M.GetProfileResourceAssociationInput = {
    type = "structure",
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
    members = {
        ProfileResourceAssociation = M.ProfileResourceAssociation,
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListProfileAssociationsInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateProfileResourceAssociationInput = {
    type = "structure",
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
    members = {
        ProfileResourceAssociation = M.ProfileResourceAssociation,
    },
}

return M
