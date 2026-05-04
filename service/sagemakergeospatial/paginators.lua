local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listEarthObservationJobs.
function M.pages_list_earth_observation_jobs(client, input)
    return paginator.pages(client, "listEarthObservationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EarthObservationJobSummaries",
    })
end

--- Returns an item iterator for listEarthObservationJobs.
function M.items_list_earth_observation_jobs(client, input)
    return paginator.items(client, "listEarthObservationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EarthObservationJobSummaries",
    })
end

--- Returns a page iterator for listRasterDataCollections.
function M.pages_list_raster_data_collections(client, input)
    return paginator.pages(client, "listRasterDataCollections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RasterDataCollectionSummaries",
    })
end

--- Returns an item iterator for listRasterDataCollections.
function M.items_list_raster_data_collections(client, input)
    return paginator.items(client, "listRasterDataCollections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RasterDataCollectionSummaries",
    })
end

--- Returns a page iterator for listVectorEnrichmentJobs.
function M.pages_list_vector_enrichment_jobs(client, input)
    return paginator.pages(client, "listVectorEnrichmentJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "VectorEnrichmentJobSummaries",
    })
end

--- Returns an item iterator for listVectorEnrichmentJobs.
function M.items_list_vector_enrichment_jobs(client, input)
    return paginator.items(client, "listVectorEnrichmentJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "VectorEnrichmentJobSummaries",
    })
end

--- Returns a page iterator for searchRasterDataCollection.
function M.pages_search_raster_data_collection(client, input)
    return paginator.pages(client, "searchRasterDataCollection", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
