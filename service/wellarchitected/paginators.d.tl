local record M
    pages_get_consolidated_report: function(client: table, input: table): function(): table, table
    pages_list_answers: function(client: table, input: table): function(): table, table
    pages_list_check_details: function(client: table, input: table): function(): table, table
    pages_list_check_summaries: function(client: table, input: table): function(): table, table
    pages_list_lens_review_improvements: function(client: table, input: table): function(): table, table
    pages_list_lens_reviews: function(client: table, input: table): function(): table, table
    pages_list_lens_shares: function(client: table, input: table): function(): table, table
    pages_list_lenses: function(client: table, input: table): function(): table, table
    pages_list_milestones: function(client: table, input: table): function(): table, table
    pages_list_notifications: function(client: table, input: table): function(): table, table
    pages_list_profile_notifications: function(client: table, input: table): function(): table, table
    pages_list_profile_shares: function(client: table, input: table): function(): table, table
    pages_list_profiles: function(client: table, input: table): function(): table, table
    pages_list_review_template_answers: function(client: table, input: table): function(): table, table
    pages_list_review_templates: function(client: table, input: table): function(): table, table
    pages_list_share_invitations: function(client: table, input: table): function(): table, table
    pages_list_template_shares: function(client: table, input: table): function(): table, table
    pages_list_workload_shares: function(client: table, input: table): function(): table, table
    pages_list_workloads: function(client: table, input: table): function(): table, table
end

return M
