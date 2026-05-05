local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeAddonVersions.
function M.pages_describe_addon_versions(client, input)
    return paginator.pages(client, "describeAddonVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "addons",
    })
end

--- Returns an item iterator for describeAddonVersions.
function M.items_describe_addon_versions(client, input)
    return paginator.items(client, "describeAddonVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "addons",
    })
end

--- Returns a page iterator for describeClusterVersions.
function M.pages_describe_cluster_versions(client, input)
    return paginator.pages(client, "describeClusterVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "clusterVersions",
    })
end

--- Returns an item iterator for describeClusterVersions.
function M.items_describe_cluster_versions(client, input)
    return paginator.items(client, "describeClusterVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "clusterVersions",
    })
end

--- Returns a page iterator for listAccessEntries.
function M.pages_list_access_entries(client, input)
    return paginator.pages(client, "listAccessEntries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "accessEntries",
    })
end

--- Returns an item iterator for listAccessEntries.
function M.items_list_access_entries(client, input)
    return paginator.items(client, "listAccessEntries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "accessEntries",
    })
end

--- Returns a page iterator for listAccessPolicies.
function M.pages_list_access_policies(client, input)
    return paginator.pages(client, "listAccessPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "accessPolicies",
    })
end

--- Returns an item iterator for listAccessPolicies.
function M.items_list_access_policies(client, input)
    return paginator.items(client, "listAccessPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "accessPolicies",
    })
end

--- Returns a page iterator for listAddons.
function M.pages_list_addons(client, input)
    return paginator.pages(client, "listAddons", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "addons",
    })
end

--- Returns an item iterator for listAddons.
function M.items_list_addons(client, input)
    return paginator.items(client, "listAddons", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "addons",
    })
end

--- Returns a page iterator for listAssociatedAccessPolicies.
function M.pages_list_associated_access_policies(client, input)
    return paginator.pages(client, "listAssociatedAccessPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "associatedAccessPolicies",
    })
end

--- Returns an item iterator for listAssociatedAccessPolicies.
function M.items_list_associated_access_policies(client, input)
    return paginator.items(client, "listAssociatedAccessPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "associatedAccessPolicies",
    })
end

--- Returns a page iterator for listCapabilities.
function M.pages_list_capabilities(client, input)
    return paginator.pages(client, "listCapabilities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "capabilities",
    })
end

--- Returns an item iterator for listCapabilities.
function M.items_list_capabilities(client, input)
    return paginator.items(client, "listCapabilities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "capabilities",
    })
end

--- Returns a page iterator for listClusters.
function M.pages_list_clusters(client, input)
    return paginator.pages(client, "listClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "clusters",
    })
end

--- Returns an item iterator for listClusters.
function M.items_list_clusters(client, input)
    return paginator.items(client, "listClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "clusters",
    })
end

--- Returns a page iterator for listEksAnywhereSubscriptions.
function M.pages_list_eks_anywhere_subscriptions(client, input)
    return paginator.pages(client, "listEksAnywhereSubscriptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "subscriptions",
    })
end

--- Returns an item iterator for listEksAnywhereSubscriptions.
function M.items_list_eks_anywhere_subscriptions(client, input)
    return paginator.items(client, "listEksAnywhereSubscriptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "subscriptions",
    })
end

--- Returns a page iterator for listFargateProfiles.
function M.pages_list_fargate_profiles(client, input)
    return paginator.pages(client, "listFargateProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "fargateProfileNames",
    })
end

--- Returns an item iterator for listFargateProfiles.
function M.items_list_fargate_profiles(client, input)
    return paginator.items(client, "listFargateProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "fargateProfileNames",
    })
end

--- Returns a page iterator for listIdentityProviderConfigs.
function M.pages_list_identity_provider_configs(client, input)
    return paginator.pages(client, "listIdentityProviderConfigs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "identityProviderConfigs",
    })
end

--- Returns an item iterator for listIdentityProviderConfigs.
function M.items_list_identity_provider_configs(client, input)
    return paginator.items(client, "listIdentityProviderConfigs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "identityProviderConfigs",
    })
end

--- Returns a page iterator for listInsights.
function M.pages_list_insights(client, input)
    return paginator.pages(client, "listInsights", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "insights",
    })
end

--- Returns an item iterator for listInsights.
function M.items_list_insights(client, input)
    return paginator.items(client, "listInsights", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "insights",
    })
end

--- Returns a page iterator for listNodegroups.
function M.pages_list_nodegroups(client, input)
    return paginator.pages(client, "listNodegroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "nodegroups",
    })
end

--- Returns an item iterator for listNodegroups.
function M.items_list_nodegroups(client, input)
    return paginator.items(client, "listNodegroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "nodegroups",
    })
end

--- Returns a page iterator for listPodIdentityAssociations.
function M.pages_list_pod_identity_associations(client, input)
    return paginator.pages(client, "listPodIdentityAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "associations",
    })
end

--- Returns an item iterator for listPodIdentityAssociations.
function M.items_list_pod_identity_associations(client, input)
    return paginator.items(client, "listPodIdentityAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "associations",
    })
end

--- Returns a page iterator for listUpdates.
function M.pages_list_updates(client, input)
    return paginator.pages(client, "listUpdates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "updateIds",
    })
end

--- Returns an item iterator for listUpdates.
function M.items_list_updates(client, input)
    return paginator.items(client, "listUpdates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "updateIds",
    })
end

return M
