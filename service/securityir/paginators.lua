local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listCaseEdits.
function M.pages_list_case_edits(client, input)
    return paginator.pages(client, "listCaseEdits", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listCaseEdits.
function M.items_list_case_edits(client, input)
    return paginator.items(client, "listCaseEdits", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listCases.
function M.pages_list_cases(client, input)
    return paginator.pages(client, "listCases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listCases.
function M.items_list_cases(client, input)
    return paginator.items(client, "listCases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listComments.
function M.pages_list_comments(client, input)
    return paginator.pages(client, "listComments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listComments.
function M.items_list_comments(client, input)
    return paginator.items(client, "listComments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listInvestigations.
function M.pages_list_investigations(client, input)
    return paginator.pages(client, "listInvestigations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "investigationActions",
    })
end

--- Returns an item iterator for listInvestigations.
function M.items_list_investigations(client, input)
    return paginator.items(client, "listInvestigations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "investigationActions",
    })
end

--- Returns a page iterator for listMemberships.
function M.pages_list_memberships(client, input)
    return paginator.pages(client, "listMemberships", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listMemberships.
function M.items_list_memberships(client, input)
    return paginator.items(client, "listMemberships", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

return M
