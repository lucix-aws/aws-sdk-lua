local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAddonInstances.
function M.pages_list_addon_instances(client, input)
    return paginator.pages(client, "listAddonInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AddonInstances",
    })
end

--- Returns an item iterator for listAddonInstances.
function M.items_list_addon_instances(client, input)
    return paginator.items(client, "listAddonInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AddonInstances",
    })
end

--- Returns a page iterator for listAddonSubscriptions.
function M.pages_list_addon_subscriptions(client, input)
    return paginator.pages(client, "listAddonSubscriptions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AddonSubscriptions",
    })
end

--- Returns an item iterator for listAddonSubscriptions.
function M.items_list_addon_subscriptions(client, input)
    return paginator.items(client, "listAddonSubscriptions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AddonSubscriptions",
    })
end

--- Returns a page iterator for listAddressListImportJobs.
function M.pages_list_address_list_import_jobs(client, input)
    return paginator.pages(client, "listAddressListImportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ImportJobs",
    })
end

--- Returns an item iterator for listAddressListImportJobs.
function M.items_list_address_list_import_jobs(client, input)
    return paginator.items(client, "listAddressListImportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ImportJobs",
    })
end

--- Returns a page iterator for listAddressLists.
function M.pages_list_address_lists(client, input)
    return paginator.pages(client, "listAddressLists", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AddressLists",
    })
end

--- Returns an item iterator for listAddressLists.
function M.items_list_address_lists(client, input)
    return paginator.items(client, "listAddressLists", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AddressLists",
    })
end

--- Returns a page iterator for listArchiveExports.
function M.pages_list_archive_exports(client, input)
    return paginator.pages(client, "listArchiveExports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Exports",
    })
end

--- Returns an item iterator for listArchiveExports.
function M.items_list_archive_exports(client, input)
    return paginator.items(client, "listArchiveExports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Exports",
    })
end

--- Returns a page iterator for listArchiveSearches.
function M.pages_list_archive_searches(client, input)
    return paginator.pages(client, "listArchiveSearches", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Searches",
    })
end

--- Returns an item iterator for listArchiveSearches.
function M.items_list_archive_searches(client, input)
    return paginator.items(client, "listArchiveSearches", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Searches",
    })
end

--- Returns a page iterator for listArchives.
function M.pages_list_archives(client, input)
    return paginator.pages(client, "listArchives", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Archives",
    })
end

--- Returns an item iterator for listArchives.
function M.items_list_archives(client, input)
    return paginator.items(client, "listArchives", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Archives",
    })
end

--- Returns a page iterator for listIngressPoints.
function M.pages_list_ingress_points(client, input)
    return paginator.pages(client, "listIngressPoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IngressPoints",
    })
end

--- Returns an item iterator for listIngressPoints.
function M.items_list_ingress_points(client, input)
    return paginator.items(client, "listIngressPoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IngressPoints",
    })
end

--- Returns a page iterator for listMembersOfAddressList.
function M.pages_list_members_of_address_list(client, input)
    return paginator.pages(client, "listMembersOfAddressList", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Addresses",
    })
end

--- Returns an item iterator for listMembersOfAddressList.
function M.items_list_members_of_address_list(client, input)
    return paginator.items(client, "listMembersOfAddressList", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Addresses",
    })
end

--- Returns a page iterator for listRelays.
function M.pages_list_relays(client, input)
    return paginator.pages(client, "listRelays", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Relays",
    })
end

--- Returns an item iterator for listRelays.
function M.items_list_relays(client, input)
    return paginator.items(client, "listRelays", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Relays",
    })
end

--- Returns a page iterator for listRuleSets.
function M.pages_list_rule_sets(client, input)
    return paginator.pages(client, "listRuleSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RuleSets",
    })
end

--- Returns an item iterator for listRuleSets.
function M.items_list_rule_sets(client, input)
    return paginator.items(client, "listRuleSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RuleSets",
    })
end

--- Returns a page iterator for listTrafficPolicies.
function M.pages_list_traffic_policies(client, input)
    return paginator.pages(client, "listTrafficPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrafficPolicies",
    })
end

--- Returns an item iterator for listTrafficPolicies.
function M.items_list_traffic_policies(client, input)
    return paginator.items(client, "listTrafficPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrafficPolicies",
    })
end

return M
