local M = {}

M.ContainerNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteObjectInput = {
    type = "structure",
    members = {
        Path = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteObjectOutput = {
    type = "structure",
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ObjectNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeObjectInput = {
    type = "structure",
    members = {
        Path = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeObjectOutput = {
    type = "structure",
    members = {
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        ContentLength = {
            type = "long",
            traits = {
                http_header = "Content-Length",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                http_header = "Last-Modified",
            },
        },
    },
}

M.GetObjectInput = {
    type = "structure",
    members = {
        Path = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Range = {
            type = "string",
            traits = {
                http_header = "Range",
            },
        },
    },
}

M.GetObjectOutput = {
    type = "structure",
    members = {
        Body = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ContentRange = {
            type = "string",
            traits = {
                http_header = "Content-Range",
            },
        },
        ContentLength = {
            type = "long",
            traits = {
                http_header = "Content-Length",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                http_header = "Last-Modified",
            },
        },
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
                required = true,
            },
        },
    },
}

M.RequestedRangeNotSatisfiableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ItemType = {
    OBJECT = "OBJECT",
    FOLDER = "FOLDER",
}

M.Item = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        ContentType = {
            type = "string",
        },
        ContentLength = {
            type = "long",
        },
    },
}

M.ListItemsInput = {
    type = "structure",
    members = {
        Path = {
            type = "string",
            traits = {
                http_query = "Path",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListItemsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.Item,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StorageClass = {
    TEMPORAL = "TEMPORAL",
}

M.UploadAvailability = {
    STANDARD = "STANDARD",
    STREAMING = "STREAMING",
}

M.PutObjectInput = {
    type = "structure",
    members = {
        Body = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        Path = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        StorageClass = {
            type = "string",
            traits = {
                http_header = "x-amz-storage-class",
            },
        },
        UploadAvailability = {
            type = "string",
            traits = {
                http_header = "x-amz-upload-availability",
            },
        },
    },
}

M.PutObjectOutput = {
    type = "structure",
    members = {
        ContentSHA256 = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        StorageClass = {
            type = "string",
        },
    },
}

return M
