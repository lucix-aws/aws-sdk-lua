local record M
    pages_describe_account_limits: function(client: table, input: table): function(): table, table
    items_describe_account_limits: function(client: table, input: table): function(): any
    pages_describe_listener_certificates: function(client: table, input: table): function(): table, table
    items_describe_listener_certificates: function(client: table, input: table): function(): any
    pages_describe_listeners: function(client: table, input: table): function(): table, table
    items_describe_listeners: function(client: table, input: table): function(): any
    pages_describe_load_balancers: function(client: table, input: table): function(): table, table
    items_describe_load_balancers: function(client: table, input: table): function(): any
    pages_describe_rules: function(client: table, input: table): function(): table, table
    items_describe_rules: function(client: table, input: table): function(): any
    pages_describe_target_groups: function(client: table, input: table): function(): table, table
    items_describe_target_groups: function(client: table, input: table): function(): any
    pages_describe_trust_store_associations: function(client: table, input: table): function(): table, table
    items_describe_trust_store_associations: function(client: table, input: table): function(): any
    pages_describe_trust_store_revocations: function(client: table, input: table): function(): table, table
    items_describe_trust_store_revocations: function(client: table, input: table): function(): any
    pages_describe_trust_stores: function(client: table, input: table): function(): table, table
    items_describe_trust_stores: function(client: table, input: table): function(): any
end

return M
