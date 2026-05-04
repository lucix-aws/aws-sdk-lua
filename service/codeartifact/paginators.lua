local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAllowedRepositoriesForGroup.
function M.pages_list_allowed_repositories_for_group(client, input)
    return paginator.pages(client, "listAllowedRepositoriesForGroup", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "allowedRepositories",
    })
end

--- Returns an item iterator for listAllowedRepositoriesForGroup.
function M.items_list_allowed_repositories_for_group(client, input)
    return paginator.items(client, "listAllowedRepositoriesForGroup", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "allowedRepositories",
    })
end

--- Returns a page iterator for listAssociatedPackages.
function M.pages_list_associated_packages(client, input)
    return paginator.pages(client, "listAssociatedPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packages",
    })
end

--- Returns an item iterator for listAssociatedPackages.
function M.items_list_associated_packages(client, input)
    return paginator.items(client, "listAssociatedPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packages",
    })
end

--- Returns a page iterator for listDomains.
function M.pages_list_domains(client, input)
    return paginator.pages(client, "listDomains", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "domains",
    })
end

--- Returns an item iterator for listDomains.
function M.items_list_domains(client, input)
    return paginator.items(client, "listDomains", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "domains",
    })
end

--- Returns a page iterator for listPackageGroups.
function M.pages_list_package_groups(client, input)
    return paginator.pages(client, "listPackageGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packageGroups",
    })
end

--- Returns an item iterator for listPackageGroups.
function M.items_list_package_groups(client, input)
    return paginator.items(client, "listPackageGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packageGroups",
    })
end

--- Returns a page iterator for listPackageVersionAssets.
function M.pages_list_package_version_assets(client, input)
    return paginator.pages(client, "listPackageVersionAssets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "assets",
    })
end

--- Returns an item iterator for listPackageVersionAssets.
function M.items_list_package_version_assets(client, input)
    return paginator.items(client, "listPackageVersionAssets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "assets",
    })
end

--- Returns a page iterator for listPackageVersions.
function M.pages_list_package_versions(client, input)
    return paginator.pages(client, "listPackageVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "versions",
    })
end

--- Returns an item iterator for listPackageVersions.
function M.items_list_package_versions(client, input)
    return paginator.items(client, "listPackageVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "versions",
    })
end

--- Returns a page iterator for listPackages.
function M.pages_list_packages(client, input)
    return paginator.pages(client, "listPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packages",
    })
end

--- Returns an item iterator for listPackages.
function M.items_list_packages(client, input)
    return paginator.items(client, "listPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packages",
    })
end

--- Returns a page iterator for listRepositories.
function M.pages_list_repositories(client, input)
    return paginator.pages(client, "listRepositories", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "repositories",
    })
end

--- Returns an item iterator for listRepositories.
function M.items_list_repositories(client, input)
    return paginator.items(client, "listRepositories", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "repositories",
    })
end

--- Returns a page iterator for listRepositoriesInDomain.
function M.pages_list_repositories_in_domain(client, input)
    return paginator.pages(client, "listRepositoriesInDomain", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "repositories",
    })
end

--- Returns an item iterator for listRepositoriesInDomain.
function M.items_list_repositories_in_domain(client, input)
    return paginator.items(client, "listRepositoriesInDomain", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "repositories",
    })
end

--- Returns a page iterator for listSubPackageGroups.
function M.pages_list_sub_package_groups(client, input)
    return paginator.pages(client, "listSubPackageGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packageGroups",
    })
end

--- Returns an item iterator for listSubPackageGroups.
function M.items_list_sub_package_groups(client, input)
    return paginator.items(client, "listSubPackageGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packageGroups",
    })
end

return M
