local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listLoggingConfigurations.
function M.pages_list_logging_configurations(client, input)
    return paginator.pages(client, "listLoggingConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listRooms.
function M.pages_list_rooms(client, input)
    return paginator.pages(client, "listRooms", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
