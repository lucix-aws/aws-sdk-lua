local record M
    pages_list_agent_spaces: function(client: table, input: table): function(): table, table
    items_list_agent_spaces: function(client: table, input: table): function(): any
    pages_list_applications: function(client: table, input: table): function(): table, table
    items_list_applications: function(client: table, input: table): function(): any
    pages_list_artifacts: function(client: table, input: table): function(): table, table
    items_list_artifacts: function(client: table, input: table): function(): any
    pages_list_discovered_endpoints: function(client: table, input: table): function(): table, table
    items_list_discovered_endpoints: function(client: table, input: table): function(): any
    pages_list_findings: function(client: table, input: table): function(): table, table
    items_list_findings: function(client: table, input: table): function(): any
    pages_list_integrated_resources: function(client: table, input: table): function(): table, table
    items_list_integrated_resources: function(client: table, input: table): function(): any
    pages_list_integrations: function(client: table, input: table): function(): table, table
    items_list_integrations: function(client: table, input: table): function(): any
    pages_list_memberships: function(client: table, input: table): function(): table, table
    items_list_memberships: function(client: table, input: table): function(): any
    pages_list_pentest_job_tasks: function(client: table, input: table): function(): table, table
    items_list_pentest_job_tasks: function(client: table, input: table): function(): any
    pages_list_pentest_jobs_for_pentest: function(client: table, input: table): function(): table, table
    items_list_pentest_jobs_for_pentest: function(client: table, input: table): function(): any
    pages_list_pentests: function(client: table, input: table): function(): table, table
    items_list_pentests: function(client: table, input: table): function(): any
    pages_list_target_domains: function(client: table, input: table): function(): table, table
    items_list_target_domains: function(client: table, input: table): function(): any
end

return M
