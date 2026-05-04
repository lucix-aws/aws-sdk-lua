local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAppInstanceAdmins.
function M.pages_list_app_instance_admins(client, input)
    return paginator.pages(client, "listAppInstanceAdmins", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAppInstanceBots.
function M.pages_list_app_instance_bots(client, input)
    return paginator.pages(client, "listAppInstanceBots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAppInstanceUserEndpoints.
function M.pages_list_app_instance_user_endpoints(client, input)
    return paginator.pages(client, "listAppInstanceUserEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAppInstanceUsers.
function M.pages_list_app_instance_users(client, input)
    return paginator.pages(client, "listAppInstanceUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAppInstances.
function M.pages_list_app_instances(client, input)
    return paginator.pages(client, "listAppInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
