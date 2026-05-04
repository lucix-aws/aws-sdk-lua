local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeConfigurationTemplates.
function M.pages_describe_configuration_templates(client, input)
    return paginator.pages(client, "describeConfigurationTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "configurationTemplates",
    })
end

--- Returns an item iterator for describeConfigurationTemplates.
function M.items_describe_configuration_templates(client, input)
    return paginator.items(client, "describeConfigurationTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "configurationTemplates",
    })
end

--- Returns a page iterator for describeDeliveries.
function M.pages_describe_deliveries(client, input)
    return paginator.pages(client, "describeDeliveries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deliveries",
    })
end

--- Returns an item iterator for describeDeliveries.
function M.items_describe_deliveries(client, input)
    return paginator.items(client, "describeDeliveries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deliveries",
    })
end

--- Returns a page iterator for describeDeliveryDestinations.
function M.pages_describe_delivery_destinations(client, input)
    return paginator.pages(client, "describeDeliveryDestinations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deliveryDestinations",
    })
end

--- Returns an item iterator for describeDeliveryDestinations.
function M.items_describe_delivery_destinations(client, input)
    return paginator.items(client, "describeDeliveryDestinations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deliveryDestinations",
    })
end

--- Returns a page iterator for describeDeliverySources.
function M.pages_describe_delivery_sources(client, input)
    return paginator.pages(client, "describeDeliverySources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deliverySources",
    })
end

--- Returns an item iterator for describeDeliverySources.
function M.items_describe_delivery_sources(client, input)
    return paginator.items(client, "describeDeliverySources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deliverySources",
    })
end

--- Returns a page iterator for describeDestinations.
function M.pages_describe_destinations(client, input)
    return paginator.pages(client, "describeDestinations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "destinations",
    })
end

--- Returns an item iterator for describeDestinations.
function M.items_describe_destinations(client, input)
    return paginator.items(client, "describeDestinations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "destinations",
    })
end

--- Returns a page iterator for describeLogGroups.
function M.pages_describe_log_groups(client, input)
    return paginator.pages(client, "describeLogGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "logGroups",
    })
end

--- Returns an item iterator for describeLogGroups.
function M.items_describe_log_groups(client, input)
    return paginator.items(client, "describeLogGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "logGroups",
    })
end

--- Returns a page iterator for describeLogStreams.
function M.pages_describe_log_streams(client, input)
    return paginator.pages(client, "describeLogStreams", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "logStreams",
    })
end

--- Returns an item iterator for describeLogStreams.
function M.items_describe_log_streams(client, input)
    return paginator.items(client, "describeLogStreams", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "logStreams",
    })
end

--- Returns a page iterator for describeMetricFilters.
function M.pages_describe_metric_filters(client, input)
    return paginator.pages(client, "describeMetricFilters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "metricFilters",
    })
end

--- Returns an item iterator for describeMetricFilters.
function M.items_describe_metric_filters(client, input)
    return paginator.items(client, "describeMetricFilters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "metricFilters",
    })
end

--- Returns a page iterator for describeSubscriptionFilters.
function M.pages_describe_subscription_filters(client, input)
    return paginator.pages(client, "describeSubscriptionFilters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "subscriptionFilters",
    })
end

--- Returns an item iterator for describeSubscriptionFilters.
function M.items_describe_subscription_filters(client, input)
    return paginator.items(client, "describeSubscriptionFilters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "subscriptionFilters",
    })
end

--- Returns a page iterator for filterLogEvents.
function M.pages_filter_log_events(client, input)
    return paginator.pages(client, "filterLogEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getLogEvents.
function M.pages_get_log_events(client, input)
    return paginator.pages(client, "getLogEvents", input, {
        input_token = "nextToken",
        output_token = "nextForwardToken",
        items = "events",
    })
end

--- Returns an item iterator for getLogEvents.
function M.items_get_log_events(client, input)
    return paginator.items(client, "getLogEvents", input, {
        input_token = "nextToken",
        output_token = "nextForwardToken",
        items = "events",
    })
end

--- Returns a page iterator for getScheduledQueryHistory.
function M.pages_get_scheduled_query_history(client, input)
    return paginator.pages(client, "getScheduledQueryHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "triggerHistory",
    })
end

--- Returns an item iterator for getScheduledQueryHistory.
function M.items_get_scheduled_query_history(client, input)
    return paginator.items(client, "getScheduledQueryHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "triggerHistory",
    })
end

--- Returns a page iterator for listAggregateLogGroupSummaries.
function M.pages_list_aggregate_log_group_summaries(client, input)
    return paginator.pages(client, "listAggregateLogGroupSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "aggregateLogGroupSummaries",
    })
end

--- Returns an item iterator for listAggregateLogGroupSummaries.
function M.items_list_aggregate_log_group_summaries(client, input)
    return paginator.items(client, "listAggregateLogGroupSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "aggregateLogGroupSummaries",
    })
end

--- Returns a page iterator for listAnomalies.
function M.pages_list_anomalies(client, input)
    return paginator.pages(client, "listAnomalies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "anomalies",
    })
end

--- Returns an item iterator for listAnomalies.
function M.items_list_anomalies(client, input)
    return paginator.items(client, "listAnomalies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "anomalies",
    })
end

--- Returns a page iterator for listLogAnomalyDetectors.
function M.pages_list_log_anomaly_detectors(client, input)
    return paginator.pages(client, "listLogAnomalyDetectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "anomalyDetectors",
    })
end

--- Returns an item iterator for listLogAnomalyDetectors.
function M.items_list_log_anomaly_detectors(client, input)
    return paginator.items(client, "listLogAnomalyDetectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "anomalyDetectors",
    })
end

--- Returns a page iterator for listLogGroupsForQuery.
function M.pages_list_log_groups_for_query(client, input)
    return paginator.pages(client, "listLogGroupsForQuery", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "logGroupIdentifiers",
    })
end

--- Returns an item iterator for listLogGroupsForQuery.
function M.items_list_log_groups_for_query(client, input)
    return paginator.items(client, "listLogGroupsForQuery", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "logGroupIdentifiers",
    })
end

--- Returns a page iterator for listScheduledQueries.
function M.pages_list_scheduled_queries(client, input)
    return paginator.pages(client, "listScheduledQueries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scheduledQueries",
    })
end

--- Returns an item iterator for listScheduledQueries.
function M.items_list_scheduled_queries(client, input)
    return paginator.items(client, "listScheduledQueries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scheduledQueries",
    })
end

--- Returns a page iterator for listSourcesForS3TableIntegration.
function M.pages_list_sources_for_s3_table_integration(client, input)
    return paginator.pages(client, "listSourcesForS3TableIntegration", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sources",
    })
end

--- Returns an item iterator for listSourcesForS3TableIntegration.
function M.items_list_sources_for_s3_table_integration(client, input)
    return paginator.items(client, "listSourcesForS3TableIntegration", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sources",
    })
end

return M
