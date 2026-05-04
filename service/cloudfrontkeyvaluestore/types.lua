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

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteKeyInput = {
    type = "structure",
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

M.ServiceQuotaExceededException = {
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

M.DescribeKeyValueStoreInput = {
    type = "structure",
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
