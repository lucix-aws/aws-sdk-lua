local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listChannelHandshakes.
function M.pages_list_channel_handshakes(client, input)
    return paginator.pages(client, "listChannelHandshakes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listChannelHandshakes.
function M.items_list_channel_handshakes(client, input)
    return paginator.items(client, "listChannelHandshakes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listProgramManagementAccounts.
function M.pages_list_program_management_accounts(client, input)
    return paginator.pages(client, "listProgramManagementAccounts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listProgramManagementAccounts.
function M.items_list_program_management_accounts(client, input)
    return paginator.items(client, "listProgramManagementAccounts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listRelationships.
function M.pages_list_relationships(client, input)
    return paginator.pages(client, "listRelationships", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listRelationships.
function M.items_list_relationships(client, input)
    return paginator.items(client, "listRelationships", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

return M
