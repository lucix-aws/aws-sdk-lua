local M = {}

M.SearchException = {
    type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
    members = {
        value = {
            type = "string",
        },
        count = {
            type = "number",
        },
    },
}

M.BucketInfo = {
    type = "structure",
    members = {
        buckets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Hit = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        fields = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        exprs = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        highlights = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Hits = {
    type = "structure",
    members = {
        found = {
            type = "number",
        },
        start = {
            type = "number",
        },
        cursor = {
            type = "string",
        },
        hit = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FieldStats = {
    type = "structure",
    members = {
        min = {
            type = "string",
        },
        max = {
            type = "string",
        },
        count = {
            type = "number",
        },
        missing = {
            type = "number",
        },
        sum = {
            type = "number",
        },
        sumOfSquares = {
            type = "number",
        },
        mean = {
            type = "string",
        },
        stddev = {
            type = "number",
        },
    },
}

M.SearchStatus = {
    type = "structure",
    members = {
        timems = {
            type = "number",
        },
        rid = {
            type = "string",
        },
    },
}

M.SearchOutput = {
    type = "structure",
    members = {
        status = {
            type = "structure",
        },
        hits = {
            type = "structure",
        },
        facets = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        stats = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.SuggestInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "size",
            },
        },
    },
}

M.SuggestStatus = {
    type = "structure",
    members = {
        timems = {
            type = "number",
        },
        rid = {
            type = "string",
        },
    },
}

M.SuggestionMatch = {
    type = "structure",
    members = {
        suggestion = {
            type = "string",
        },
        score = {
            type = "number",
        },
        id = {
            type = "string",
        },
    },
}

M.SuggestModel = {
    type = "structure",
    members = {
        query = {
            type = "string",
        },
        found = {
            type = "number",
        },
        suggestions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SuggestOutput = {
    type = "structure",
    members = {
        status = {
            type = "structure",
        },
        suggest = {
            type = "structure",
        },
    },
}

M.DocumentServiceException = {
    type = "structure",
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
    members = {
        message = {
            type = "string",
        },
    },
}

M.UploadDocumentsOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        adds = {
            type = "number",
        },
        deletes = {
            type = "number",
        },
        warnings = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
