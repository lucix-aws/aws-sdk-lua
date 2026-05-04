local record M
    pages_list_actions: function(client: table, input: table): function(): table, table
    items_list_actions: function(client: table, input: table): function(): any
    pages_list_experiment_resolved_targets: function(client: table, input: table): function(): table, table
    items_list_experiment_resolved_targets: function(client: table, input: table): function(): any
    pages_list_experiment_templates: function(client: table, input: table): function(): table, table
    items_list_experiment_templates: function(client: table, input: table): function(): any
    pages_list_experiments: function(client: table, input: table): function(): table, table
    items_list_experiments: function(client: table, input: table): function(): any
    pages_list_target_account_configurations: function(client: table, input: table): function(): table, table
    items_list_target_account_configurations: function(client: table, input: table): function(): any
    pages_list_target_resource_types: function(client: table, input: table): function(): table, table
    items_list_target_resource_types: function(client: table, input: table): function(): any
end

return M
