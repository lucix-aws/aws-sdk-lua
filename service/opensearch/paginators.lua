local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeDomainAutoTunes.
function M.pages_describe_domain_auto_tunes(client, input)
    return paginator.pages(client, "describeDomainAutoTunes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeInboundConnections.
function M.pages_describe_inbound_connections(client, input)
    return paginator.pages(client, "describeInboundConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeOutboundConnections.
function M.pages_describe_outbound_connections(client, input)
    return paginator.pages(client, "describeOutboundConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describePackages.
function M.pages_describe_packages(client, input)
    return paginator.pages(client, "describePackages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeReservedInstanceOfferings.
function M.pages_describe_reserved_instance_offerings(client, input)
    return paginator.pages(client, "describeReservedInstanceOfferings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeReservedInstances.
function M.pages_describe_reserved_instances(client, input)
    return paginator.pages(client, "describeReservedInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getPackageVersionHistory.
function M.pages_get_package_version_history(client, input)
    return paginator.pages(client, "getPackageVersionHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getUpgradeHistory.
function M.pages_get_upgrade_history(client, input)
    return paginator.pages(client, "getUpgradeHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listApplications.
function M.pages_list_applications(client, input)
    return paginator.pages(client, "listApplications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ApplicationSummaries",
    })
end

--- Returns an item iterator for listApplications.
function M.items_list_applications(client, input)
    return paginator.items(client, "listApplications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ApplicationSummaries",
    })
end

--- Returns a page iterator for listDomainMaintenances.
function M.pages_list_domain_maintenances(client, input)
    return paginator.pages(client, "listDomainMaintenances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDomainsForPackage.
function M.pages_list_domains_for_package(client, input)
    return paginator.pages(client, "listDomainsForPackage", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listInstanceTypeDetails.
function M.pages_list_instance_type_details(client, input)
    return paginator.pages(client, "listInstanceTypeDetails", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPackagesForDomain.
function M.pages_list_packages_for_domain(client, input)
    return paginator.pages(client, "listPackagesForDomain", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listScheduledActions.
function M.pages_list_scheduled_actions(client, input)
    return paginator.pages(client, "listScheduledActions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listVersions.
function M.pages_list_versions(client, input)
    return paginator.pages(client, "listVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
