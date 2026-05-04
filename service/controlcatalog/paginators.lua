local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listCommonControls.
function M.pages_list_common_controls(client, input)
    return paginator.pages(client, "listCommonControls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CommonControls",
    })
end

--- Returns an item iterator for listCommonControls.
function M.items_list_common_controls(client, input)
    return paginator.items(client, "listCommonControls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CommonControls",
    })
end

--- Returns a page iterator for listControlMappings.
function M.pages_list_control_mappings(client, input)
    return paginator.pages(client, "listControlMappings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ControlMappings",
    })
end

--- Returns an item iterator for listControlMappings.
function M.items_list_control_mappings(client, input)
    return paginator.items(client, "listControlMappings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ControlMappings",
    })
end

--- Returns a page iterator for listControls.
function M.pages_list_controls(client, input)
    return paginator.pages(client, "listControls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Controls",
    })
end

--- Returns an item iterator for listControls.
function M.items_list_controls(client, input)
    return paginator.items(client, "listControls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Controls",
    })
end

--- Returns a page iterator for listDomains.
function M.pages_list_domains(client, input)
    return paginator.pages(client, "listDomains", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Domains",
    })
end

--- Returns an item iterator for listDomains.
function M.items_list_domains(client, input)
    return paginator.items(client, "listDomains", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Domains",
    })
end

--- Returns a page iterator for listObjectives.
function M.pages_list_objectives(client, input)
    return paginator.pages(client, "listObjectives", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Objectives",
    })
end

--- Returns an item iterator for listObjectives.
function M.items_list_objectives(client, input)
    return paginator.items(client, "listObjectives", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Objectives",
    })
end

return M
