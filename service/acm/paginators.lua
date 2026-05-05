local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listCertificates.
function M.pages_list_certificates(client, input)
    return paginator.pages(client, "listCertificates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CertificateSummaryList",
    })
end

--- Returns an item iterator for listCertificates.
function M.items_list_certificates(client, input)
    return paginator.items(client, "listCertificates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CertificateSummaryList",
    })
end

--- Returns a page iterator for searchCertificates.
function M.pages_search_certificates(client, input)
    return paginator.pages(client, "searchCertificates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns an item iterator for searchCertificates.
function M.items_search_certificates(client, input)
    return paginator.items(client, "searchCertificates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

return M
