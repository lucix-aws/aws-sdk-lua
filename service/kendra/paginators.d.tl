local record M
    pages_get_snapshots: function(client: table, input: table): function(): table, table
    pages_list_access_control_configurations: function(client: table, input: table): function(): table, table
    pages_list_data_source_sync_jobs: function(client: table, input: table): function(): table, table
    pages_list_data_sources: function(client: table, input: table): function(): table, table
    pages_list_entity_personas: function(client: table, input: table): function(): table, table
    pages_list_experience_entities: function(client: table, input: table): function(): table, table
    pages_list_experiences: function(client: table, input: table): function(): table, table
    pages_list_faqs: function(client: table, input: table): function(): table, table
    pages_list_groups_older_than_ordering_id: function(client: table, input: table): function(): table, table
    pages_list_indices: function(client: table, input: table): function(): table, table
    pages_list_query_suggestions_block_lists: function(client: table, input: table): function(): table, table
    pages_list_thesauri: function(client: table, input: table): function(): table, table
end

return M
