local record M
    pages_list_entity_events: function(client: table, input: table): function(): table, table
    items_list_entity_events: function(client: table, input: table): function(): any
    pages_list_service_dependencies: function(client: table, input: table): function(): table, table
    items_list_service_dependencies: function(client: table, input: table): function(): any
    pages_list_service_dependents: function(client: table, input: table): function(): table, table
    items_list_service_dependents: function(client: table, input: table): function(): any
    pages_list_service_level_objective_exclusion_windows: function(client: table, input: table): function(): table, table
    items_list_service_level_objective_exclusion_windows: function(client: table, input: table): function(): any
    pages_list_service_level_objectives: function(client: table, input: table): function(): table, table
    items_list_service_level_objectives: function(client: table, input: table): function(): any
    pages_list_service_operations: function(client: table, input: table): function(): table, table
    items_list_service_operations: function(client: table, input: table): function(): any
    pages_list_service_states: function(client: table, input: table): function(): table, table
    items_list_service_states: function(client: table, input: table): function(): any
    pages_list_services: function(client: table, input: table): function(): table, table
    items_list_services: function(client: table, input: table): function(): any
end

return M
