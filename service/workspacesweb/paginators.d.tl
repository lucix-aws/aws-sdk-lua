local record M
    pages_list_browser_settings: function(client: table, input: table): function(): table, table
    pages_list_data_protection_settings: function(client: table, input: table): function(): table, table
    items_list_data_protection_settings: function(client: table, input: table): function(): any
    pages_list_identity_providers: function(client: table, input: table): function(): table, table
    pages_list_ip_access_settings: function(client: table, input: table): function(): table, table
    pages_list_network_settings: function(client: table, input: table): function(): table, table
    pages_list_portals: function(client: table, input: table): function(): table, table
    pages_list_session_loggers: function(client: table, input: table): function(): table, table
    items_list_session_loggers: function(client: table, input: table): function(): any
    pages_list_sessions: function(client: table, input: table): function(): table, table
    items_list_sessions: function(client: table, input: table): function(): any
    pages_list_trust_store_certificates: function(client: table, input: table): function(): table, table
    pages_list_trust_stores: function(client: table, input: table): function(): table, table
    pages_list_user_access_logging_settings: function(client: table, input: table): function(): table, table
    pages_list_user_settings: function(client: table, input: table): function(): table, table
end

return M
