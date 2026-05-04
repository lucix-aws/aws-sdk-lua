local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAttendees.
function M.pages_list_attendees(client, input)
    return paginator.pages(client, "listAttendees", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
