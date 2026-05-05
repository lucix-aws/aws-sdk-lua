local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listCertificateAuthorities.
function M.pages_list_certificate_authorities(client, input)
    return paginator.pages(client, "listCertificateAuthorities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CertificateAuthorities",
    })
end

--- Returns an item iterator for listCertificateAuthorities.
function M.items_list_certificate_authorities(client, input)
    return paginator.items(client, "listCertificateAuthorities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CertificateAuthorities",
    })
end

--- Returns a page iterator for listPermissions.
function M.pages_list_permissions(client, input)
    return paginator.pages(client, "listPermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Permissions",
    })
end

--- Returns an item iterator for listPermissions.
function M.items_list_permissions(client, input)
    return paginator.items(client, "listPermissions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Permissions",
    })
end

--- Returns a page iterator for listTags.
function M.pages_list_tags(client, input)
    return paginator.pages(client, "listTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns an item iterator for listTags.
function M.items_list_tags(client, input)
    return paginator.items(client, "listTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

return M
