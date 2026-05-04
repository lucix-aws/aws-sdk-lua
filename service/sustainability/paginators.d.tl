local record M
    pages_get_estimated_carbon_emissions: function(client: table, input: table): function(): table, table
    items_get_estimated_carbon_emissions: function(client: table, input: table): function(): any
    pages_get_estimated_carbon_emissions_dimension_values: function(client: table, input: table): function(): table, table
    items_get_estimated_carbon_emissions_dimension_values: function(client: table, input: table): function(): any
end

return M
