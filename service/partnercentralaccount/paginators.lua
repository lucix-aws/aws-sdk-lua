local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listConnectionInvitations.
function M.pages_list_connection_invitations(client, input)
    return paginator.pages(client, "listConnectionInvitations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConnectionInvitationSummaries",
    })
end

--- Returns an item iterator for listConnectionInvitations.
function M.items_list_connection_invitations(client, input)
    return paginator.items(client, "listConnectionInvitations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConnectionInvitationSummaries",
    })
end

--- Returns a page iterator for listConnections.
function M.pages_list_connections(client, input)
    return paginator.pages(client, "listConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConnectionSummaries",
    })
end

--- Returns an item iterator for listConnections.
function M.items_list_connections(client, input)
    return paginator.items(client, "listConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConnectionSummaries",
    })
end

--- Returns a page iterator for listPartners.
function M.pages_list_partners(client, input)
    return paginator.pages(client, "listPartners", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PartnerSummaryList",
    })
end

--- Returns an item iterator for listPartners.
function M.items_list_partners(client, input)
    return paginator.items(client, "listPartners", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PartnerSummaryList",
    })
end

return M
