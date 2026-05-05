local M = {}

M.QueryParser = {
    simple = "simple",
    structured = "structured",
    lucene = "lucene",
    dismax = "dismax",
}

M.ContentType = {
    application_json = "application/json",
    application_xml = "application/xml",
}

return M
