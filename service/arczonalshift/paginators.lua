local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAutoshifts.
function M.pages_list_autoshifts(client, input)
    return paginator.pages(client, "listAutoshifts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listAutoshifts.
function M.items_list_autoshifts(client, input)
    return paginator.items(client, "listAutoshifts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listManagedResources.
function M.pages_list_managed_resources(client, input)
    return paginator.pages(client, "listManagedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listManagedResources.
function M.items_list_managed_resources(client, input)
    return paginator.items(client, "listManagedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listZonalShifts.
function M.pages_list_zonal_shifts(client, input)
    return paginator.pages(client, "listZonalShifts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listZonalShifts.
function M.items_list_zonal_shifts(client, input)
    return paginator.items(client, "listZonalShifts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

return M
