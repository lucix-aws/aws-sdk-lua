local record M
    pages_get_bot_aliases: function(client: table, input: table): function(): table, table
    pages_get_bot_channel_associations: function(client: table, input: table): function(): table, table
    pages_get_bot_versions: function(client: table, input: table): function(): table, table
    pages_get_bots: function(client: table, input: table): function(): table, table
    pages_get_builtin_intents: function(client: table, input: table): function(): table, table
    pages_get_builtin_slot_types: function(client: table, input: table): function(): table, table
    pages_get_intent_versions: function(client: table, input: table): function(): table, table
    pages_get_intents: function(client: table, input: table): function(): table, table
    pages_get_migrations: function(client: table, input: table): function(): table, table
    pages_get_slot_type_versions: function(client: table, input: table): function(): table, table
    pages_get_slot_types: function(client: table, input: table): function(): table, table
end

return M
