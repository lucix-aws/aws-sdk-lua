local M = {}

M.SearchException = {
    type = "structure",
    id = "SearchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueryParser = {
    simple = "simple",
    structured = "structured",
    lucene = "lucene",
    dismax = "dismax",
}

M.SearchInput = {
    type = "structure",
    id = "SearchInput",
    members = {
        cursor = {
            type = "string",
            traits = {
                http_query = "cursor",
            },
        },
        expr = {
            type = "string",
            traits = {
                http_query = "expr",
            },
        },
        facet = {
            type = "string",
            traits = {
                http_query = "facet",
            },
        },
        filterQuery = {
            type = "string",
            traits = {
                http_query = "fq",
            },
        },
        highlight = {
            type = "string",
            traits = {
                http_query = "highlight",
            },
        },
        partial = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "partial",
            },
        },
        query = {
            type = "string",
            traits = {
                http_query = "q",
                required = true,
            },
        },
        queryOptions = {
            type = "string",
            traits = {
                http_query = "q.options",
            },
        },
        queryParser = {
            type = "string",
            traits = {
                http_query = "q.parser",
            },
        },
        return = {
            type = "string",
            traits = {
                http_query = "return",
            },
        },
        size = {
            type = "long",
            traits = {
                default = 0,
                http_query = "size",
            },
        },
        sort = {
            type = "string",
            traits = {
                http_query = "sort",
            },
        },
        start = {
            type = "long",
            traits = {
                default = 0,
                http_query = "start",
            },
        },
        stats = {
            type = "string",
            traits = {
                http_query = "stats",
            },
        },
    },
}

M.Bucket = {
    type = "structure",
    id = "Bucket",
    members = {
        value = {
            type = "string",
        },
        count = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.BucketInfo = {
    type = "structure",
    id = "BucketInfo",
    members = {
        buckets = {
            type = "list",
            member = M.Bucket,
        },
    },
}

M.Hit = {
    type = "structure",
    id = "Hit",
    members = {
        id = {
            type = "string",
        },
        fields = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        exprs = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        highlights = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Hits = {
    type = "structure",
    id = "Hits",
    members = {
        found = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        start = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        cursor = {
            type = "string",
        },
        hit = {
            type = "list",
            member = M.Hit,
        },
    },
}

M.FieldStats = {
    type = "structure",
    id = "FieldStats",
    members = {
        min = {
            type = "string",
        },
        max = {
            type = "string",
        },
        count = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        missing = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        sum = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        sumOfSquares = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        mean = {
            type = "string",
        },
        stddev = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.SearchStatus = {
    type = "structure",
    id = "SearchStatus",
    members = {
        timems = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        rid = {
            type = "string",
        },
    },
}

M.SearchOutput = {
    type = "structure",
    id = "SearchOutput",
    members = {
        status = M.SearchStatus,
        hits = M.Hits,
        facets = {
            type = "map",
            key = { type = "string" },
            value = M.BucketInfo,
        },
        stats = {
            type = "map",
            key = { type = "string" },
            value = M.FieldStats,
        },
    },
}

M.SuggestInput = {
    type = "structure",
    id = "SuggestInput",
    members = {
        query = {
            type = "string",
            traits = {
                http_query = "q",
                required = true,
            },
        },
        suggester = {
            type = "string",
            traits = {
                http_query = "suggester",
                required = true,
            },
        },
        size = {
            type = "long",
            traits = {
                default = 0,
                http_query = "size",
            },
        },
    },
}

M.SuggestStatus = {
    type = "structure",
    id = "SuggestStatus",
    members = {
        timems = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        rid = {
            type = "string",
        },
    },
}

M.SuggestionMatch = {
    type = "structure",
    id = "SuggestionMatch",
    members = {
        suggestion = {
            type = "string",
        },
        score = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        id = {
            type = "string",
        },
    },
}

M.SuggestModel = {
    type = "structure",
    id = "SuggestModel",
    members = {
        query = {
            type = "string",
        },
        found = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        suggestions = {
            type = "list",
            member = M.SuggestionMatch,
        },
    },
}

M.SuggestOutput = {
    type = "structure",
    id = "SuggestOutput",
    members = {
        status = M.SuggestStatus,
        suggest = M.SuggestModel,
    },
}

M.DocumentServiceException = {
    type = "structure",
    id = "DocumentServiceException",
    error = "client",
    members = {
        status = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ContentType = {
    application_json = "application/json",
    application_xml = "application/xml",
}

M.UploadDocumentsInput = {
    type = "structure",
    id = "UploadDocumentsInput",
    members = {
        documents = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
                required = true,
            },
        },
    },
}

M.DocumentServiceWarning = {
    type = "structure",
    id = "DocumentServiceWarning",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UploadDocumentsOutput = {
    type = "structure",
    id = "UploadDocumentsOutput",
    members = {
        status = {
            type = "string",
        },
        adds = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        deletes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        warnings = {
            type = "list",
            member = M.DocumentServiceWarning,
        },
    },
}

return M
