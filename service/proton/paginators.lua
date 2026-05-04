local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listComponentOutputs.
function M.pages_list_component_outputs(client, input)
    return paginator.pages(client, "listComponentOutputs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "outputs",
    })
end

--- Returns an item iterator for listComponentOutputs.
function M.items_list_component_outputs(client, input)
    return paginator.items(client, "listComponentOutputs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "outputs",
    })
end

--- Returns a page iterator for listComponentProvisionedResources.
function M.pages_list_component_provisioned_resources(client, input)
    return paginator.pages(client, "listComponentProvisionedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "provisionedResources",
    })
end

--- Returns an item iterator for listComponentProvisionedResources.
function M.items_list_component_provisioned_resources(client, input)
    return paginator.items(client, "listComponentProvisionedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "provisionedResources",
    })
end

--- Returns a page iterator for listComponents.
function M.pages_list_components(client, input)
    return paginator.pages(client, "listComponents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "components",
    })
end

--- Returns an item iterator for listComponents.
function M.items_list_components(client, input)
    return paginator.items(client, "listComponents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "components",
    })
end

--- Returns a page iterator for listDeployments.
function M.pages_list_deployments(client, input)
    return paginator.pages(client, "listDeployments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deployments",
    })
end

--- Returns an item iterator for listDeployments.
function M.items_list_deployments(client, input)
    return paginator.items(client, "listDeployments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deployments",
    })
end

--- Returns a page iterator for listEnvironmentAccountConnections.
function M.pages_list_environment_account_connections(client, input)
    return paginator.pages(client, "listEnvironmentAccountConnections", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environmentAccountConnections",
    })
end

--- Returns an item iterator for listEnvironmentAccountConnections.
function M.items_list_environment_account_connections(client, input)
    return paginator.items(client, "listEnvironmentAccountConnections", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environmentAccountConnections",
    })
end

--- Returns a page iterator for listEnvironmentOutputs.
function M.pages_list_environment_outputs(client, input)
    return paginator.pages(client, "listEnvironmentOutputs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "outputs",
    })
end

--- Returns an item iterator for listEnvironmentOutputs.
function M.items_list_environment_outputs(client, input)
    return paginator.items(client, "listEnvironmentOutputs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "outputs",
    })
end

--- Returns a page iterator for listEnvironmentProvisionedResources.
function M.pages_list_environment_provisioned_resources(client, input)
    return paginator.pages(client, "listEnvironmentProvisionedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "provisionedResources",
    })
end

--- Returns an item iterator for listEnvironmentProvisionedResources.
function M.items_list_environment_provisioned_resources(client, input)
    return paginator.items(client, "listEnvironmentProvisionedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "provisionedResources",
    })
end

--- Returns a page iterator for listEnvironmentTemplateVersions.
function M.pages_list_environment_template_versions(client, input)
    return paginator.pages(client, "listEnvironmentTemplateVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templateVersions",
    })
end

--- Returns an item iterator for listEnvironmentTemplateVersions.
function M.items_list_environment_template_versions(client, input)
    return paginator.items(client, "listEnvironmentTemplateVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templateVersions",
    })
end

--- Returns a page iterator for listEnvironmentTemplates.
function M.pages_list_environment_templates(client, input)
    return paginator.pages(client, "listEnvironmentTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templates",
    })
end

--- Returns an item iterator for listEnvironmentTemplates.
function M.items_list_environment_templates(client, input)
    return paginator.items(client, "listEnvironmentTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templates",
    })
end

--- Returns a page iterator for listEnvironments.
function M.pages_list_environments(client, input)
    return paginator.pages(client, "listEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environments",
    })
end

--- Returns an item iterator for listEnvironments.
function M.items_list_environments(client, input)
    return paginator.items(client, "listEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environments",
    })
end

--- Returns a page iterator for listRepositories.
function M.pages_list_repositories(client, input)
    return paginator.pages(client, "listRepositories", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "repositories",
    })
end

--- Returns an item iterator for listRepositories.
function M.items_list_repositories(client, input)
    return paginator.items(client, "listRepositories", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "repositories",
    })
end

--- Returns a page iterator for listRepositorySyncDefinitions.
function M.pages_list_repository_sync_definitions(client, input)
    return paginator.pages(client, "listRepositorySyncDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "syncDefinitions",
    })
end

--- Returns an item iterator for listRepositorySyncDefinitions.
function M.items_list_repository_sync_definitions(client, input)
    return paginator.items(client, "listRepositorySyncDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "syncDefinitions",
    })
end

--- Returns a page iterator for listServiceInstanceOutputs.
function M.pages_list_service_instance_outputs(client, input)
    return paginator.pages(client, "listServiceInstanceOutputs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "outputs",
    })
end

--- Returns an item iterator for listServiceInstanceOutputs.
function M.items_list_service_instance_outputs(client, input)
    return paginator.items(client, "listServiceInstanceOutputs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "outputs",
    })
end

--- Returns a page iterator for listServiceInstanceProvisionedResources.
function M.pages_list_service_instance_provisioned_resources(client, input)
    return paginator.pages(client, "listServiceInstanceProvisionedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "provisionedResources",
    })
end

--- Returns an item iterator for listServiceInstanceProvisionedResources.
function M.items_list_service_instance_provisioned_resources(client, input)
    return paginator.items(client, "listServiceInstanceProvisionedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "provisionedResources",
    })
end

--- Returns a page iterator for listServiceInstances.
function M.pages_list_service_instances(client, input)
    return paginator.pages(client, "listServiceInstances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceInstances",
    })
end

--- Returns an item iterator for listServiceInstances.
function M.items_list_service_instances(client, input)
    return paginator.items(client, "listServiceInstances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceInstances",
    })
end

--- Returns a page iterator for listServicePipelineOutputs.
function M.pages_list_service_pipeline_outputs(client, input)
    return paginator.pages(client, "listServicePipelineOutputs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "outputs",
    })
end

--- Returns an item iterator for listServicePipelineOutputs.
function M.items_list_service_pipeline_outputs(client, input)
    return paginator.items(client, "listServicePipelineOutputs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "outputs",
    })
end

--- Returns a page iterator for listServicePipelineProvisionedResources.
function M.pages_list_service_pipeline_provisioned_resources(client, input)
    return paginator.pages(client, "listServicePipelineProvisionedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "provisionedResources",
    })
end

--- Returns an item iterator for listServicePipelineProvisionedResources.
function M.items_list_service_pipeline_provisioned_resources(client, input)
    return paginator.items(client, "listServicePipelineProvisionedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "provisionedResources",
    })
end

--- Returns a page iterator for listServiceTemplateVersions.
function M.pages_list_service_template_versions(client, input)
    return paginator.pages(client, "listServiceTemplateVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templateVersions",
    })
end

--- Returns an item iterator for listServiceTemplateVersions.
function M.items_list_service_template_versions(client, input)
    return paginator.items(client, "listServiceTemplateVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templateVersions",
    })
end

--- Returns a page iterator for listServiceTemplates.
function M.pages_list_service_templates(client, input)
    return paginator.pages(client, "listServiceTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templates",
    })
end

--- Returns an item iterator for listServiceTemplates.
function M.items_list_service_templates(client, input)
    return paginator.items(client, "listServiceTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templates",
    })
end

--- Returns a page iterator for listServices.
function M.pages_list_services(client, input)
    return paginator.pages(client, "listServices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "services",
    })
end

--- Returns an item iterator for listServices.
function M.items_list_services(client, input)
    return paginator.items(client, "listServices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "services",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tags",
    })
end

--- Returns an item iterator for listTagsForResource.
function M.items_list_tags_for_resource(client, input)
    return paginator.items(client, "listTagsForResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tags",
    })
end

return M
