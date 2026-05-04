local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getEffectivePermissionsForPath.
function M.pages_get_effective_permissions_for_path(client, input)
    return paginator.pages(client, "getEffectivePermissionsForPath", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getTableObjects.
function M.pages_get_table_objects(client, input)
    return paginator.pages(client, "getTableObjects", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getWorkUnits.
function M.pages_get_work_units(client, input)
    return paginator.pages(client, "getWorkUnits", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WorkUnitRanges",
    })
end

--- Returns an item iterator for getWorkUnits.
function M.items_get_work_units(client, input)
    return paginator.items(client, "getWorkUnits", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WorkUnitRanges",
    })
end

--- Returns a page iterator for listDataCellsFilter.
function M.pages_list_data_cells_filter(client, input)
    return paginator.pages(client, "listDataCellsFilter", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataCellsFilters",
    })
end

--- Returns an item iterator for listDataCellsFilter.
function M.items_list_data_cells_filter(client, input)
    return paginator.items(client, "listDataCellsFilter", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DataCellsFilters",
    })
end

--- Returns a page iterator for listLFTagExpressions.
function M.pages_list_l_f_tag_expressions(client, input)
    return paginator.pages(client, "listLFTagExpressions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LFTagExpressions",
    })
end

--- Returns an item iterator for listLFTagExpressions.
function M.items_list_l_f_tag_expressions(client, input)
    return paginator.items(client, "listLFTagExpressions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LFTagExpressions",
    })
end

--- Returns a page iterator for listLFTags.
function M.pages_list_l_f_tags(client, input)
    return paginator.pages(client, "listLFTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LFTags",
    })
end

--- Returns an item iterator for listLFTags.
function M.items_list_l_f_tags(client, input)
    return paginator.items(client, "listLFTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LFTags",
    })
end

--- Returns a page iterator for listLakeFormationOptIns.
function M.pages_list_lake_formation_opt_ins(client, input)
    return paginator.pages(client, "listLakeFormationOptIns", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPermissions.
function M.pages_list_permissions(client, input)
    return paginator.pages(client, "listPermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listResources.
function M.pages_list_resources(client, input)
    return paginator.pages(client, "listResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTableStorageOptimizers.
function M.pages_list_table_storage_optimizers(client, input)
    return paginator.pages(client, "listTableStorageOptimizers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTransactions.
function M.pages_list_transactions(client, input)
    return paginator.pages(client, "listTransactions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for searchDatabasesByLFTags.
function M.pages_search_databases_by_l_f_tags(client, input)
    return paginator.pages(client, "searchDatabasesByLFTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatabaseList",
    })
end

--- Returns an item iterator for searchDatabasesByLFTags.
function M.items_search_databases_by_l_f_tags(client, input)
    return paginator.items(client, "searchDatabasesByLFTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatabaseList",
    })
end

--- Returns a page iterator for searchTablesByLFTags.
function M.pages_search_tables_by_l_f_tags(client, input)
    return paginator.pages(client, "searchTablesByLFTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TableList",
    })
end

--- Returns an item iterator for searchTablesByLFTags.
function M.items_search_tables_by_l_f_tags(client, input)
    return paginator.items(client, "searchTablesByLFTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TableList",
    })
end

return M
