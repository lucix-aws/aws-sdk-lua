local types = require("mediastoredata.types")

local record Client
    deleteObject: function(Client, types.DeleteObjectInput): types.DeleteObjectOutput, table
    describeObject: function(Client, types.DescribeObjectInput): types.DescribeObjectOutput, table
    getObject: function(Client, types.GetObjectInput): types.GetObjectOutput, table
    listItems: function(Client, types.ListItemsInput): types.ListItemsOutput, table
    putObject: function(Client, types.PutObjectInput): types.PutObjectOutput, table
end

local record M
    new: function(table): Client
end

return M
