local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listIdMappingJobs.
function M.pages_list_id_mapping_jobs(client, input)
    return paginator.pages(client, "listIdMappingJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns an item iterator for listIdMappingJobs.
function M.items_list_id_mapping_jobs(client, input)
    return paginator.items(client, "listIdMappingJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns a page iterator for listIdMappingWorkflows.
function M.pages_list_id_mapping_workflows(client, input)
    return paginator.pages(client, "listIdMappingWorkflows", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowSummaries",
    })
end

--- Returns an item iterator for listIdMappingWorkflows.
function M.items_list_id_mapping_workflows(client, input)
    return paginator.items(client, "listIdMappingWorkflows", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowSummaries",
    })
end

--- Returns a page iterator for listIdNamespaces.
function M.pages_list_id_namespaces(client, input)
    return paginator.pages(client, "listIdNamespaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "idNamespaceSummaries",
    })
end

--- Returns an item iterator for listIdNamespaces.
function M.items_list_id_namespaces(client, input)
    return paginator.items(client, "listIdNamespaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "idNamespaceSummaries",
    })
end

--- Returns a page iterator for listMatchingJobs.
function M.pages_list_matching_jobs(client, input)
    return paginator.pages(client, "listMatchingJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns an item iterator for listMatchingJobs.
function M.items_list_matching_jobs(client, input)
    return paginator.items(client, "listMatchingJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns a page iterator for listMatchingWorkflows.
function M.pages_list_matching_workflows(client, input)
    return paginator.pages(client, "listMatchingWorkflows", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowSummaries",
    })
end

--- Returns an item iterator for listMatchingWorkflows.
function M.items_list_matching_workflows(client, input)
    return paginator.items(client, "listMatchingWorkflows", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowSummaries",
    })
end

--- Returns a page iterator for listProviderServices.
function M.pages_list_provider_services(client, input)
    return paginator.pages(client, "listProviderServices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "providerServiceSummaries",
    })
end

--- Returns an item iterator for listProviderServices.
function M.items_list_provider_services(client, input)
    return paginator.items(client, "listProviderServices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "providerServiceSummaries",
    })
end

--- Returns a page iterator for listSchemaMappings.
function M.pages_list_schema_mappings(client, input)
    return paginator.pages(client, "listSchemaMappings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "schemaList",
    })
end

--- Returns an item iterator for listSchemaMappings.
function M.items_list_schema_mappings(client, input)
    return paginator.items(client, "listSchemaMappings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "schemaList",
    })
end

return M
