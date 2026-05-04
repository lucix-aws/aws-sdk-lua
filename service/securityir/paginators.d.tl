local record M
    pages_list_case_edits: function(client: table, input: table): function(): table, table
    items_list_case_edits: function(client: table, input: table): function(): any
    pages_list_cases: function(client: table, input: table): function(): table, table
    items_list_cases: function(client: table, input: table): function(): any
    pages_list_comments: function(client: table, input: table): function(): table, table
    items_list_comments: function(client: table, input: table): function(): any
    pages_list_investigations: function(client: table, input: table): function(): table, table
    items_list_investigations: function(client: table, input: table): function(): any
    pages_list_memberships: function(client: table, input: table): function(): table, table
    items_list_memberships: function(client: table, input: table): function(): any
end

return M
