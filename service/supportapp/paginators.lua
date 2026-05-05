local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listSlackChannelConfigurations.
function M.pages_list_slack_channel_configurations(client, input)
    return paginator.pages(client, "listSlackChannelConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSlackWorkspaceConfigurations.
function M.pages_list_slack_workspace_configurations(client, input)
    return paginator.pages(client, "listSlackWorkspaceConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
