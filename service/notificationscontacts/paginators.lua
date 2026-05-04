local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listEmailContacts.
function M.pages_list_email_contacts(client, input)
    return paginator.pages(client, "listEmailContacts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "emailContacts",
    })
end

--- Returns an item iterator for listEmailContacts.
function M.items_list_email_contacts(client, input)
    return paginator.items(client, "listEmailContacts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "emailContacts",
    })
end

return M
