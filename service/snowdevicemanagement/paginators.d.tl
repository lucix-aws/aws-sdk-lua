local record M
    pages_list_device_resources: function(client: table, input: table): function(): table, table
    items_list_device_resources: function(client: table, input: table): function(): any
    pages_list_devices: function(client: table, input: table): function(): table, table
    items_list_devices: function(client: table, input: table): function(): any
    pages_list_executions: function(client: table, input: table): function(): table, table
    items_list_executions: function(client: table, input: table): function(): any
    pages_list_tasks: function(client: table, input: table): function(): table, table
    items_list_tasks: function(client: table, input: table): function(): any
end

return M
