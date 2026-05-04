local record SearchInput
    cursor: string
    expr: string
    facet: string
    filterQuery: string
    highlight: string
    partial: boolean
    query: string
    queryOptions: string
    queryParser: string
    return: string
    size: number
    sort: string
    start: number
    stats: string
end

local record SearchOutput
    status: SearchStatus
    hits: Hits
    facets: {string : BucketInfo}
    stats: {string : FieldStats}
end

local record SuggestInput
    query: string
    suggester: string
    size: number
end

local record SuggestOutput
    status: SuggestStatus
    suggest: SuggestModel
end

local record UploadDocumentsInput
    documents: string
    contentType: string
end

local record UploadDocumentsOutput
    status: string
    adds: number
    deletes: number
    warnings: {DocumentServiceWarning}
end

local record SearchException
    message: string
end

local record SearchException
    message: string
end

local record DocumentServiceException
    status: string
    message: string
end

local type ContentType = "application/json" | "application/xml"

local type QueryParser = "simple" | "structured" | "lucene" | "dismax"

local record M
    SearchInput: SearchInput
    SearchOutput: SearchOutput
    SuggestInput: SuggestInput
    SuggestOutput: SuggestOutput
    UploadDocumentsInput: UploadDocumentsInput
    UploadDocumentsOutput: UploadDocumentsOutput
end

return M
