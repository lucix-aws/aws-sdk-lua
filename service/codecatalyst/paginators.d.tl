local record M
    pages_list_access_tokens: function(client: table, input: table): function(): table, table
    items_list_access_tokens: function(client: table, input: table): function(): any
    pages_list_dev_environment_sessions: function(client: table, input: table): function(): table, table
    items_list_dev_environment_sessions: function(client: table, input: table): function(): any
    pages_list_dev_environments: function(client: table, input: table): function(): table, table
    items_list_dev_environments: function(client: table, input: table): function(): any
    pages_list_event_logs: function(client: table, input: table): function(): table, table
    items_list_event_logs: function(client: table, input: table): function(): any
    pages_list_projects: function(client: table, input: table): function(): table, table
    items_list_projects: function(client: table, input: table): function(): any
    pages_list_source_repositories: function(client: table, input: table): function(): table, table
    items_list_source_repositories: function(client: table, input: table): function(): any
    pages_list_source_repository_branches: function(client: table, input: table): function(): table, table
    items_list_source_repository_branches: function(client: table, input: table): function(): any
    pages_list_spaces: function(client: table, input: table): function(): table, table
    items_list_spaces: function(client: table, input: table): function(): any
    pages_list_workflow_runs: function(client: table, input: table): function(): table, table
    items_list_workflow_runs: function(client: table, input: table): function(): any
    pages_list_workflows: function(client: table, input: table): function(): table, table
    items_list_workflows: function(client: table, input: table): function(): any
end

return M
