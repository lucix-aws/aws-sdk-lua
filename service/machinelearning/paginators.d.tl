local record M
    pages_describe_batch_predictions: function(client: table, input: table): function(): table, table
    items_describe_batch_predictions: function(client: table, input: table): function(): any
    pages_describe_data_sources: function(client: table, input: table): function(): table, table
    items_describe_data_sources: function(client: table, input: table): function(): any
    pages_describe_evaluations: function(client: table, input: table): function(): table, table
    items_describe_evaluations: function(client: table, input: table): function(): any
    pages_describe_m_l_models: function(client: table, input: table): function(): table, table
    items_describe_m_l_models: function(client: table, input: table): function(): any
end

return M
