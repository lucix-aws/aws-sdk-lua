local types = require("cloudsearchdomain.types")

local record Client
    search: function(Client, types.SearchInput): types.SearchOutput, table
    suggest: function(Client, types.SuggestInput): types.SuggestOutput, table
    uploadDocuments: function(Client, types.UploadDocumentsInput): types.UploadDocumentsOutput, table
end

local record M
    new: function(table): Client
end

return M
