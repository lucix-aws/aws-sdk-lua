local record M
    pages_list_attacks: function(client: table, input: table): function(): table, table
    items_list_attacks: function(client: table, input: table): function(): any
    pages_list_protection_groups: function(client: table, input: table): function(): table, table
    pages_list_protections: function(client: table, input: table): function(): table, table
    items_list_protections: function(client: table, input: table): function(): any
    pages_list_resources_in_protection_group: function(client: table, input: table): function(): table, table
end

return M
