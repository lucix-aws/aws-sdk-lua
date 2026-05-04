local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listIdentitySources.
function M.pages_list_identity_sources(client, input)
    return paginator.pages(client, "listIdentitySources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "identitySources",
    })
end

--- Returns an item iterator for listIdentitySources.
function M.items_list_identity_sources(client, input)
    return paginator.items(client, "listIdentitySources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "identitySources",
    })
end

--- Returns a page iterator for listPolicies.
function M.pages_list_policies(client, input)
    return paginator.pages(client, "listPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "policies",
    })
end

--- Returns an item iterator for listPolicies.
function M.items_list_policies(client, input)
    return paginator.items(client, "listPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "policies",
    })
end

--- Returns a page iterator for listPolicyStoreAliases.
function M.pages_list_policy_store_aliases(client, input)
    return paginator.pages(client, "listPolicyStoreAliases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "policyStoreAliases",
    })
end

--- Returns an item iterator for listPolicyStoreAliases.
function M.items_list_policy_store_aliases(client, input)
    return paginator.items(client, "listPolicyStoreAliases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "policyStoreAliases",
    })
end

--- Returns a page iterator for listPolicyStores.
function M.pages_list_policy_stores(client, input)
    return paginator.pages(client, "listPolicyStores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "policyStores",
    })
end

--- Returns an item iterator for listPolicyStores.
function M.items_list_policy_stores(client, input)
    return paginator.items(client, "listPolicyStores", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "policyStores",
    })
end

--- Returns a page iterator for listPolicyTemplates.
function M.pages_list_policy_templates(client, input)
    return paginator.pages(client, "listPolicyTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "policyTemplates",
    })
end

--- Returns an item iterator for listPolicyTemplates.
function M.items_list_policy_templates(client, input)
    return paginator.items(client, "listPolicyTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "policyTemplates",
    })
end

return M
