local record M
    pages_batch_get_asset_property_aggregates: function(client: table, input: table): function(): table, table
    pages_batch_get_asset_property_value: function(client: table, input: table): function(): table, table
    pages_batch_get_asset_property_value_history: function(client: table, input: table): function(): table, table
    pages_execute_query: function(client: table, input: table): function(): table, table
    items_execute_query: function(client: table, input: table): function(): any
    pages_get_asset_property_aggregates: function(client: table, input: table): function(): table, table
    items_get_asset_property_aggregates: function(client: table, input: table): function(): any
    pages_get_asset_property_value_history: function(client: table, input: table): function(): table, table
    items_get_asset_property_value_history: function(client: table, input: table): function(): any
    pages_get_interpolated_asset_property_values: function(client: table, input: table): function(): table, table
    items_get_interpolated_asset_property_values: function(client: table, input: table): function(): any
    pages_list_access_policies: function(client: table, input: table): function(): table, table
    items_list_access_policies: function(client: table, input: table): function(): any
    pages_list_asset_model_composite_models: function(client: table, input: table): function(): table, table
    items_list_asset_model_composite_models: function(client: table, input: table): function(): any
    pages_list_asset_model_properties: function(client: table, input: table): function(): table, table
    items_list_asset_model_properties: function(client: table, input: table): function(): any
    pages_list_asset_models: function(client: table, input: table): function(): table, table
    items_list_asset_models: function(client: table, input: table): function(): any
    pages_list_asset_properties: function(client: table, input: table): function(): table, table
    items_list_asset_properties: function(client: table, input: table): function(): any
    pages_list_asset_relationships: function(client: table, input: table): function(): table, table
    items_list_asset_relationships: function(client: table, input: table): function(): any
    pages_list_assets: function(client: table, input: table): function(): table, table
    items_list_assets: function(client: table, input: table): function(): any
    pages_list_associated_assets: function(client: table, input: table): function(): table, table
    items_list_associated_assets: function(client: table, input: table): function(): any
    pages_list_bulk_import_jobs: function(client: table, input: table): function(): table, table
    items_list_bulk_import_jobs: function(client: table, input: table): function(): any
    pages_list_composition_relationships: function(client: table, input: table): function(): table, table
    items_list_composition_relationships: function(client: table, input: table): function(): any
    pages_list_computation_model_data_binding_usages: function(client: table, input: table): function(): table, table
    items_list_computation_model_data_binding_usages: function(client: table, input: table): function(): any
    pages_list_computation_model_resolve_to_resources: function(client: table, input: table): function(): table, table
    items_list_computation_model_resolve_to_resources: function(client: table, input: table): function(): any
    pages_list_computation_models: function(client: table, input: table): function(): table, table
    items_list_computation_models: function(client: table, input: table): function(): any
    pages_list_dashboards: function(client: table, input: table): function(): table, table
    items_list_dashboards: function(client: table, input: table): function(): any
    pages_list_datasets: function(client: table, input: table): function(): table, table
    items_list_datasets: function(client: table, input: table): function(): any
    pages_list_executions: function(client: table, input: table): function(): table, table
    items_list_executions: function(client: table, input: table): function(): any
    pages_list_gateways: function(client: table, input: table): function(): table, table
    items_list_gateways: function(client: table, input: table): function(): any
    pages_list_interface_relationships: function(client: table, input: table): function(): table, table
    items_list_interface_relationships: function(client: table, input: table): function(): any
    pages_list_portals: function(client: table, input: table): function(): table, table
    items_list_portals: function(client: table, input: table): function(): any
    pages_list_project_assets: function(client: table, input: table): function(): table, table
    items_list_project_assets: function(client: table, input: table): function(): any
    pages_list_projects: function(client: table, input: table): function(): table, table
    items_list_projects: function(client: table, input: table): function(): any
    pages_list_time_series: function(client: table, input: table): function(): table, table
    items_list_time_series: function(client: table, input: table): function(): any
end

return M
