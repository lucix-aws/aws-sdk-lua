local record M
    pages_list_accelerators: function(client: table, input: table): function(): table, table
    items_list_accelerators: function(client: table, input: table): function(): any
    pages_list_byoip_cidrs: function(client: table, input: table): function(): table, table
    items_list_byoip_cidrs: function(client: table, input: table): function(): any
    pages_list_cross_account_attachments: function(client: table, input: table): function(): table, table
    items_list_cross_account_attachments: function(client: table, input: table): function(): any
    pages_list_cross_account_resources: function(client: table, input: table): function(): table, table
    items_list_cross_account_resources: function(client: table, input: table): function(): any
    pages_list_custom_routing_accelerators: function(client: table, input: table): function(): table, table
    items_list_custom_routing_accelerators: function(client: table, input: table): function(): any
    pages_list_custom_routing_endpoint_groups: function(client: table, input: table): function(): table, table
    items_list_custom_routing_endpoint_groups: function(client: table, input: table): function(): any
    pages_list_custom_routing_listeners: function(client: table, input: table): function(): table, table
    items_list_custom_routing_listeners: function(client: table, input: table): function(): any
    pages_list_custom_routing_port_mappings: function(client: table, input: table): function(): table, table
    items_list_custom_routing_port_mappings: function(client: table, input: table): function(): any
    pages_list_custom_routing_port_mappings_by_destination: function(client: table, input: table): function(): table, table
    items_list_custom_routing_port_mappings_by_destination: function(client: table, input: table): function(): any
    pages_list_endpoint_groups: function(client: table, input: table): function(): table, table
    items_list_endpoint_groups: function(client: table, input: table): function(): any
    pages_list_listeners: function(client: table, input: table): function(): table, table
    items_list_listeners: function(client: table, input: table): function(): any
end

return M
