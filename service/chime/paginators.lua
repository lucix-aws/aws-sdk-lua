local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAccounts.
function M.pages_list_accounts(client, input)
    return paginator.pages(client, "listAccounts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listBots.
function M.pages_list_bots(client, input)
    return paginator.pages(client, "listBots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPhoneNumberOrders.
function M.pages_list_phone_number_orders(client, input)
    return paginator.pages(client, "listPhoneNumberOrders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPhoneNumbers.
function M.pages_list_phone_numbers(client, input)
    return paginator.pages(client, "listPhoneNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listRoomMemberships.
function M.pages_list_room_memberships(client, input)
    return paginator.pages(client, "listRoomMemberships", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listRooms.
function M.pages_list_rooms(client, input)
    return paginator.pages(client, "listRooms", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listUsers.
function M.pages_list_users(client, input)
    return paginator.pages(client, "listUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for searchAvailablePhoneNumbers.
function M.pages_search_available_phone_numbers(client, input)
    return paginator.pages(client, "searchAvailablePhoneNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
