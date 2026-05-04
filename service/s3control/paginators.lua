local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAccessGrants.
function M.pages_list_access_grants(client, input)
    return paginator.pages(client, "listAccessGrants", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAccessGrantsInstances.
function M.pages_list_access_grants_instances(client, input)
    return paginator.pages(client, "listAccessGrantsInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAccessGrantsLocations.
function M.pages_list_access_grants_locations(client, input)
    return paginator.pages(client, "listAccessGrantsLocations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAccessPoints.
function M.pages_list_access_points(client, input)
    return paginator.pages(client, "listAccessPoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAccessPointsForDirectoryBuckets.
function M.pages_list_access_points_for_directory_buckets(client, input)
    return paginator.pages(client, "listAccessPointsForDirectoryBuckets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccessPointList",
    })
end

--- Returns an item iterator for listAccessPointsForDirectoryBuckets.
function M.items_list_access_points_for_directory_buckets(client, input)
    return paginator.items(client, "listAccessPointsForDirectoryBuckets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccessPointList",
    })
end

--- Returns a page iterator for listAccessPointsForObjectLambda.
function M.pages_list_access_points_for_object_lambda(client, input)
    return paginator.pages(client, "listAccessPointsForObjectLambda", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ObjectLambdaAccessPointList",
    })
end

--- Returns an item iterator for listAccessPointsForObjectLambda.
function M.items_list_access_points_for_object_lambda(client, input)
    return paginator.items(client, "listAccessPointsForObjectLambda", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ObjectLambdaAccessPointList",
    })
end

--- Returns a page iterator for listCallerAccessGrants.
function M.pages_list_caller_access_grants(client, input)
    return paginator.pages(client, "listCallerAccessGrants", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CallerAccessGrantsList",
    })
end

--- Returns an item iterator for listCallerAccessGrants.
function M.items_list_caller_access_grants(client, input)
    return paginator.items(client, "listCallerAccessGrants", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CallerAccessGrantsList",
    })
end

--- Returns a page iterator for listJobs.
function M.pages_list_jobs(client, input)
    return paginator.pages(client, "listJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMultiRegionAccessPoints.
function M.pages_list_multi_region_access_points(client, input)
    return paginator.pages(client, "listMultiRegionAccessPoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listRegionalBuckets.
function M.pages_list_regional_buckets(client, input)
    return paginator.pages(client, "listRegionalBuckets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listStorageLensConfigurations.
function M.pages_list_storage_lens_configurations(client, input)
    return paginator.pages(client, "listStorageLensConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listStorageLensGroups.
function M.pages_list_storage_lens_groups(client, input)
    return paginator.pages(client, "listStorageLensGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
