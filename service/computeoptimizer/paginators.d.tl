local record M
    pages_describe_recommendation_export_jobs: function(client: table, input: table): function(): table, table
    items_describe_recommendation_export_jobs: function(client: table, input: table): function(): any
    pages_get_enrollment_statuses_for_organization: function(client: table, input: table): function(): table, table
    items_get_enrollment_statuses_for_organization: function(client: table, input: table): function(): any
    pages_get_lambda_function_recommendations: function(client: table, input: table): function(): table, table
    items_get_lambda_function_recommendations: function(client: table, input: table): function(): any
    pages_get_recommendation_preferences: function(client: table, input: table): function(): table, table
    items_get_recommendation_preferences: function(client: table, input: table): function(): any
    pages_get_recommendation_summaries: function(client: table, input: table): function(): table, table
    items_get_recommendation_summaries: function(client: table, input: table): function(): any
end

return M
