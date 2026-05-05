local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeAccountLimits.
function M.pages_describe_account_limits(client, input)
    return paginator.pages(client, "describeAccountLimits", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Limits",
    })
end

--- Returns an item iterator for describeAccountLimits.
function M.items_describe_account_limits(client, input)
    return paginator.items(client, "describeAccountLimits", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Limits",
    })
end

--- Returns a page iterator for describeListenerCertificates.
function M.pages_describe_listener_certificates(client, input)
    return paginator.pages(client, "describeListenerCertificates", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Certificates",
    })
end

--- Returns an item iterator for describeListenerCertificates.
function M.items_describe_listener_certificates(client, input)
    return paginator.items(client, "describeListenerCertificates", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Certificates",
    })
end

--- Returns a page iterator for describeListeners.
function M.pages_describe_listeners(client, input)
    return paginator.pages(client, "describeListeners", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Listeners",
    })
end

--- Returns an item iterator for describeListeners.
function M.items_describe_listeners(client, input)
    return paginator.items(client, "describeListeners", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Listeners",
    })
end

--- Returns a page iterator for describeLoadBalancers.
function M.pages_describe_load_balancers(client, input)
    return paginator.pages(client, "describeLoadBalancers", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "LoadBalancers",
    })
end

--- Returns an item iterator for describeLoadBalancers.
function M.items_describe_load_balancers(client, input)
    return paginator.items(client, "describeLoadBalancers", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "LoadBalancers",
    })
end

--- Returns a page iterator for describeRules.
function M.pages_describe_rules(client, input)
    return paginator.pages(client, "describeRules", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Rules",
    })
end

--- Returns an item iterator for describeRules.
function M.items_describe_rules(client, input)
    return paginator.items(client, "describeRules", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Rules",
    })
end

--- Returns a page iterator for describeTargetGroups.
function M.pages_describe_target_groups(client, input)
    return paginator.pages(client, "describeTargetGroups", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "TargetGroups",
    })
end

--- Returns an item iterator for describeTargetGroups.
function M.items_describe_target_groups(client, input)
    return paginator.items(client, "describeTargetGroups", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "TargetGroups",
    })
end

--- Returns a page iterator for describeTrustStoreAssociations.
function M.pages_describe_trust_store_associations(client, input)
    return paginator.pages(client, "describeTrustStoreAssociations", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "TrustStoreAssociations",
    })
end

--- Returns an item iterator for describeTrustStoreAssociations.
function M.items_describe_trust_store_associations(client, input)
    return paginator.items(client, "describeTrustStoreAssociations", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "TrustStoreAssociations",
    })
end

--- Returns a page iterator for describeTrustStoreRevocations.
function M.pages_describe_trust_store_revocations(client, input)
    return paginator.pages(client, "describeTrustStoreRevocations", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "TrustStoreRevocations",
    })
end

--- Returns an item iterator for describeTrustStoreRevocations.
function M.items_describe_trust_store_revocations(client, input)
    return paginator.items(client, "describeTrustStoreRevocations", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "TrustStoreRevocations",
    })
end

--- Returns a page iterator for describeTrustStores.
function M.pages_describe_trust_stores(client, input)
    return paginator.pages(client, "describeTrustStores", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "TrustStores",
    })
end

--- Returns an item iterator for describeTrustStores.
function M.items_describe_trust_stores(client, input)
    return paginator.items(client, "describeTrustStores", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "TrustStores",
    })
end

return M
