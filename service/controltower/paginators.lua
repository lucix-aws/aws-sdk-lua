local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listBaselines.
function M.pages_list_baselines(client, input)
    return paginator.pages(client, "listBaselines", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "baselines",
    })
end

--- Returns an item iterator for listBaselines.
function M.items_list_baselines(client, input)
    return paginator.items(client, "listBaselines", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "baselines",
    })
end

--- Returns a page iterator for listControlOperations.
function M.pages_list_control_operations(client, input)
    return paginator.pages(client, "listControlOperations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "controlOperations",
    })
end

--- Returns an item iterator for listControlOperations.
function M.items_list_control_operations(client, input)
    return paginator.items(client, "listControlOperations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "controlOperations",
    })
end

--- Returns a page iterator for listEnabledBaselines.
function M.pages_list_enabled_baselines(client, input)
    return paginator.pages(client, "listEnabledBaselines", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "enabledBaselines",
    })
end

--- Returns an item iterator for listEnabledBaselines.
function M.items_list_enabled_baselines(client, input)
    return paginator.items(client, "listEnabledBaselines", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "enabledBaselines",
    })
end

--- Returns a page iterator for listEnabledControls.
function M.pages_list_enabled_controls(client, input)
    return paginator.pages(client, "listEnabledControls", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "enabledControls",
    })
end

--- Returns an item iterator for listEnabledControls.
function M.items_list_enabled_controls(client, input)
    return paginator.items(client, "listEnabledControls", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "enabledControls",
    })
end

--- Returns a page iterator for listLandingZoneOperations.
function M.pages_list_landing_zone_operations(client, input)
    return paginator.pages(client, "listLandingZoneOperations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "landingZoneOperations",
    })
end

--- Returns an item iterator for listLandingZoneOperations.
function M.items_list_landing_zone_operations(client, input)
    return paginator.items(client, "listLandingZoneOperations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "landingZoneOperations",
    })
end

--- Returns a page iterator for listLandingZones.
function M.pages_list_landing_zones(client, input)
    return paginator.pages(client, "listLandingZones", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "landingZones",
    })
end

--- Returns an item iterator for listLandingZones.
function M.items_list_landing_zones(client, input)
    return paginator.items(client, "listLandingZones", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "landingZones",
    })
end

return M
