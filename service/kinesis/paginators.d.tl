local record M
    pages_list_stream_consumers: function(client: table, input: table): function(): table, table
    pages_list_streams: function(client: table, input: table): function(): table, table
end

return M
