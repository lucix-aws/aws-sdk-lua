local types = require("keyspacesstreams.types")

local record Client
    getRecords: function(Client, types.GetRecordsInput): types.GetRecordsOutput, table
    getShardIterator: function(Client, types.GetShardIteratorInput): types.GetShardIteratorOutput, table
    getStream: function(Client, types.GetStreamInput): types.GetStreamOutput, table
    listStreams: function(Client, types.ListStreamsInput): types.ListStreamsOutput, table
end

local record M
    new: function(table): Client
end

return M
