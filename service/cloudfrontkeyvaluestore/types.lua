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

M.DeleteKeyInput = {
    type = "structure",
    id = "DeleteKeyInput",
    members = {
        KvsARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.DeleteKeyOutput = {
    type = "structure",
    id = "DeleteKeyOutput",
    members = {
        ItemCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
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

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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

M.DescribeKeyValueStoreInput = {
    type = "structure",
    id = "DescribeKeyValueStoreInput",
    members = {
        KvsARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeKeyValueStoreOutput = {
    type = "structure",
    id = "DescribeKeyValueStoreOutput",
    members = {
        ItemCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        KvsARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Created = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
                required = true,
            },
        },
        LastModified = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.GetKeyInput = {
    type = "structure",
    id = "GetKeyInput",
    members = {
        KvsARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetKeyOutput = {
    type = "structure",
    id = "GetKeyOutput",
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
        ItemCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ListKeysInput = {
    type = "structure",
    id = "ListKeysInput",
    members = {
        KvsARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 10,
                http_query = "MaxResults",
            },
        },
    },
}

M.ListKeysResponseListItem = {
    type = "structure",
    id = "ListKeysResponseListItem",
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

M.ListKeysOutput = {
    type = "structure",
    id = "ListKeysOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.ListKeysResponseListItem,
        },
    },
}

M.PutKeyInput = {
    type = "structure",
    id = "PutKeyInput",
    members = {
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KvsARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.PutKeyOutput = {
    type = "structure",
    id = "PutKeyOutput",
    members = {
        ItemCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
                required = true,
            },
        },
    },
}

M.DeleteKeyRequestListItem = {
    type = "structure",
    id = "DeleteKeyRequestListItem",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutKeyRequestListItem = {
    type = "structure",
    id = "PutKeyRequestListItem",
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

M.UpdateKeysInput = {
    type = "structure",
    id = "UpdateKeysInput",
    members = {
        KvsARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
        Puts = {
            type = "list",
            member = M.PutKeyRequestListItem,
        },
        Deletes = {
            type = "list",
            member = M.DeleteKeyRequestListItem,
        },
    },
}

M.UpdateKeysOutput = {
    type = "structure",
    id = "UpdateKeysOutput",
    members = {
        ItemCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
                required = true,
            },
        },
    },
}

return M
