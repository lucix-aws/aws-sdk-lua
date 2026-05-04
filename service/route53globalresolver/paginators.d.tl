local record M
    pages_list_access_sources: function(client: table, input: table): function(): table, table
    items_list_access_sources: function(client: table, input: table): function(): any
    pages_list_access_tokens: function(client: table, input: table): function(): table, table
    items_list_access_tokens: function(client: table, input: table): function(): any
    pages_list_d_n_s_views: function(client: table, input: table): function(): table, table
    items_list_d_n_s_views: function(client: table, input: table): function(): any
    pages_list_firewall_domain_lists: function(client: table, input: table): function(): table, table
    items_list_firewall_domain_lists: function(client: table, input: table): function(): any
    pages_list_firewall_domains: function(client: table, input: table): function(): table, table
    items_list_firewall_domains: function(client: table, input: table): function(): any
    pages_list_firewall_rules: function(client: table, input: table): function(): table, table
    items_list_firewall_rules: function(client: table, input: table): function(): any
    pages_list_global_resolvers: function(client: table, input: table): function(): table, table
    items_list_global_resolvers: function(client: table, input: table): function(): any
    pages_list_hosted_zone_associations: function(client: table, input: table): function(): table, table
    items_list_hosted_zone_associations: function(client: table, input: table): function(): any
    pages_list_managed_firewall_domain_lists: function(client: table, input: table): function(): table, table
    items_list_managed_firewall_domain_lists: function(client: table, input: table): function(): any
end

return M
