local record M
    pages_list_schedule_groups: function(client: table, input: table): function(): table, table
    items_list_schedule_groups: function(client: table, input: table): function(): any
    pages_list_schedules: function(client: table, input: table): function(): table, table
    items_list_schedules: function(client: table, input: table): function(): any
end

return M
