local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listApplications.
function M.pages_list_applications(client, input)
    return paginator.pages(client, "listApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationSummaryList",
    })
end

--- Returns an item iterator for listApplications.
function M.items_list_applications(client, input)
    return paginator.items(client, "listApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationSummaryList",
    })
end

--- Returns a page iterator for listEnvironmentVpcs.
function M.pages_list_environment_vpcs(client, input)
    return paginator.pages(client, "listEnvironmentVpcs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EnvironmentVpcList",
    })
end

--- Returns an item iterator for listEnvironmentVpcs.
function M.items_list_environment_vpcs(client, input)
    return paginator.items(client, "listEnvironmentVpcs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EnvironmentVpcList",
    })
end

--- Returns a page iterator for listEnvironments.
function M.pages_list_environments(client, input)
    return paginator.pages(client, "listEnvironments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EnvironmentSummaryList",
    })
end

--- Returns an item iterator for listEnvironments.
function M.items_list_environments(client, input)
    return paginator.items(client, "listEnvironments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EnvironmentSummaryList",
    })
end

--- Returns a page iterator for listRoutes.
function M.pages_list_routes(client, input)
    return paginator.pages(client, "listRoutes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RouteSummaryList",
    })
end

--- Returns an item iterator for listRoutes.
function M.items_list_routes(client, input)
    return paginator.items(client, "listRoutes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RouteSummaryList",
    })
end

--- Returns a page iterator for listServices.
function M.pages_list_services(client, input)
    return paginator.pages(client, "listServices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceSummaryList",
    })
end

--- Returns an item iterator for listServices.
function M.items_list_services(client, input)
    return paginator.items(client, "listServices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceSummaryList",
    })
end

return M
