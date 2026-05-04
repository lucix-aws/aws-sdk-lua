local record M
    pages_list_assistant_associations: function(client: table, input: table): function(): table, table
    items_list_assistant_associations: function(client: table, input: table): function(): any
    pages_list_assistants: function(client: table, input: table): function(): table, table
    items_list_assistants: function(client: table, input: table): function(): any
    pages_list_contents: function(client: table, input: table): function(): table, table
    items_list_contents: function(client: table, input: table): function(): any
    pages_list_import_jobs: function(client: table, input: table): function(): table, table
    items_list_import_jobs: function(client: table, input: table): function(): any
    pages_list_knowledge_bases: function(client: table, input: table): function(): table, table
    items_list_knowledge_bases: function(client: table, input: table): function(): any
    pages_list_quick_responses: function(client: table, input: table): function(): table, table
    items_list_quick_responses: function(client: table, input: table): function(): any
    pages_query_assistant: function(client: table, input: table): function(): table, table
    items_query_assistant: function(client: table, input: table): function(): any
    pages_search_content: function(client: table, input: table): function(): table, table
    items_search_content: function(client: table, input: table): function(): any
    pages_search_quick_responses: function(client: table, input: table): function(): table, table
    items_search_quick_responses: function(client: table, input: table): function(): any
    pages_search_sessions: function(client: table, input: table): function(): table, table
    items_search_sessions: function(client: table, input: table): function(): any
end

return M
