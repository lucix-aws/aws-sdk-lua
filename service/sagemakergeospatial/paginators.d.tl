local record M
    pages_list_earth_observation_jobs: function(client: table, input: table): function(): table, table
    items_list_earth_observation_jobs: function(client: table, input: table): function(): any
    pages_list_raster_data_collections: function(client: table, input: table): function(): table, table
    items_list_raster_data_collections: function(client: table, input: table): function(): any
    pages_list_vector_enrichment_jobs: function(client: table, input: table): function(): table, table
    items_list_vector_enrichment_jobs: function(client: table, input: table): function(): any
    pages_search_raster_data_collection: function(client: table, input: table): function(): table, table
end

return M
