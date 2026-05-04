local record M
    pages_list_dead_letter_source_queues: function(client: table, input: table): function(): table, table
    items_list_dead_letter_source_queues: function(client: table, input: table): function(): any
    pages_list_queues: function(client: table, input: table): function(): table, table
    items_list_queues: function(client: table, input: table): function(): any
end

return M
