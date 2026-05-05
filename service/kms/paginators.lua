local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeCustomKeyStores.
function M.pages_describe_custom_key_stores(client, input)
    return paginator.pages(client, "describeCustomKeyStores", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "CustomKeyStores",
    })
end

--- Returns an item iterator for describeCustomKeyStores.
function M.items_describe_custom_key_stores(client, input)
    return paginator.items(client, "describeCustomKeyStores", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "CustomKeyStores",
    })
end

--- Returns a page iterator for listAliases.
function M.pages_list_aliases(client, input)
    return paginator.pages(client, "listAliases", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Aliases",
    })
end

--- Returns an item iterator for listAliases.
function M.items_list_aliases(client, input)
    return paginator.items(client, "listAliases", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Aliases",
    })
end

--- Returns a page iterator for listGrants.
function M.pages_list_grants(client, input)
    return paginator.pages(client, "listGrants", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Grants",
    })
end

--- Returns an item iterator for listGrants.
function M.items_list_grants(client, input)
    return paginator.items(client, "listGrants", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Grants",
    })
end

--- Returns a page iterator for listKeyPolicies.
function M.pages_list_key_policies(client, input)
    return paginator.pages(client, "listKeyPolicies", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "PolicyNames",
    })
end

--- Returns an item iterator for listKeyPolicies.
function M.items_list_key_policies(client, input)
    return paginator.items(client, "listKeyPolicies", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "PolicyNames",
    })
end

--- Returns a page iterator for listKeyRotations.
function M.pages_list_key_rotations(client, input)
    return paginator.pages(client, "listKeyRotations", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Rotations",
    })
end

--- Returns an item iterator for listKeyRotations.
function M.items_list_key_rotations(client, input)
    return paginator.items(client, "listKeyRotations", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Rotations",
    })
end

--- Returns a page iterator for listKeys.
function M.pages_list_keys(client, input)
    return paginator.pages(client, "listKeys", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Keys",
    })
end

--- Returns an item iterator for listKeys.
function M.items_list_keys(client, input)
    return paginator.items(client, "listKeys", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Keys",
    })
end

--- Returns a page iterator for listResourceTags.
function M.pages_list_resource_tags(client, input)
    return paginator.pages(client, "listResourceTags", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Tags",
    })
end

--- Returns an item iterator for listResourceTags.
function M.items_list_resource_tags(client, input)
    return paginator.items(client, "listResourceTags", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Tags",
    })
end

--- Returns a page iterator for listRetirableGrants.
function M.pages_list_retirable_grants(client, input)
    return paginator.pages(client, "listRetirableGrants", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Grants",
    })
end

--- Returns an item iterator for listRetirableGrants.
function M.items_list_retirable_grants(client, input)
    return paginator.items(client, "listRetirableGrants", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Grants",
    })
end

return M
