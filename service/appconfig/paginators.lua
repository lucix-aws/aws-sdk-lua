local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listApplications.
function M.pages_list_applications(client, input)
    return paginator.pages(client, "listApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listApplications.
function M.items_list_applications(client, input)
    return paginator.items(client, "listApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listConfigurationProfiles.
function M.pages_list_configuration_profiles(client, input)
    return paginator.pages(client, "listConfigurationProfiles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listConfigurationProfiles.
function M.items_list_configuration_profiles(client, input)
    return paginator.items(client, "listConfigurationProfiles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listDeploymentStrategies.
function M.pages_list_deployment_strategies(client, input)
    return paginator.pages(client, "listDeploymentStrategies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listDeploymentStrategies.
function M.items_list_deployment_strategies(client, input)
    return paginator.items(client, "listDeploymentStrategies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listDeployments.
function M.pages_list_deployments(client, input)
    return paginator.pages(client, "listDeployments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listDeployments.
function M.items_list_deployments(client, input)
    return paginator.items(client, "listDeployments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listEnvironments.
function M.pages_list_environments(client, input)
    return paginator.pages(client, "listEnvironments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listEnvironments.
function M.items_list_environments(client, input)
    return paginator.items(client, "listEnvironments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listExtensionAssociations.
function M.pages_list_extension_associations(client, input)
    return paginator.pages(client, "listExtensionAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listExtensionAssociations.
function M.items_list_extension_associations(client, input)
    return paginator.items(client, "listExtensionAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listExtensions.
function M.pages_list_extensions(client, input)
    return paginator.pages(client, "listExtensions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listExtensions.
function M.items_list_extensions(client, input)
    return paginator.items(client, "listExtensions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listHostedConfigurationVersions.
function M.pages_list_hosted_configuration_versions(client, input)
    return paginator.pages(client, "listHostedConfigurationVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listHostedConfigurationVersions.
function M.items_list_hosted_configuration_versions(client, input)
    return paginator.items(client, "listHostedConfigurationVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

return M
