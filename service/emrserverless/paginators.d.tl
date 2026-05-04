local record M
    pages_list_applications: function(client: table, input: table): function(): table, table
    items_list_applications: function(client: table, input: table): function(): any
    pages_list_job_run_attempts: function(client: table, input: table): function(): table, table
    items_list_job_run_attempts: function(client: table, input: table): function(): any
    pages_list_job_runs: function(client: table, input: table): function(): table, table
    items_list_job_runs: function(client: table, input: table): function(): any
    pages_list_sessions: function(client: table, input: table): function(): table, table
    items_list_sessions: function(client: table, input: table): function(): any
end

return M
