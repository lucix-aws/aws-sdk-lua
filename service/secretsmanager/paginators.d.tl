local record M
    pages_batch_get_secret_value: function(client: table, input: table): function(): table, table
    pages_list_secret_version_ids: function(client: table, input: table): function(): table, table
    pages_list_secrets: function(client: table, input: table): function(): table, table
end

return M
