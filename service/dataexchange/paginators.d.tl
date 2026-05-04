local record M
    pages_list_data_grants: function(client: table, input: table): function(): table, table
    items_list_data_grants: function(client: table, input: table): function(): any
    pages_list_data_set_revisions: function(client: table, input: table): function(): table, table
    items_list_data_set_revisions: function(client: table, input: table): function(): any
    pages_list_data_sets: function(client: table, input: table): function(): table, table
    items_list_data_sets: function(client: table, input: table): function(): any
    pages_list_event_actions: function(client: table, input: table): function(): table, table
    items_list_event_actions: function(client: table, input: table): function(): any
    pages_list_jobs: function(client: table, input: table): function(): table, table
    items_list_jobs: function(client: table, input: table): function(): any
    pages_list_received_data_grants: function(client: table, input: table): function(): table, table
    items_list_received_data_grants: function(client: table, input: table): function(): any
    pages_list_revision_assets: function(client: table, input: table): function(): table, table
    items_list_revision_assets: function(client: table, input: table): function(): any
end

return M
