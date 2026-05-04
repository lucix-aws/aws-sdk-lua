local record M
    pages_get_offering_status: function(client: table, input: table): function(): table, table
    pages_list_artifacts: function(client: table, input: table): function(): table, table
    items_list_artifacts: function(client: table, input: table): function(): any
    pages_list_device_pools: function(client: table, input: table): function(): table, table
    items_list_device_pools: function(client: table, input: table): function(): any
    pages_list_devices: function(client: table, input: table): function(): table, table
    items_list_devices: function(client: table, input: table): function(): any
    pages_list_jobs: function(client: table, input: table): function(): table, table
    items_list_jobs: function(client: table, input: table): function(): any
    pages_list_offering_transactions: function(client: table, input: table): function(): table, table
    items_list_offering_transactions: function(client: table, input: table): function(): any
    pages_list_offerings: function(client: table, input: table): function(): table, table
    items_list_offerings: function(client: table, input: table): function(): any
    pages_list_projects: function(client: table, input: table): function(): table, table
    items_list_projects: function(client: table, input: table): function(): any
    pages_list_runs: function(client: table, input: table): function(): table, table
    items_list_runs: function(client: table, input: table): function(): any
    pages_list_samples: function(client: table, input: table): function(): table, table
    items_list_samples: function(client: table, input: table): function(): any
    pages_list_suites: function(client: table, input: table): function(): table, table
    items_list_suites: function(client: table, input: table): function(): any
    pages_list_test_grid_projects: function(client: table, input: table): function(): table, table
    pages_list_test_grid_session_actions: function(client: table, input: table): function(): table, table
    pages_list_test_grid_session_artifacts: function(client: table, input: table): function(): table, table
    pages_list_test_grid_sessions: function(client: table, input: table): function(): table, table
    pages_list_tests: function(client: table, input: table): function(): table, table
    items_list_tests: function(client: table, input: table): function(): any
    pages_list_unique_problems: function(client: table, input: table): function(): table, table
    items_list_unique_problems: function(client: table, input: table): function(): any
    pages_list_uploads: function(client: table, input: table): function(): table, table
    items_list_uploads: function(client: table, input: table): function(): any
end

return M
