local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listIdentityProviders.
function M.pages_list_identity_providers(client, input)
    return paginator.pages(client, "listIdentityProviders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IdentityProviderSummaries",
    })
end

--- Returns an item iterator for listIdentityProviders.
function M.items_list_identity_providers(client, input)
    return paginator.items(client, "listIdentityProviders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IdentityProviderSummaries",
    })
end

--- Returns a page iterator for listInstances.
function M.pages_list_instances(client, input)
    return paginator.pages(client, "listInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InstanceSummaries",
    })
end

--- Returns an item iterator for listInstances.
function M.items_list_instances(client, input)
    return paginator.items(client, "listInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InstanceSummaries",
    })
end

--- Returns a page iterator for listLicenseServerEndpoints.
function M.pages_list_license_server_endpoints(client, input)
    return paginator.pages(client, "listLicenseServerEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LicenseServerEndpoints",
    })
end

--- Returns an item iterator for listLicenseServerEndpoints.
function M.items_list_license_server_endpoints(client, input)
    return paginator.items(client, "listLicenseServerEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LicenseServerEndpoints",
    })
end

--- Returns a page iterator for listProductSubscriptions.
function M.pages_list_product_subscriptions(client, input)
    return paginator.pages(client, "listProductSubscriptions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProductUserSummaries",
    })
end

--- Returns an item iterator for listProductSubscriptions.
function M.items_list_product_subscriptions(client, input)
    return paginator.items(client, "listProductSubscriptions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProductUserSummaries",
    })
end

--- Returns a page iterator for listUserAssociations.
function M.pages_list_user_associations(client, input)
    return paginator.pages(client, "listUserAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InstanceUserSummaries",
    })
end

--- Returns an item iterator for listUserAssociations.
function M.items_list_user_associations(client, input)
    return paginator.items(client, "listUserAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InstanceUserSummaries",
    })
end

return M
