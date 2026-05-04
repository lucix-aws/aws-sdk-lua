local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getQueryResults.
function M.pages_get_query_results(client, input)
    return paginator.pages(client, "getQueryResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listApplicationDPUSizes.
function M.pages_list_application_d_p_u_sizes(client, input)
    return paginator.pages(client, "listApplicationDPUSizes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listCalculationExecutions.
function M.pages_list_calculation_executions(client, input)
    return paginator.pages(client, "listCalculationExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listCapacityReservations.
function M.pages_list_capacity_reservations(client, input)
    return paginator.pages(client, "listCapacityReservations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDataCatalogs.
function M.pages_list_data_catalogs(client, input)
    return paginator.pages(client, "listDataCatalogs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataCatalogsSummary",
    })
end

--- Returns an item iterator for listDataCatalogs.
function M.items_list_data_catalogs(client, input)
    return paginator.items(client, "listDataCatalogs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataCatalogsSummary",
    })
end

--- Returns a page iterator for listDatabases.
function M.pages_list_databases(client, input)
    return paginator.pages(client, "listDatabases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatabaseList",
    })
end

--- Returns an item iterator for listDatabases.
function M.items_list_databases(client, input)
    return paginator.items(client, "listDatabases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatabaseList",
    })
end

--- Returns a page iterator for listEngineVersions.
function M.pages_list_engine_versions(client, input)
    return paginator.pages(client, "listEngineVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listExecutors.
function M.pages_list_executors(client, input)
    return paginator.pages(client, "listExecutors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listNamedQueries.
function M.pages_list_named_queries(client, input)
    return paginator.pages(client, "listNamedQueries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPreparedStatements.
function M.pages_list_prepared_statements(client, input)
    return paginator.pages(client, "listPreparedStatements", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listQueryExecutions.
function M.pages_list_query_executions(client, input)
    return paginator.pages(client, "listQueryExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listSessions.
function M.pages_list_sessions(client, input)
    return paginator.pages(client, "listSessions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTableMetadata.
function M.pages_list_table_metadata(client, input)
    return paginator.pages(client, "listTableMetadata", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TableMetadataList",
    })
end

--- Returns an item iterator for listTableMetadata.
function M.items_list_table_metadata(client, input)
    return paginator.items(client, "listTableMetadata", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TableMetadataList",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns an item iterator for listTagsForResource.
function M.items_list_tags_for_resource(client, input)
    return paginator.items(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns a page iterator for listWorkGroups.
function M.pages_list_work_groups(client, input)
    return paginator.pages(client, "listWorkGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
