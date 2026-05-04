local record M
    pages_describe_merge_conflicts: function(client: table, input: table): function(): table, table
    pages_describe_pull_request_events: function(client: table, input: table): function(): table, table
    pages_get_comment_reactions: function(client: table, input: table): function(): table, table
    pages_get_comments_for_compared_commit: function(client: table, input: table): function(): table, table
    pages_get_comments_for_pull_request: function(client: table, input: table): function(): table, table
    pages_get_differences: function(client: table, input: table): function(): table, table
    pages_get_merge_conflicts: function(client: table, input: table): function(): table, table
    pages_list_approval_rule_templates: function(client: table, input: table): function(): table, table
    pages_list_associated_approval_rule_templates_for_repository: function(client: table, input: table): function(): table, table
    pages_list_branches: function(client: table, input: table): function(): table, table
    items_list_branches: function(client: table, input: table): function(): any
    pages_list_file_commit_history: function(client: table, input: table): function(): table, table
    pages_list_pull_requests: function(client: table, input: table): function(): table, table
    pages_list_repositories: function(client: table, input: table): function(): table, table
    items_list_repositories: function(client: table, input: table): function(): any
    pages_list_repositories_for_approval_rule_template: function(client: table, input: table): function(): table, table
end

return M
