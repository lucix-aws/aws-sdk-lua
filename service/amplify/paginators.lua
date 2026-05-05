local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listApps.
function M.pages_list_apps(client, input)
    return paginator.pages(client, "listApps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "apps",
    })
end

--- Returns an item iterator for listApps.
function M.items_list_apps(client, input)
    return paginator.items(client, "listApps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "apps",
    })
end

--- Returns a page iterator for listBranches.
function M.pages_list_branches(client, input)
    return paginator.pages(client, "listBranches", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "branches",
    })
end

--- Returns an item iterator for listBranches.
function M.items_list_branches(client, input)
    return paginator.items(client, "listBranches", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "branches",
    })
end

--- Returns a page iterator for listDomainAssociations.
function M.pages_list_domain_associations(client, input)
    return paginator.pages(client, "listDomainAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "domainAssociations",
    })
end

--- Returns an item iterator for listDomainAssociations.
function M.items_list_domain_associations(client, input)
    return paginator.items(client, "listDomainAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "domainAssociations",
    })
end

--- Returns a page iterator for listJobs.
function M.pages_list_jobs(client, input)
    return paginator.pages(client, "listJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobSummaries",
    })
end

--- Returns an item iterator for listJobs.
function M.items_list_jobs(client, input)
    return paginator.items(client, "listJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobSummaries",
    })
end

return M
