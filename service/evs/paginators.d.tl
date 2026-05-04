local record M
    pages_list_environment_connectors: function(client: table, input: table): function(): table, table
    items_list_environment_connectors: function(client: table, input: table): function(): any
    pages_list_environment_hosts: function(client: table, input: table): function(): table, table
    items_list_environment_hosts: function(client: table, input: table): function(): any
    pages_list_environment_vlans: function(client: table, input: table): function(): table, table
    items_list_environment_vlans: function(client: table, input: table): function(): any
    pages_list_environments: function(client: table, input: table): function(): table, table
    items_list_environments: function(client: table, input: table): function(): any
    pages_list_vm_entitlements: function(client: table, input: table): function(): table, table
    items_list_vm_entitlements: function(client: table, input: table): function(): any
end

return M
