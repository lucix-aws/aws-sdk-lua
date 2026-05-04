local record M
    pages_list_applications: function(client: table, input: table): function(): table, table
    items_list_applications: function(client: table, input: table): function(): any
    pages_list_associated_attribute_groups: function(client: table, input: table): function(): table, table
    items_list_associated_attribute_groups: function(client: table, input: table): function(): any
    pages_list_associated_resources: function(client: table, input: table): function(): table, table
    items_list_associated_resources: function(client: table, input: table): function(): any
    pages_list_attribute_groups: function(client: table, input: table): function(): table, table
    items_list_attribute_groups: function(client: table, input: table): function(): any
    pages_list_attribute_groups_for_application: function(client: table, input: table): function(): table, table
    items_list_attribute_groups_for_application: function(client: table, input: table): function(): any
end

return M
