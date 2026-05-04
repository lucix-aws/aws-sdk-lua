local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listCrls.
function M.pages_list_crls(client, input)
    return paginator.pages(client, "listCrls", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "crls",
    })
end

--- Returns an item iterator for listCrls.
function M.items_list_crls(client, input)
    return paginator.items(client, "listCrls", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "crls",
    })
end

--- Returns a page iterator for listProfiles.
function M.pages_list_profiles(client, input)
    return paginator.pages(client, "listProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "profiles",
    })
end

--- Returns an item iterator for listProfiles.
function M.items_list_profiles(client, input)
    return paginator.items(client, "listProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "profiles",
    })
end

--- Returns a page iterator for listSubjects.
function M.pages_list_subjects(client, input)
    return paginator.pages(client, "listSubjects", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "subjects",
    })
end

--- Returns an item iterator for listSubjects.
function M.items_list_subjects(client, input)
    return paginator.items(client, "listSubjects", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "subjects",
    })
end

--- Returns a page iterator for listTrustAnchors.
function M.pages_list_trust_anchors(client, input)
    return paginator.pages(client, "listTrustAnchors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "trustAnchors",
    })
end

--- Returns an item iterator for listTrustAnchors.
function M.items_list_trust_anchors(client, input)
    return paginator.items(client, "listTrustAnchors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "trustAnchors",
    })
end

return M
