local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAccesses.
function M.pages_list_accesses(client, input)
    return paginator.pages(client, "listAccesses", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Accesses",
    })
end

--- Returns an item iterator for listAccesses.
function M.items_list_accesses(client, input)
    return paginator.items(client, "listAccesses", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Accesses",
    })
end

--- Returns a page iterator for listAgreements.
function M.pages_list_agreements(client, input)
    return paginator.pages(client, "listAgreements", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Agreements",
    })
end

--- Returns an item iterator for listAgreements.
function M.items_list_agreements(client, input)
    return paginator.items(client, "listAgreements", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Agreements",
    })
end

--- Returns a page iterator for listCertificates.
function M.pages_list_certificates(client, input)
    return paginator.pages(client, "listCertificates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Certificates",
    })
end

--- Returns an item iterator for listCertificates.
function M.items_list_certificates(client, input)
    return paginator.items(client, "listCertificates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Certificates",
    })
end

--- Returns a page iterator for listConnectors.
function M.pages_list_connectors(client, input)
    return paginator.pages(client, "listConnectors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Connectors",
    })
end

--- Returns an item iterator for listConnectors.
function M.items_list_connectors(client, input)
    return paginator.items(client, "listConnectors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Connectors",
    })
end

--- Returns a page iterator for listExecutions.
function M.pages_list_executions(client, input)
    return paginator.pages(client, "listExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Executions",
    })
end

--- Returns an item iterator for listExecutions.
function M.items_list_executions(client, input)
    return paginator.items(client, "listExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Executions",
    })
end

--- Returns a page iterator for listFileTransferResults.
function M.pages_list_file_transfer_results(client, input)
    return paginator.pages(client, "listFileTransferResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FileTransferResults",
    })
end

--- Returns an item iterator for listFileTransferResults.
function M.items_list_file_transfer_results(client, input)
    return paginator.items(client, "listFileTransferResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FileTransferResults",
    })
end

--- Returns a page iterator for listProfiles.
function M.pages_list_profiles(client, input)
    return paginator.pages(client, "listProfiles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Profiles",
    })
end

--- Returns an item iterator for listProfiles.
function M.items_list_profiles(client, input)
    return paginator.items(client, "listProfiles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Profiles",
    })
end

--- Returns a page iterator for listSecurityPolicies.
function M.pages_list_security_policies(client, input)
    return paginator.pages(client, "listSecurityPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SecurityPolicyNames",
    })
end

--- Returns an item iterator for listSecurityPolicies.
function M.items_list_security_policies(client, input)
    return paginator.items(client, "listSecurityPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SecurityPolicyNames",
    })
end

--- Returns a page iterator for listServers.
function M.pages_list_servers(client, input)
    return paginator.pages(client, "listServers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Servers",
    })
end

--- Returns an item iterator for listServers.
function M.items_list_servers(client, input)
    return paginator.items(client, "listServers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Servers",
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

--- Returns a page iterator for listUsers.
function M.pages_list_users(client, input)
    return paginator.pages(client, "listUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Users",
    })
end

--- Returns an item iterator for listUsers.
function M.items_list_users(client, input)
    return paginator.items(client, "listUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Users",
    })
end

--- Returns a page iterator for listWebApps.
function M.pages_list_web_apps(client, input)
    return paginator.pages(client, "listWebApps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WebApps",
    })
end

--- Returns an item iterator for listWebApps.
function M.items_list_web_apps(client, input)
    return paginator.items(client, "listWebApps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WebApps",
    })
end

--- Returns a page iterator for listWorkflows.
function M.pages_list_workflows(client, input)
    return paginator.pages(client, "listWorkflows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Workflows",
    })
end

--- Returns an item iterator for listWorkflows.
function M.items_list_workflows(client, input)
    return paginator.items(client, "listWorkflows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Workflows",
    })
end

return M
