local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listProfileAssociations.
function M.pages_list_profile_associations(client, input)
    return paginator.pages(client, "listProfileAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProfileAssociations",
    })
end

--- Returns an item iterator for listProfileAssociations.
function M.items_list_profile_associations(client, input)
    return paginator.items(client, "listProfileAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProfileAssociations",
    })
end

--- Returns a page iterator for listProfileResourceAssociations.
function M.pages_list_profile_resource_associations(client, input)
    return paginator.pages(client, "listProfileResourceAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProfileResourceAssociations",
    })
end

--- Returns an item iterator for listProfileResourceAssociations.
function M.items_list_profile_resource_associations(client, input)
    return paginator.items(client, "listProfileResourceAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProfileResourceAssociations",
    })
end

--- Returns a page iterator for listProfiles.
function M.pages_list_profiles(client, input)
    return paginator.pages(client, "listProfiles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProfileSummaries",
    })
end

--- Returns an item iterator for listProfiles.
function M.items_list_profiles(client, input)
    return paginator.items(client, "listProfiles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProfileSummaries",
    })
end

return M
