local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listDICOMImportJobs.
function M.pages_list_d_i_c_o_m_import_jobs(client, input)
    return paginator.pages(client, "listDICOMImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobSummaries",
    })
end

--- Returns an item iterator for listDICOMImportJobs.
function M.items_list_d_i_c_o_m_import_jobs(client, input)
    return paginator.items(client, "listDICOMImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobSummaries",
    })
end

--- Returns a page iterator for listDatastores.
function M.pages_list_datastores(client, input)
    return paginator.pages(client, "listDatastores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "datastoreSummaries",
    })
end

--- Returns an item iterator for listDatastores.
function M.items_list_datastores(client, input)
    return paginator.items(client, "listDatastores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "datastoreSummaries",
    })
end

--- Returns a page iterator for listImageSetVersions.
function M.pages_list_image_set_versions(client, input)
    return paginator.pages(client, "listImageSetVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "imageSetPropertiesList",
    })
end

--- Returns an item iterator for listImageSetVersions.
function M.items_list_image_set_versions(client, input)
    return paginator.items(client, "listImageSetVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "imageSetPropertiesList",
    })
end

--- Returns a page iterator for searchImageSets.
function M.pages_search_image_sets(client, input)
    return paginator.pages(client, "searchImageSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "imageSetsMetadataSummaries",
    })
end

--- Returns an item iterator for searchImageSets.
function M.items_search_image_sets(client, input)
    return paginator.items(client, "searchImageSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "imageSetsMetadataSummaries",
    })
end

return M
