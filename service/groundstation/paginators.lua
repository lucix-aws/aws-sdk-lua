local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAntennas.
function M.pages_list_antennas(client, input)
    return paginator.pages(client, "listAntennas", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "antennaList",
    })
end

--- Returns an item iterator for listAntennas.
function M.items_list_antennas(client, input)
    return paginator.items(client, "listAntennas", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "antennaList",
    })
end

--- Returns a page iterator for listConfigs.
function M.pages_list_configs(client, input)
    return paginator.pages(client, "listConfigs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "configList",
    })
end

--- Returns an item iterator for listConfigs.
function M.items_list_configs(client, input)
    return paginator.items(client, "listConfigs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "configList",
    })
end

--- Returns a page iterator for listContactVersions.
function M.pages_list_contact_versions(client, input)
    return paginator.pages(client, "listContactVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "contactVersionsList",
    })
end

--- Returns an item iterator for listContactVersions.
function M.items_list_contact_versions(client, input)
    return paginator.items(client, "listContactVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "contactVersionsList",
    })
end

--- Returns a page iterator for listContacts.
function M.pages_list_contacts(client, input)
    return paginator.pages(client, "listContacts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "contactList",
    })
end

--- Returns an item iterator for listContacts.
function M.items_list_contacts(client, input)
    return paginator.items(client, "listContacts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "contactList",
    })
end

--- Returns a page iterator for listDataflowEndpointGroups.
function M.pages_list_dataflow_endpoint_groups(client, input)
    return paginator.pages(client, "listDataflowEndpointGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataflowEndpointGroupList",
    })
end

--- Returns an item iterator for listDataflowEndpointGroups.
function M.items_list_dataflow_endpoint_groups(client, input)
    return paginator.items(client, "listDataflowEndpointGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataflowEndpointGroupList",
    })
end

--- Returns a page iterator for listEphemerides.
function M.pages_list_ephemerides(client, input)
    return paginator.pages(client, "listEphemerides", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ephemerides",
    })
end

--- Returns an item iterator for listEphemerides.
function M.items_list_ephemerides(client, input)
    return paginator.items(client, "listEphemerides", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ephemerides",
    })
end

--- Returns a page iterator for listGroundStationReservations.
function M.pages_list_ground_station_reservations(client, input)
    return paginator.pages(client, "listGroundStationReservations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "reservationList",
    })
end

--- Returns an item iterator for listGroundStationReservations.
function M.items_list_ground_station_reservations(client, input)
    return paginator.items(client, "listGroundStationReservations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "reservationList",
    })
end

--- Returns a page iterator for listGroundStations.
function M.pages_list_ground_stations(client, input)
    return paginator.pages(client, "listGroundStations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "groundStationList",
    })
end

--- Returns an item iterator for listGroundStations.
function M.items_list_ground_stations(client, input)
    return paginator.items(client, "listGroundStations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "groundStationList",
    })
end

--- Returns a page iterator for listMissionProfiles.
function M.pages_list_mission_profiles(client, input)
    return paginator.pages(client, "listMissionProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "missionProfileList",
    })
end

--- Returns an item iterator for listMissionProfiles.
function M.items_list_mission_profiles(client, input)
    return paginator.items(client, "listMissionProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "missionProfileList",
    })
end

--- Returns a page iterator for listSatellites.
function M.pages_list_satellites(client, input)
    return paginator.pages(client, "listSatellites", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "satellites",
    })
end

--- Returns an item iterator for listSatellites.
function M.items_list_satellites(client, input)
    return paginator.items(client, "listSatellites", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "satellites",
    })
end

return M
