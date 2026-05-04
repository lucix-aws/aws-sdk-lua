local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listConfigurationManagers.
function M.pages_list_configuration_managers(client, input)
    return paginator.pages(client, "listConfigurationManagers", input, {
        input_token = "StartingToken",
        output_token = "NextToken",
        items = "ConfigurationManagersList",
    })
end

--- Returns an item iterator for listConfigurationManagers.
function M.items_list_configuration_managers(client, input)
    return paginator.items(client, "listConfigurationManagers", input, {
        input_token = "StartingToken",
        output_token = "NextToken",
        items = "ConfigurationManagersList",
    })
end

--- Returns a page iterator for listConfigurations.
function M.pages_list_configurations(client, input)
    return paginator.pages(client, "listConfigurations", input, {
        input_token = "StartingToken",
        output_token = "NextToken",
        items = "ConfigurationsList",
    })
end

--- Returns an item iterator for listConfigurations.
function M.items_list_configurations(client, input)
    return paginator.items(client, "listConfigurations", input, {
        input_token = "StartingToken",
        output_token = "NextToken",
        items = "ConfigurationsList",
    })
end

return M
