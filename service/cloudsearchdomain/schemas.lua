local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.cloudsearchdomain"

local M = {}

M.SearchException = schema.new({
    id = id.from(_N, "SearchException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SearchException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchInput = schema.new({
    id = id.from(_N, "SearchInput"),
    type = "structure",
    members = {
        cursor = schema.new({
            id = id.from(_N, "SearchInput", "cursor"),
            type = "string",
            name = "cursor",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "cursor" },
            },
        }),
        expr = schema.new({
            id = id.from(_N, "SearchInput", "expr"),
            type = "string",
            name = "expr",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "expr" },
            },
        }),
        facet = schema.new({
            id = id.from(_N, "SearchInput", "facet"),
            type = "string",
            name = "facet",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "facet" },
            },
        }),
        filterQuery = schema.new({
            id = id.from(_N, "SearchInput", "filterQuery"),
            type = "string",
            name = "filterQuery",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "fq" },
            },
        }),
        highlight = schema.new({
            id = id.from(_N, "SearchInput", "highlight"),
            type = "string",
            name = "highlight",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "highlight" },
            },
        }),
        partial = schema.new({
            id = id.from(_N, "SearchInput", "partial"),
            type = "boolean",
            name = "partial",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "partial" },
            },
        }),
        query = schema.new({
            id = id.from(_N, "SearchInput", "query"),
            type = "string",
            name = "query",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "q" },
            },
        }),
        queryOptions = schema.new({
            id = id.from(_N, "SearchInput", "queryOptions"),
            type = "string",
            name = "queryOptions",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "q.options" },
            },
        }),
        queryParser = schema.new({
            id = id.from(_N, "SearchInput", "queryParser"),
            type = "string",
            name = "queryParser",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "q.parser" },
            },
        }),
        return = schema.new({
            id = id.from(_N, "SearchInput", "return"),
            type = "string",
            name = "return",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "return" },
            },
        }),
        size = schema.new({
            id = id.from(_N, "SearchInput", "size"),
            type = "long",
            name = "size",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "size" },
            },
        }),
        sort = schema.new({
            id = id.from(_N, "SearchInput", "sort"),
            type = "string",
            name = "sort",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sort" },
            },
        }),
        start = schema.new({
            id = id.from(_N, "SearchInput", "start"),
            type = "long",
            name = "start",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "start" },
            },
        }),
        stats = schema.new({
            id = id.from(_N, "SearchInput", "stats"),
            type = "string",
            name = "stats",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "stats" },
            },
        }),
    },
})

M.Bucket = schema.new({
    id = id.from(_N, "Bucket"),
    type = "structure",
    members = {
        value = schema.new({
            id = id.from(_N, "Bucket", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        count = schema.new({
            id = id.from(_N, "Bucket", "count"),
            type = "long",
            name = "count",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.BucketInfo = schema.new({
    id = id.from(_N, "BucketInfo"),
    type = "structure",
    members = {
        buckets = schema.new({
            id = id.from(_N, "BucketInfo", "buckets"),
            type = "list",
            name = "buckets",
            target_id = prelude.Document.id,
            list_member = M.Bucket,
        }),
    },
})

M.Hit = schema.new({
    id = id.from(_N, "Hit"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Hit", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        fields = schema.new({
            id = id.from(_N, "Hit", "fields"),
            type = "map",
            name = "fields",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        exprs = schema.new({
            id = id.from(_N, "Hit", "exprs"),
            type = "map",
            name = "exprs",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        highlights = schema.new({
            id = id.from(_N, "Hit", "highlights"),
            type = "map",
            name = "highlights",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.Hits = schema.new({
    id = id.from(_N, "Hits"),
    type = "structure",
    members = {
        found = schema.new({
            id = id.from(_N, "Hits", "found"),
            type = "long",
            name = "found",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        start = schema.new({
            id = id.from(_N, "Hits", "start"),
            type = "long",
            name = "start",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        cursor = schema.new({
            id = id.from(_N, "Hits", "cursor"),
            type = "string",
            name = "cursor",
            target_id = prelude.String.id,
        }),
        hit = schema.new({
            id = id.from(_N, "Hits", "hit"),
            type = "list",
            name = "hit",
            target_id = prelude.Document.id,
            list_member = M.Hit,
        }),
    },
})

M.FieldStats = schema.new({
    id = id.from(_N, "FieldStats"),
    type = "structure",
    members = {
        min = schema.new({
            id = id.from(_N, "FieldStats", "min"),
            type = "string",
            name = "min",
            target_id = prelude.String.id,
        }),
        max = schema.new({
            id = id.from(_N, "FieldStats", "max"),
            type = "string",
            name = "max",
            target_id = prelude.String.id,
        }),
        count = schema.new({
            id = id.from(_N, "FieldStats", "count"),
            type = "long",
            name = "count",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        missing = schema.new({
            id = id.from(_N, "FieldStats", "missing"),
            type = "long",
            name = "missing",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        sum = schema.new({
            id = id.from(_N, "FieldStats", "sum"),
            type = "double",
            name = "sum",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        sumOfSquares = schema.new({
            id = id.from(_N, "FieldStats", "sumOfSquares"),
            type = "double",
            name = "sumOfSquares",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        mean = schema.new({
            id = id.from(_N, "FieldStats", "mean"),
            type = "string",
            name = "mean",
            target_id = prelude.String.id,
        }),
        stddev = schema.new({
            id = id.from(_N, "FieldStats", "stddev"),
            type = "double",
            name = "stddev",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.SearchStatus = schema.new({
    id = id.from(_N, "SearchStatus"),
    type = "structure",
    members = {
        timems = schema.new({
            id = id.from(_N, "SearchStatus", "timems"),
            type = "long",
            name = "timems",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        rid = schema.new({
            id = id.from(_N, "SearchStatus", "rid"),
            type = "string",
            name = "rid",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchOutput = schema.new({
    id = id.from(_N, "SearchOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "SearchOutput", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "SearchStatus"),
            target = M.SearchStatus,
        }),
        hits = schema.new({
            id = id.from(_N, "SearchOutput", "hits"),
            type = "structure",
            name = "hits",
            target_id = id.from(_N, "Hits"),
            target = M.Hits,
        }),
        facets = schema.new({
            id = id.from(_N, "SearchOutput", "facets"),
            type = "map",
            name = "facets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.BucketInfo,
        }),
        stats = schema.new({
            id = id.from(_N, "SearchOutput", "stats"),
            type = "map",
            name = "stats",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.FieldStats,
        }),
    },
})

M.SuggestInput = schema.new({
    id = id.from(_N, "SuggestInput"),
    type = "structure",
    members = {
        query = schema.new({
            id = id.from(_N, "SuggestInput", "query"),
            type = "string",
            name = "query",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "q" },
            },
        }),
        suggester = schema.new({
            id = id.from(_N, "SuggestInput", "suggester"),
            type = "string",
            name = "suggester",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "suggester" },
            },
        }),
        size = schema.new({
            id = id.from(_N, "SuggestInput", "size"),
            type = "long",
            name = "size",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "size" },
            },
        }),
    },
})

M.SuggestStatus = schema.new({
    id = id.from(_N, "SuggestStatus"),
    type = "structure",
    members = {
        timems = schema.new({
            id = id.from(_N, "SuggestStatus", "timems"),
            type = "long",
            name = "timems",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        rid = schema.new({
            id = id.from(_N, "SuggestStatus", "rid"),
            type = "string",
            name = "rid",
            target_id = prelude.String.id,
        }),
    },
})

M.SuggestionMatch = schema.new({
    id = id.from(_N, "SuggestionMatch"),
    type = "structure",
    members = {
        suggestion = schema.new({
            id = id.from(_N, "SuggestionMatch", "suggestion"),
            type = "string",
            name = "suggestion",
            target_id = prelude.String.id,
        }),
        score = schema.new({
            id = id.from(_N, "SuggestionMatch", "score"),
            type = "long",
            name = "score",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        id = schema.new({
            id = id.from(_N, "SuggestionMatch", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
    },
})

M.SuggestModel = schema.new({
    id = id.from(_N, "SuggestModel"),
    type = "structure",
    members = {
        query = schema.new({
            id = id.from(_N, "SuggestModel", "query"),
            type = "string",
            name = "query",
            target_id = prelude.String.id,
        }),
        found = schema.new({
            id = id.from(_N, "SuggestModel", "found"),
            type = "long",
            name = "found",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        suggestions = schema.new({
            id = id.from(_N, "SuggestModel", "suggestions"),
            type = "list",
            name = "suggestions",
            target_id = prelude.Document.id,
            list_member = M.SuggestionMatch,
        }),
    },
})

M.SuggestOutput = schema.new({
    id = id.from(_N, "SuggestOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "SuggestOutput", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "SuggestStatus"),
            target = M.SuggestStatus,
        }),
        suggest = schema.new({
            id = id.from(_N, "SuggestOutput", "suggest"),
            type = "structure",
            name = "suggest",
            target_id = id.from(_N, "SuggestModel"),
            target = M.SuggestModel,
        }),
    },
})

M.DocumentServiceException = schema.new({
    id = id.from(_N, "DocumentServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        status = schema.new({
            id = id.from(_N, "DocumentServiceException", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "DocumentServiceException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UploadDocumentsInput = schema.new({
    id = id.from(_N, "UploadDocumentsInput"),
    type = "structure",
    members = {
        documents = schema.new({
            id = id.from(_N, "UploadDocumentsInput", "documents"),
            type = "blob",
            name = "documents",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        contentType = schema.new({
            id = id.from(_N, "UploadDocumentsInput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
    },
})

M.DocumentServiceWarning = schema.new({
    id = id.from(_N, "DocumentServiceWarning"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "DocumentServiceWarning", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UploadDocumentsOutput = schema.new({
    id = id.from(_N, "UploadDocumentsOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "UploadDocumentsOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        adds = schema.new({
            id = id.from(_N, "UploadDocumentsOutput", "adds"),
            type = "long",
            name = "adds",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        deletes = schema.new({
            id = id.from(_N, "UploadDocumentsOutput", "deletes"),
            type = "long",
            name = "deletes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        warnings = schema.new({
            id = id.from(_N, "UploadDocumentsOutput", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = M.DocumentServiceWarning,
        }),
    },
})

return M
