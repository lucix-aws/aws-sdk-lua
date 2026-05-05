local M = {}

M.TypeHint = {
    JSON = "JSON",
    UUID = "UUID",
    TIMESTAMP = "TIMESTAMP",
    DATE = "DATE",
    TIME = "TIME",
    DECIMAL = "DECIMAL",
}

M.DecimalReturnType = {
    STRING = "STRING",
    DOUBLE_OR_LONG = "DOUBLE_OR_LONG",
}

M.RecordsFormatType = {
    NONE = "NONE",
    JSON = "JSON",
}

M.LongReturnType = {
    STRING = "STRING",
    LONG = "LONG",
}

return M
