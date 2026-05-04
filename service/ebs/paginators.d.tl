local record M
    pages_list_changed_blocks: function(client: table, input: table): function(): table, table
    pages_list_snapshot_blocks: function(client: table, input: table): function(): table, table
end

return M
