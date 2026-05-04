local record M
    pages_list_compositions: function(client: table, input: table): function(): table, table
    pages_list_encoder_configurations: function(client: table, input: table): function(): table, table
    pages_list_ingest_configurations: function(client: table, input: table): function(): table, table
    items_list_ingest_configurations: function(client: table, input: table): function(): any
    pages_list_participant_events: function(client: table, input: table): function(): table, table
    pages_list_participant_replicas: function(client: table, input: table): function(): table, table
    items_list_participant_replicas: function(client: table, input: table): function(): any
    pages_list_participants: function(client: table, input: table): function(): table, table
    pages_list_public_keys: function(client: table, input: table): function(): table, table
    items_list_public_keys: function(client: table, input: table): function(): any
    pages_list_stage_sessions: function(client: table, input: table): function(): table, table
    pages_list_stages: function(client: table, input: table): function(): table, table
    pages_list_storage_configurations: function(client: table, input: table): function(): table, table
end

return M
