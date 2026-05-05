local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeTapeArchives.
function M.pages_describe_tape_archives(client, input)
    return paginator.pages(client, "describeTapeArchives", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TapeArchives",
    })
end

--- Returns an item iterator for describeTapeArchives.
function M.items_describe_tape_archives(client, input)
    return paginator.items(client, "describeTapeArchives", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TapeArchives",
    })
end

--- Returns a page iterator for describeTapeRecoveryPoints.
function M.pages_describe_tape_recovery_points(client, input)
    return paginator.pages(client, "describeTapeRecoveryPoints", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TapeRecoveryPointInfos",
    })
end

--- Returns an item iterator for describeTapeRecoveryPoints.
function M.items_describe_tape_recovery_points(client, input)
    return paginator.items(client, "describeTapeRecoveryPoints", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TapeRecoveryPointInfos",
    })
end

--- Returns a page iterator for describeTapes.
function M.pages_describe_tapes(client, input)
    return paginator.pages(client, "describeTapes", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tapes",
    })
end

--- Returns an item iterator for describeTapes.
function M.items_describe_tapes(client, input)
    return paginator.items(client, "describeTapes", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tapes",
    })
end

--- Returns a page iterator for describeVTLDevices.
function M.pages_describe_v_t_l_devices(client, input)
    return paginator.pages(client, "describeVTLDevices", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "VTLDevices",
    })
end

--- Returns an item iterator for describeVTLDevices.
function M.items_describe_v_t_l_devices(client, input)
    return paginator.items(client, "describeVTLDevices", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "VTLDevices",
    })
end

--- Returns a page iterator for listCacheReports.
function M.pages_list_cache_reports(client, input)
    return paginator.pages(client, "listCacheReports", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheReportList",
    })
end

--- Returns an item iterator for listCacheReports.
function M.items_list_cache_reports(client, input)
    return paginator.items(client, "listCacheReports", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheReportList",
    })
end

--- Returns a page iterator for listFileShares.
function M.pages_list_file_shares(client, input)
    return paginator.pages(client, "listFileShares", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FileShareInfoList",
    })
end

--- Returns an item iterator for listFileShares.
function M.items_list_file_shares(client, input)
    return paginator.items(client, "listFileShares", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FileShareInfoList",
    })
end

--- Returns a page iterator for listFileSystemAssociations.
function M.pages_list_file_system_associations(client, input)
    return paginator.pages(client, "listFileSystemAssociations", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FileSystemAssociationSummaryList",
    })
end

--- Returns an item iterator for listFileSystemAssociations.
function M.items_list_file_system_associations(client, input)
    return paginator.items(client, "listFileSystemAssociations", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FileSystemAssociationSummaryList",
    })
end

--- Returns a page iterator for listGateways.
function M.pages_list_gateways(client, input)
    return paginator.pages(client, "listGateways", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Gateways",
    })
end

--- Returns an item iterator for listGateways.
function M.items_list_gateways(client, input)
    return paginator.items(client, "listGateways", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Gateways",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns an item iterator for listTagsForResource.
function M.items_list_tags_for_resource(client, input)
    return paginator.items(client, "listTagsForResource", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Tags",
    })
end

--- Returns a page iterator for listTapePools.
function M.pages_list_tape_pools(client, input)
    return paginator.pages(client, "listTapePools", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "PoolInfos",
    })
end

--- Returns an item iterator for listTapePools.
function M.items_list_tape_pools(client, input)
    return paginator.items(client, "listTapePools", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "PoolInfos",
    })
end

--- Returns a page iterator for listTapes.
function M.pages_list_tapes(client, input)
    return paginator.pages(client, "listTapes", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TapeInfos",
    })
end

--- Returns an item iterator for listTapes.
function M.items_list_tapes(client, input)
    return paginator.items(client, "listTapes", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TapeInfos",
    })
end

--- Returns a page iterator for listVolumes.
function M.pages_list_volumes(client, input)
    return paginator.pages(client, "listVolumes", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "VolumeInfos",
    })
end

--- Returns an item iterator for listVolumes.
function M.items_list_volumes(client, input)
    return paginator.items(client, "listVolumes", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "VolumeInfos",
    })
end

return M
