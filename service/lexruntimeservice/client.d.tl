local types = require("lexruntimeservice.types")

local record Client
    deleteSession: function(Client, types.DeleteSessionInput): types.DeleteSessionOutput, table
    getSession: function(Client, types.GetSessionInput): types.GetSessionOutput, table
    postContent: function(Client, types.PostContentInput): types.PostContentOutput, table
    postText: function(Client, types.PostTextInput): types.PostTextOutput, table
    putSession: function(Client, types.PutSessionInput): types.PutSessionOutput, table
end

local record M
    new: function(table): Client
end

return M
