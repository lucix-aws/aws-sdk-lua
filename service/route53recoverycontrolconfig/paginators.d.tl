local record M
    pages_list_associated_route53_health_checks: function(client: table, input: table): function(): table, table
    items_list_associated_route53_health_checks: function(client: table, input: table): function(): any
    pages_list_clusters: function(client: table, input: table): function(): table, table
    items_list_clusters: function(client: table, input: table): function(): any
    pages_list_control_panels: function(client: table, input: table): function(): table, table
    items_list_control_panels: function(client: table, input: table): function(): any
    pages_list_routing_controls: function(client: table, input: table): function(): table, table
    items_list_routing_controls: function(client: table, input: table): function(): any
    pages_list_safety_rules: function(client: table, input: table): function(): table, table
    items_list_safety_rules: function(client: table, input: table): function(): any
end

return M
