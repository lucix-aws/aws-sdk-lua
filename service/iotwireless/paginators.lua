local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listDestinations.
function M.pages_list_destinations(client, input)
    return paginator.pages(client, "listDestinations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDeviceProfiles.
function M.pages_list_device_profiles(client, input)
    return paginator.pages(client, "listDeviceProfiles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listFuotaTasks.
function M.pages_list_fuota_tasks(client, input)
    return paginator.pages(client, "listFuotaTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMulticastGroups.
function M.pages_list_multicast_groups(client, input)
    return paginator.pages(client, "listMulticastGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listMulticastGroupsByFuotaTask.
function M.pages_list_multicast_groups_by_fuota_task(client, input)
    return paginator.pages(client, "listMulticastGroupsByFuotaTask", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listNetworkAnalyzerConfigurations.
function M.pages_list_network_analyzer_configurations(client, input)
    return paginator.pages(client, "listNetworkAnalyzerConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPositionConfigurations.
function M.pages_list_position_configurations(client, input)
    return paginator.pages(client, "listPositionConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listQueuedMessages.
function M.pages_list_queued_messages(client, input)
    return paginator.pages(client, "listQueuedMessages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listServiceProfiles.
function M.pages_list_service_profiles(client, input)
    return paginator.pages(client, "listServiceProfiles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listWirelessDevices.
function M.pages_list_wireless_devices(client, input)
    return paginator.pages(client, "listWirelessDevices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listWirelessGateways.
function M.pages_list_wireless_gateways(client, input)
    return paginator.pages(client, "listWirelessGateways", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
