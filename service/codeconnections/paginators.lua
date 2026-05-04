local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listConnections.
function M.pages_list_connections(client, input)
    return paginator.pages(client, "listConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listHosts.
function M.pages_list_hosts(client, input)
    return paginator.pages(client, "listHosts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listRepositoryLinks.
function M.pages_list_repository_links(client, input)
    return paginator.pages(client, "listRepositoryLinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listSyncConfigurations.
function M.pages_list_sync_configurations(client, input)
    return paginator.pages(client, "listSyncConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
