local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listScheduleGroups.
function M.pages_list_schedule_groups(client, input)
    return paginator.pages(client, "listScheduleGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScheduleGroups",
    })
end

--- Returns an item iterator for listScheduleGroups.
function M.items_list_schedule_groups(client, input)
    return paginator.items(client, "listScheduleGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScheduleGroups",
    })
end

--- Returns a page iterator for listSchedules.
function M.pages_list_schedules(client, input)
    return paginator.pages(client, "listSchedules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Schedules",
    })
end

--- Returns an item iterator for listSchedules.
function M.items_list_schedules(client, input)
    return paginator.items(client, "listSchedules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Schedules",
    })
end

return M
