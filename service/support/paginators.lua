local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeCases.
function M.pages_describe_cases(client, input)
    return paginator.pages(client, "describeCases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cases",
    })
end

--- Returns an item iterator for describeCases.
function M.items_describe_cases(client, input)
    return paginator.items(client, "describeCases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cases",
    })
end

--- Returns a page iterator for describeCommunications.
function M.pages_describe_communications(client, input)
    return paginator.pages(client, "describeCommunications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "communications",
    })
end

--- Returns an item iterator for describeCommunications.
function M.items_describe_communications(client, input)
    return paginator.items(client, "describeCommunications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "communications",
    })
end

return M
