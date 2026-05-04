local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeClientAuthenticationSettings.
function M.pages_describe_client_authentication_settings(client, input)
    return paginator.pages(client, "describeClientAuthenticationSettings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ClientAuthenticationSettingsInfo",
    })
end

--- Returns an item iterator for describeClientAuthenticationSettings.
function M.items_describe_client_authentication_settings(client, input)
    return paginator.items(client, "describeClientAuthenticationSettings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ClientAuthenticationSettingsInfo",
    })
end

--- Returns a page iterator for describeDirectories.
function M.pages_describe_directories(client, input)
    return paginator.pages(client, "describeDirectories", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DirectoryDescriptions",
    })
end

--- Returns an item iterator for describeDirectories.
function M.items_describe_directories(client, input)
    return paginator.items(client, "describeDirectories", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DirectoryDescriptions",
    })
end

--- Returns a page iterator for describeDomainControllers.
function M.pages_describe_domain_controllers(client, input)
    return paginator.pages(client, "describeDomainControllers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeLDAPSSettings.
function M.pages_describe_l_d_a_p_s_settings(client, input)
    return paginator.pages(client, "describeLDAPSSettings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LDAPSSettingsInfo",
    })
end

--- Returns an item iterator for describeLDAPSSettings.
function M.items_describe_l_d_a_p_s_settings(client, input)
    return paginator.items(client, "describeLDAPSSettings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LDAPSSettingsInfo",
    })
end

--- Returns a page iterator for describeRegions.
function M.pages_describe_regions(client, input)
    return paginator.pages(client, "describeRegions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegionsDescription",
    })
end

--- Returns an item iterator for describeRegions.
function M.items_describe_regions(client, input)
    return paginator.items(client, "describeRegions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegionsDescription",
    })
end

--- Returns a page iterator for describeSharedDirectories.
function M.pages_describe_shared_directories(client, input)
    return paginator.pages(client, "describeSharedDirectories", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SharedDirectories",
    })
end

--- Returns an item iterator for describeSharedDirectories.
function M.items_describe_shared_directories(client, input)
    return paginator.items(client, "describeSharedDirectories", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SharedDirectories",
    })
end

--- Returns a page iterator for describeSnapshots.
function M.pages_describe_snapshots(client, input)
    return paginator.pages(client, "describeSnapshots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Snapshots",
    })
end

--- Returns an item iterator for describeSnapshots.
function M.items_describe_snapshots(client, input)
    return paginator.items(client, "describeSnapshots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Snapshots",
    })
end

--- Returns a page iterator for describeTrusts.
function M.pages_describe_trusts(client, input)
    return paginator.pages(client, "describeTrusts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Trusts",
    })
end

--- Returns an item iterator for describeTrusts.
function M.items_describe_trusts(client, input)
    return paginator.items(client, "describeTrusts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Trusts",
    })
end

--- Returns a page iterator for describeUpdateDirectory.
function M.pages_describe_update_directory(client, input)
    return paginator.pages(client, "describeUpdateDirectory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UpdateActivities",
    })
end

--- Returns an item iterator for describeUpdateDirectory.
function M.items_describe_update_directory(client, input)
    return paginator.items(client, "describeUpdateDirectory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UpdateActivities",
    })
end

--- Returns a page iterator for listADAssessments.
function M.pages_list_a_d_assessments(client, input)
    return paginator.pages(client, "listADAssessments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Assessments",
    })
end

--- Returns an item iterator for listADAssessments.
function M.items_list_a_d_assessments(client, input)
    return paginator.items(client, "listADAssessments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Assessments",
    })
end

--- Returns a page iterator for listCertificates.
function M.pages_list_certificates(client, input)
    return paginator.pages(client, "listCertificates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CertificatesInfo",
    })
end

--- Returns an item iterator for listCertificates.
function M.items_list_certificates(client, input)
    return paginator.items(client, "listCertificates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CertificatesInfo",
    })
end

--- Returns a page iterator for listIpRoutes.
function M.pages_list_ip_routes(client, input)
    return paginator.pages(client, "listIpRoutes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IpRoutesInfo",
    })
end

--- Returns an item iterator for listIpRoutes.
function M.items_list_ip_routes(client, input)
    return paginator.items(client, "listIpRoutes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IpRoutesInfo",
    })
end

--- Returns a page iterator for listLogSubscriptions.
function M.pages_list_log_subscriptions(client, input)
    return paginator.pages(client, "listLogSubscriptions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LogSubscriptions",
    })
end

--- Returns an item iterator for listLogSubscriptions.
function M.items_list_log_subscriptions(client, input)
    return paginator.items(client, "listLogSubscriptions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LogSubscriptions",
    })
end

--- Returns a page iterator for listSchemaExtensions.
function M.pages_list_schema_extensions(client, input)
    return paginator.pages(client, "listSchemaExtensions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SchemaExtensionsInfo",
    })
end

--- Returns an item iterator for listSchemaExtensions.
function M.items_list_schema_extensions(client, input)
    return paginator.items(client, "listSchemaExtensions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SchemaExtensionsInfo",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns an item iterator for listTagsForResource.
function M.items_list_tags_for_resource(client, input)
    return paginator.items(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

return M
