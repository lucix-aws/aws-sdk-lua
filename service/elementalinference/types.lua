local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClippingConfig = {
    type = "structure",
    members = {
        callbackMetadata = {
            type = "string",
        },
    },
}

M.CroppingConfig = {
    type = "structure",
}

M.OutputConfig = {
    type = "union",
    members = {
        cropping = M.CroppingConfig,
        clipping = M.ClippingConfig,
    },
}

M.OutputStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfig }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.AssociateFeedInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associatedResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputs = {
            type = "list",
            member = M.CreateOutput,
            traits = {
                required = true,
            },
        },
        dryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AssociateFeedOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TooManyRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFeedInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputs = {
            type = "list",
            member = M.CreateOutput,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.FeedAssociation = {
    type = "structure",
    members = {
        associatedResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfig }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        fromAssociation = {
            type = "boolean",
        },
    },
}

M.FeedStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    ARCHIVED = "ARCHIVED",
}

M.CreateFeedOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataEndpoints = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        outputs = {
            type = "list",
            member = M.GetOutput,
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        association = M.FeedAssociation,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteFeedInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFeedOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateFeedInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associatedResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DisassociateFeedOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFeedInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFeedOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataEndpoints = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        outputs = {
            type = "list",
            member = M.GetOutput,
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        association = M.FeedAssociation,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListFeedsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.FeedSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        association = M.FeedAssociation,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFeedsOutput = {
    type = "structure",
    members = {
        feeds = {
            type = "list",
            member = M.FeedSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfig }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        fromAssociation = {
            type = "boolean",
        },
    },
}

M.UpdateFeedInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        outputs = {
            type = "list",
            member = M.UpdateOutput,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFeedOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataEndpoints = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        outputs = {
            type = "list",
            member = M.GetOutput,
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        association = M.FeedAssociation,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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

return M
