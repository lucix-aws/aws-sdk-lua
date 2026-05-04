local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listApplicationInstanceDependencies.
function M.pages_list_application_instance_dependencies(client, input)
    return paginator.pages(client, "listApplicationInstanceDependencies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listApplicationInstanceNodeInstances.
function M.pages_list_application_instance_node_instances(client, input)
    return paginator.pages(client, "listApplicationInstanceNodeInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listApplicationInstances.
function M.pages_list_application_instances(client, input)
    return paginator.pages(client, "listApplicationInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDevices.
function M.pages_list_devices(client, input)
    return paginator.pages(client, "listDevices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDevicesJobs.
function M.pages_list_devices_jobs(client, input)
    return paginator.pages(client, "listDevicesJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listNodeFromTemplateJobs.
function M.pages_list_node_from_template_jobs(client, input)
    return paginator.pages(client, "listNodeFromTemplateJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listNodes.
function M.pages_list_nodes(client, input)
    return paginator.pages(client, "listNodes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPackageImportJobs.
function M.pages_list_package_import_jobs(client, input)
    return paginator.pages(client, "listPackageImportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPackages.
function M.pages_list_packages(client, input)
    return paginator.pages(client, "listPackages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
