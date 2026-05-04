local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "ClippingConfig",
    members = {
        callbackMetadata = {
            type = "string",
        },
    },
}

M.CroppingConfig = {
    type = "structure",
    id = "CroppingConfig",
}

M.OutputConfig = {
    type = "union",
    id = "OutputConfig",
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
    id = "CreateOutput",
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
    id = "AssociateFeedInput",
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
                idempotency_token = true,
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
    id = "AssociateFeedOutput",
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
    id = "ConflictException",
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
    id = "InternalServerErrorException",
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
    id = "ResourceNotFoundException",
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
    id = "ServiceQuotaExceededException",
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
    id = "TooManyRequestException",
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
    id = "ValidationException",
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
    id = "CreateFeedInput",
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
    id = "FeedAssociation",
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
    id = "GetOutput",
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
    id = "CreateFeedOutput",
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
    id = "DeleteFeedInput",
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
    id = "DeleteFeedOutput",
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
    id = "DisassociateFeedInput",
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
                idempotency_token = true,
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
    id = "DisassociateFeedOutput",
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
    id = "GetFeedInput",
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
    id = "GetFeedOutput",
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
    id = "ListFeedsInput",
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
    id = "FeedSummary",
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
    id = "ListFeedsOutput",
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
    id = "UpdateOutput",
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
    id = "UpdateFeedInput",
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
    id = "UpdateFeedOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
