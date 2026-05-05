local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeSchedule.
function M.pages_describe_schedule(client, input)
    return paginator.pages(client, "describeSchedule", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScheduleActions",
    })
end

--- Returns an item iterator for describeSchedule.
function M.items_describe_schedule(client, input)
    return paginator.items(client, "describeSchedule", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScheduleActions",
    })
end

--- Returns a page iterator for listAlerts.
function M.pages_list_alerts(client, input)
    return paginator.pages(client, "listAlerts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Alerts",
    })
end

--- Returns an item iterator for listAlerts.
function M.items_list_alerts(client, input)
    return paginator.items(client, "listAlerts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Alerts",
    })
end

--- Returns a page iterator for listChannelPlacementGroups.
function M.pages_list_channel_placement_groups(client, input)
    return paginator.pages(client, "listChannelPlacementGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ChannelPlacementGroups",
    })
end

--- Returns an item iterator for listChannelPlacementGroups.
function M.items_list_channel_placement_groups(client, input)
    return paginator.items(client, "listChannelPlacementGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ChannelPlacementGroups",
    })
end

--- Returns a page iterator for listChannels.
function M.pages_list_channels(client, input)
    return paginator.pages(client, "listChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Channels",
    })
end

--- Returns an item iterator for listChannels.
function M.items_list_channels(client, input)
    return paginator.items(client, "listChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Channels",
    })
end

--- Returns a page iterator for listCloudWatchAlarmTemplateGroups.
function M.pages_list_cloud_watch_alarm_template_groups(client, input)
    return paginator.pages(client, "listCloudWatchAlarmTemplateGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CloudWatchAlarmTemplateGroups",
    })
end

--- Returns an item iterator for listCloudWatchAlarmTemplateGroups.
function M.items_list_cloud_watch_alarm_template_groups(client, input)
    return paginator.items(client, "listCloudWatchAlarmTemplateGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CloudWatchAlarmTemplateGroups",
    })
end

--- Returns a page iterator for listCloudWatchAlarmTemplates.
function M.pages_list_cloud_watch_alarm_templates(client, input)
    return paginator.pages(client, "listCloudWatchAlarmTemplates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CloudWatchAlarmTemplates",
    })
end

--- Returns an item iterator for listCloudWatchAlarmTemplates.
function M.items_list_cloud_watch_alarm_templates(client, input)
    return paginator.items(client, "listCloudWatchAlarmTemplates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CloudWatchAlarmTemplates",
    })
end

--- Returns a page iterator for listClusterAlerts.
function M.pages_list_cluster_alerts(client, input)
    return paginator.pages(client, "listClusterAlerts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Alerts",
    })
end

--- Returns an item iterator for listClusterAlerts.
function M.items_list_cluster_alerts(client, input)
    return paginator.items(client, "listClusterAlerts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Alerts",
    })
end

--- Returns a page iterator for listClusters.
function M.pages_list_clusters(client, input)
    return paginator.pages(client, "listClusters", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Clusters",
    })
end

--- Returns an item iterator for listClusters.
function M.items_list_clusters(client, input)
    return paginator.items(client, "listClusters", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Clusters",
    })
end

--- Returns a page iterator for listEventBridgeRuleTemplateGroups.
function M.pages_list_event_bridge_rule_template_groups(client, input)
    return paginator.pages(client, "listEventBridgeRuleTemplateGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EventBridgeRuleTemplateGroups",
    })
end

--- Returns an item iterator for listEventBridgeRuleTemplateGroups.
function M.items_list_event_bridge_rule_template_groups(client, input)
    return paginator.items(client, "listEventBridgeRuleTemplateGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EventBridgeRuleTemplateGroups",
    })
end

--- Returns a page iterator for listEventBridgeRuleTemplates.
function M.pages_list_event_bridge_rule_templates(client, input)
    return paginator.pages(client, "listEventBridgeRuleTemplates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EventBridgeRuleTemplates",
    })
end

--- Returns an item iterator for listEventBridgeRuleTemplates.
function M.items_list_event_bridge_rule_templates(client, input)
    return paginator.items(client, "listEventBridgeRuleTemplates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EventBridgeRuleTemplates",
    })
end

--- Returns a page iterator for listInputDeviceTransfers.
function M.pages_list_input_device_transfers(client, input)
    return paginator.pages(client, "listInputDeviceTransfers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InputDeviceTransfers",
    })
end

--- Returns an item iterator for listInputDeviceTransfers.
function M.items_list_input_device_transfers(client, input)
    return paginator.items(client, "listInputDeviceTransfers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InputDeviceTransfers",
    })
end

--- Returns a page iterator for listInputDevices.
function M.pages_list_input_devices(client, input)
    return paginator.pages(client, "listInputDevices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InputDevices",
    })
end

--- Returns an item iterator for listInputDevices.
function M.items_list_input_devices(client, input)
    return paginator.items(client, "listInputDevices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InputDevices",
    })
end

--- Returns a page iterator for listInputSecurityGroups.
function M.pages_list_input_security_groups(client, input)
    return paginator.pages(client, "listInputSecurityGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InputSecurityGroups",
    })
end

--- Returns an item iterator for listInputSecurityGroups.
function M.items_list_input_security_groups(client, input)
    return paginator.items(client, "listInputSecurityGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InputSecurityGroups",
    })
end

--- Returns a page iterator for listInputs.
function M.pages_list_inputs(client, input)
    return paginator.pages(client, "listInputs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Inputs",
    })
end

--- Returns an item iterator for listInputs.
function M.items_list_inputs(client, input)
    return paginator.items(client, "listInputs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Inputs",
    })
end

--- Returns a page iterator for listMultiplexAlerts.
function M.pages_list_multiplex_alerts(client, input)
    return paginator.pages(client, "listMultiplexAlerts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Alerts",
    })
end

--- Returns an item iterator for listMultiplexAlerts.
function M.items_list_multiplex_alerts(client, input)
    return paginator.items(client, "listMultiplexAlerts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Alerts",
    })
end

--- Returns a page iterator for listMultiplexPrograms.
function M.pages_list_multiplex_programs(client, input)
    return paginator.pages(client, "listMultiplexPrograms", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MultiplexPrograms",
    })
end

--- Returns an item iterator for listMultiplexPrograms.
function M.items_list_multiplex_programs(client, input)
    return paginator.items(client, "listMultiplexPrograms", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MultiplexPrograms",
    })
end

--- Returns a page iterator for listMultiplexes.
function M.pages_list_multiplexes(client, input)
    return paginator.pages(client, "listMultiplexes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Multiplexes",
    })
end

--- Returns an item iterator for listMultiplexes.
function M.items_list_multiplexes(client, input)
    return paginator.items(client, "listMultiplexes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Multiplexes",
    })
end

--- Returns a page iterator for listNetworks.
function M.pages_list_networks(client, input)
    return paginator.pages(client, "listNetworks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Networks",
    })
end

--- Returns an item iterator for listNetworks.
function M.items_list_networks(client, input)
    return paginator.items(client, "listNetworks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Networks",
    })
end

--- Returns a page iterator for listNodes.
function M.pages_list_nodes(client, input)
    return paginator.pages(client, "listNodes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Nodes",
    })
end

--- Returns an item iterator for listNodes.
function M.items_list_nodes(client, input)
    return paginator.items(client, "listNodes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Nodes",
    })
end

--- Returns a page iterator for listOfferings.
function M.pages_list_offerings(client, input)
    return paginator.pages(client, "listOfferings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Offerings",
    })
end

--- Returns an item iterator for listOfferings.
function M.items_list_offerings(client, input)
    return paginator.items(client, "listOfferings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Offerings",
    })
end

--- Returns a page iterator for listReservations.
function M.pages_list_reservations(client, input)
    return paginator.pages(client, "listReservations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Reservations",
    })
end

--- Returns an item iterator for listReservations.
function M.items_list_reservations(client, input)
    return paginator.items(client, "listReservations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Reservations",
    })
end

--- Returns a page iterator for listSdiSources.
function M.pages_list_sdi_sources(client, input)
    return paginator.pages(client, "listSdiSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SdiSources",
    })
end

--- Returns an item iterator for listSdiSources.
function M.items_list_sdi_sources(client, input)
    return paginator.items(client, "listSdiSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SdiSources",
    })
end

--- Returns a page iterator for listSignalMaps.
function M.pages_list_signal_maps(client, input)
    return paginator.pages(client, "listSignalMaps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SignalMaps",
    })
end

--- Returns an item iterator for listSignalMaps.
function M.items_list_signal_maps(client, input)
    return paginator.items(client, "listSignalMaps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SignalMaps",
    })
end

return M
