local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeFleetAttributes.
function M.pages_describe_fleet_attributes(client, input)
    return paginator.pages(client, "describeFleetAttributes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FleetAttributes",
    })
end

--- Returns an item iterator for describeFleetAttributes.
function M.items_describe_fleet_attributes(client, input)
    return paginator.items(client, "describeFleetAttributes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FleetAttributes",
    })
end

--- Returns a page iterator for describeFleetCapacity.
function M.pages_describe_fleet_capacity(client, input)
    return paginator.pages(client, "describeFleetCapacity", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FleetCapacity",
    })
end

--- Returns an item iterator for describeFleetCapacity.
function M.items_describe_fleet_capacity(client, input)
    return paginator.items(client, "describeFleetCapacity", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FleetCapacity",
    })
end

--- Returns a page iterator for describeFleetEvents.
function M.pages_describe_fleet_events(client, input)
    return paginator.pages(client, "describeFleetEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns an item iterator for describeFleetEvents.
function M.items_describe_fleet_events(client, input)
    return paginator.items(client, "describeFleetEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns a page iterator for describeFleetLocationAttributes.
function M.pages_describe_fleet_location_attributes(client, input)
    return paginator.pages(client, "describeFleetLocationAttributes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeFleetUtilization.
function M.pages_describe_fleet_utilization(client, input)
    return paginator.pages(client, "describeFleetUtilization", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FleetUtilization",
    })
end

--- Returns an item iterator for describeFleetUtilization.
function M.items_describe_fleet_utilization(client, input)
    return paginator.items(client, "describeFleetUtilization", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FleetUtilization",
    })
end

--- Returns a page iterator for describeGameServerInstances.
function M.pages_describe_game_server_instances(client, input)
    return paginator.pages(client, "describeGameServerInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameServerInstances",
    })
end

--- Returns an item iterator for describeGameServerInstances.
function M.items_describe_game_server_instances(client, input)
    return paginator.items(client, "describeGameServerInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameServerInstances",
    })
end

--- Returns a page iterator for describeGameSessionDetails.
function M.pages_describe_game_session_details(client, input)
    return paginator.pages(client, "describeGameSessionDetails", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameSessionDetails",
    })
end

--- Returns an item iterator for describeGameSessionDetails.
function M.items_describe_game_session_details(client, input)
    return paginator.items(client, "describeGameSessionDetails", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameSessionDetails",
    })
end

--- Returns a page iterator for describeGameSessionQueues.
function M.pages_describe_game_session_queues(client, input)
    return paginator.pages(client, "describeGameSessionQueues", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameSessionQueues",
    })
end

--- Returns an item iterator for describeGameSessionQueues.
function M.items_describe_game_session_queues(client, input)
    return paginator.items(client, "describeGameSessionQueues", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameSessionQueues",
    })
end

--- Returns a page iterator for describeGameSessions.
function M.pages_describe_game_sessions(client, input)
    return paginator.pages(client, "describeGameSessions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameSessions",
    })
end

--- Returns an item iterator for describeGameSessions.
function M.items_describe_game_sessions(client, input)
    return paginator.items(client, "describeGameSessions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameSessions",
    })
end

--- Returns a page iterator for describeInstances.
function M.pages_describe_instances(client, input)
    return paginator.pages(client, "describeInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Instances",
    })
end

--- Returns an item iterator for describeInstances.
function M.items_describe_instances(client, input)
    return paginator.items(client, "describeInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Instances",
    })
end

--- Returns a page iterator for describeMatchmakingConfigurations.
function M.pages_describe_matchmaking_configurations(client, input)
    return paginator.pages(client, "describeMatchmakingConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Configurations",
    })
end

--- Returns an item iterator for describeMatchmakingConfigurations.
function M.items_describe_matchmaking_configurations(client, input)
    return paginator.items(client, "describeMatchmakingConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Configurations",
    })
end

--- Returns a page iterator for describeMatchmakingRuleSets.
function M.pages_describe_matchmaking_rule_sets(client, input)
    return paginator.pages(client, "describeMatchmakingRuleSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RuleSets",
    })
end

--- Returns an item iterator for describeMatchmakingRuleSets.
function M.items_describe_matchmaking_rule_sets(client, input)
    return paginator.items(client, "describeMatchmakingRuleSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RuleSets",
    })
end

--- Returns a page iterator for describePlayerSessions.
function M.pages_describe_player_sessions(client, input)
    return paginator.pages(client, "describePlayerSessions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PlayerSessions",
    })
end

--- Returns an item iterator for describePlayerSessions.
function M.items_describe_player_sessions(client, input)
    return paginator.items(client, "describePlayerSessions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PlayerSessions",
    })
end

--- Returns a page iterator for describeScalingPolicies.
function M.pages_describe_scaling_policies(client, input)
    return paginator.pages(client, "describeScalingPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScalingPolicies",
    })
end

--- Returns an item iterator for describeScalingPolicies.
function M.items_describe_scaling_policies(client, input)
    return paginator.items(client, "describeScalingPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScalingPolicies",
    })
end

--- Returns a page iterator for listAliases.
function M.pages_list_aliases(client, input)
    return paginator.pages(client, "listAliases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Aliases",
    })
end

--- Returns an item iterator for listAliases.
function M.items_list_aliases(client, input)
    return paginator.items(client, "listAliases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Aliases",
    })
end

--- Returns a page iterator for listBuilds.
function M.pages_list_builds(client, input)
    return paginator.pages(client, "listBuilds", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Builds",
    })
end

--- Returns an item iterator for listBuilds.
function M.items_list_builds(client, input)
    return paginator.items(client, "listBuilds", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Builds",
    })
end

--- Returns a page iterator for listCompute.
function M.pages_list_compute(client, input)
    return paginator.pages(client, "listCompute", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ComputeList",
    })
end

--- Returns an item iterator for listCompute.
function M.items_list_compute(client, input)
    return paginator.items(client, "listCompute", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ComputeList",
    })
end

--- Returns a page iterator for listContainerFleets.
function M.pages_list_container_fleets(client, input)
    return paginator.pages(client, "listContainerFleets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ContainerFleets",
    })
end

--- Returns an item iterator for listContainerFleets.
function M.items_list_container_fleets(client, input)
    return paginator.items(client, "listContainerFleets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ContainerFleets",
    })
end

--- Returns a page iterator for listContainerGroupDefinitionVersions.
function M.pages_list_container_group_definition_versions(client, input)
    return paginator.pages(client, "listContainerGroupDefinitionVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ContainerGroupDefinitions",
    })
end

--- Returns an item iterator for listContainerGroupDefinitionVersions.
function M.items_list_container_group_definition_versions(client, input)
    return paginator.items(client, "listContainerGroupDefinitionVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ContainerGroupDefinitions",
    })
end

--- Returns a page iterator for listContainerGroupDefinitions.
function M.pages_list_container_group_definitions(client, input)
    return paginator.pages(client, "listContainerGroupDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ContainerGroupDefinitions",
    })
end

--- Returns an item iterator for listContainerGroupDefinitions.
function M.items_list_container_group_definitions(client, input)
    return paginator.items(client, "listContainerGroupDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ContainerGroupDefinitions",
    })
end

--- Returns a page iterator for listFleetDeployments.
function M.pages_list_fleet_deployments(client, input)
    return paginator.pages(client, "listFleetDeployments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FleetDeployments",
    })
end

--- Returns an item iterator for listFleetDeployments.
function M.items_list_fleet_deployments(client, input)
    return paginator.items(client, "listFleetDeployments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FleetDeployments",
    })
end

--- Returns a page iterator for listFleets.
function M.pages_list_fleets(client, input)
    return paginator.pages(client, "listFleets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FleetIds",
    })
end

--- Returns an item iterator for listFleets.
function M.items_list_fleets(client, input)
    return paginator.items(client, "listFleets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FleetIds",
    })
end

--- Returns a page iterator for listGameServerGroups.
function M.pages_list_game_server_groups(client, input)
    return paginator.pages(client, "listGameServerGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameServerGroups",
    })
end

--- Returns an item iterator for listGameServerGroups.
function M.items_list_game_server_groups(client, input)
    return paginator.items(client, "listGameServerGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameServerGroups",
    })
end

--- Returns a page iterator for listGameServers.
function M.pages_list_game_servers(client, input)
    return paginator.pages(client, "listGameServers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameServers",
    })
end

--- Returns an item iterator for listGameServers.
function M.items_list_game_servers(client, input)
    return paginator.items(client, "listGameServers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameServers",
    })
end

--- Returns a page iterator for listLocations.
function M.pages_list_locations(client, input)
    return paginator.pages(client, "listLocations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Locations",
    })
end

--- Returns an item iterator for listLocations.
function M.items_list_locations(client, input)
    return paginator.items(client, "listLocations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Locations",
    })
end

--- Returns a page iterator for listScripts.
function M.pages_list_scripts(client, input)
    return paginator.pages(client, "listScripts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Scripts",
    })
end

--- Returns an item iterator for listScripts.
function M.items_list_scripts(client, input)
    return paginator.items(client, "listScripts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Scripts",
    })
end

--- Returns a page iterator for searchGameSessions.
function M.pages_search_game_sessions(client, input)
    return paginator.pages(client, "searchGameSessions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameSessions",
    })
end

--- Returns an item iterator for searchGameSessions.
function M.items_search_game_sessions(client, input)
    return paginator.items(client, "searchGameSessions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GameSessions",
    })
end

return M
