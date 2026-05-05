local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeDomainAutoTunes.
function M.pages_describe_domain_auto_tunes(client, input)
    return paginator.pages(client, "describeDomainAutoTunes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeInboundCrossClusterSearchConnections.
function M.pages_describe_inbound_cross_cluster_search_connections(client, input)
    return paginator.pages(client, "describeInboundCrossClusterSearchConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeOutboundCrossClusterSearchConnections.
function M.pages_describe_outbound_cross_cluster_search_connections(client, input)
    return paginator.pages(client, "describeOutboundCrossClusterSearchConnections", input, {
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

--- Returns a page iterator for describeReservedElasticsearchInstanceOfferings.
function M.pages_describe_reserved_elasticsearch_instance_offerings(client, input)
    return paginator.pages(client, "describeReservedElasticsearchInstanceOfferings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeReservedElasticsearchInstances.
function M.pages_describe_reserved_elasticsearch_instances(client, input)
    return paginator.pages(client, "describeReservedElasticsearchInstances", input, {
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

--- Returns a page iterator for listDomainsForPackage.
function M.pages_list_domains_for_package(client, input)
    return paginator.pages(client, "listDomainsForPackage", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listElasticsearchInstanceTypes.
function M.pages_list_elasticsearch_instance_types(client, input)
    return paginator.pages(client, "listElasticsearchInstanceTypes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listElasticsearchVersions.
function M.pages_list_elasticsearch_versions(client, input)
    return paginator.pages(client, "listElasticsearchVersions", input, {
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

return M
