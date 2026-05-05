local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listCustomerAgreements.
function M.pages_list_customer_agreements(client, input)
    return paginator.pages(client, "listCustomerAgreements", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "customerAgreements",
    })
end

--- Returns an item iterator for listCustomerAgreements.
function M.items_list_customer_agreements(client, input)
    return paginator.items(client, "listCustomerAgreements", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "customerAgreements",
    })
end

--- Returns a page iterator for listReportVersions.
function M.pages_list_report_versions(client, input)
    return paginator.pages(client, "listReportVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "reports",
    })
end

--- Returns an item iterator for listReportVersions.
function M.items_list_report_versions(client, input)
    return paginator.items(client, "listReportVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "reports",
    })
end

--- Returns a page iterator for listReports.
function M.pages_list_reports(client, input)
    return paginator.pages(client, "listReports", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "reports",
    })
end

--- Returns an item iterator for listReports.
function M.items_list_reports(client, input)
    return paginator.items(client, "listReports", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "reports",
    })
end

return M
