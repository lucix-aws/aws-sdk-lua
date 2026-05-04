local record M
    pages_list_code_reviews: function(client: table, input: table): function(): table, table
    pages_list_recommendation_feedback: function(client: table, input: table): function(): table, table
    pages_list_recommendations: function(client: table, input: table): function(): table, table
    pages_list_repository_associations: function(client: table, input: table): function(): table, table
    items_list_repository_associations: function(client: table, input: table): function(): any
end

return M
