local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeAccessPoints.
function M.pages_describe_access_points(client, input)
    return paginator.pages(client, "describeAccessPoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccessPoints",
    })
end

--- Returns an item iterator for describeAccessPoints.
function M.items_describe_access_points(client, input)
    return paginator.items(client, "describeAccessPoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccessPoints",
    })
end

--- Returns a page iterator for describeFileSystems.
function M.pages_describe_file_systems(client, input)
    return paginator.pages(client, "describeFileSystems", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FileSystems",
    })
end

--- Returns an item iterator for describeFileSystems.
function M.items_describe_file_systems(client, input)
    return paginator.items(client, "describeFileSystems", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FileSystems",
    })
end

--- Returns a page iterator for describeMountTargets.
function M.pages_describe_mount_targets(client, input)
    return paginator.pages(client, "describeMountTargets", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "MountTargets",
    })
end

--- Returns an item iterator for describeMountTargets.
function M.items_describe_mount_targets(client, input)
    return paginator.items(client, "describeMountTargets", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "MountTargets",
    })
end

--- Returns a page iterator for describeReplicationConfigurations.
function M.pages_describe_replication_configurations(client, input)
    return paginator.pages(client, "describeReplicationConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Replications",
    })
end

--- Returns an item iterator for describeReplicationConfigurations.
function M.items_describe_replication_configurations(client, input)
    return paginator.items(client, "describeReplicationConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Replications",
    })
end

--- Returns a page iterator for describeTags.
function M.pages_describe_tags(client, input)
    return paginator.pages(client, "describeTags", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Tags",
    })
end

--- Returns an item iterator for describeTags.
function M.items_describe_tags(client, input)
    return paginator.items(client, "describeTags", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Tags",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
