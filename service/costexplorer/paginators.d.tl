local record M
    pages_get_anomalies: function(client: table, input: table): function(): table, table
    items_get_anomalies: function(client: table, input: table): function(): any
    pages_get_anomaly_monitors: function(client: table, input: table): function(): table, table
    items_get_anomaly_monitors: function(client: table, input: table): function(): any
    pages_get_anomaly_subscriptions: function(client: table, input: table): function(): table, table
    items_get_anomaly_subscriptions: function(client: table, input: table): function(): any
    pages_get_cost_and_usage_comparisons: function(client: table, input: table): function(): table, table
    items_get_cost_and_usage_comparisons: function(client: table, input: table): function(): any
    pages_get_cost_comparison_drivers: function(client: table, input: table): function(): table, table
    items_get_cost_comparison_drivers: function(client: table, input: table): function(): any
    pages_get_reservation_purchase_recommendation: function(client: table, input: table): function(): table, table
    items_get_reservation_purchase_recommendation: function(client: table, input: table): function(): any
    pages_get_rightsizing_recommendation: function(client: table, input: table): function(): table, table
    items_get_rightsizing_recommendation: function(client: table, input: table): function(): any
    pages_get_savings_plans_coverage: function(client: table, input: table): function(): table, table
    pages_get_savings_plans_utilization_details: function(client: table, input: table): function(): table, table
    pages_list_commitment_purchase_analyses: function(client: table, input: table): function(): table, table
    items_list_commitment_purchase_analyses: function(client: table, input: table): function(): any
    pages_list_cost_allocation_tag_backfill_history: function(client: table, input: table): function(): table, table
    items_list_cost_allocation_tag_backfill_history: function(client: table, input: table): function(): any
    pages_list_cost_allocation_tags: function(client: table, input: table): function(): table, table
    items_list_cost_allocation_tags: function(client: table, input: table): function(): any
    pages_list_cost_category_definitions: function(client: table, input: table): function(): table, table
    items_list_cost_category_definitions: function(client: table, input: table): function(): any
    pages_list_cost_category_resource_associations: function(client: table, input: table): function(): table, table
    items_list_cost_category_resource_associations: function(client: table, input: table): function(): any
    pages_list_savings_plans_purchase_recommendation_generation: function(client: table, input: table): function(): table, table
    items_list_savings_plans_purchase_recommendation_generation: function(client: table, input: table): function(): any
end

return M
