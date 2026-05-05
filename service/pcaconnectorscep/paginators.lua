local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listChallengeMetadata.
function M.pages_list_challenge_metadata(client, input)
    return paginator.pages(client, "listChallengeMetadata", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Challenges",
    })
end

--- Returns an item iterator for listChallengeMetadata.
function M.items_list_challenge_metadata(client, input)
    return paginator.items(client, "listChallengeMetadata", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Challenges",
    })
end

--- Returns a page iterator for listConnectors.
function M.pages_list_connectors(client, input)
    return paginator.pages(client, "listConnectors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Connectors",
    })
end

--- Returns an item iterator for listConnectors.
function M.items_list_connectors(client, input)
    return paginator.items(client, "listConnectors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Connectors",
    })
end

return M
