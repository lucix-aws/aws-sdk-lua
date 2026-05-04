local record M
    pages_list_action_executions: function(client: table, input: table): function(): table, table
    items_list_action_executions: function(client: table, input: table): function(): any
    pages_list_action_types: function(client: table, input: table): function(): table, table
    items_list_action_types: function(client: table, input: table): function(): any
    pages_list_deploy_action_execution_targets: function(client: table, input: table): function(): table, table
    items_list_deploy_action_execution_targets: function(client: table, input: table): function(): any
    pages_list_pipeline_executions: function(client: table, input: table): function(): table, table
    items_list_pipeline_executions: function(client: table, input: table): function(): any
    pages_list_pipelines: function(client: table, input: table): function(): table, table
    items_list_pipelines: function(client: table, input: table): function(): any
    pages_list_rule_executions: function(client: table, input: table): function(): table, table
    items_list_rule_executions: function(client: table, input: table): function(): any
    pages_list_tags_for_resource: function(client: table, input: table): function(): table, table
    items_list_tags_for_resource: function(client: table, input: table): function(): any
    pages_list_webhooks: function(client: table, input: table): function(): table, table
    items_list_webhooks: function(client: table, input: table): function(): any
end

return M
