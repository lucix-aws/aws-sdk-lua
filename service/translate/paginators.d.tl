local record M
    pages_list_languages: function(client: table, input: table): function(): table, table
    pages_list_parallel_data: function(client: table, input: table): function(): table, table
    pages_list_terminologies: function(client: table, input: table): function(): table, table
    pages_list_text_translation_jobs: function(client: table, input: table): function(): table, table
end

return M
