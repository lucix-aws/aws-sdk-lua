local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getDedicatedIps.
function M.pages_get_dedicated_ips(client, input)
    return paginator.pages(client, "getDedicatedIps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listConfigurationSets.
function M.pages_list_configuration_sets(client, input)
    return paginator.pages(client, "listConfigurationSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDedicatedIpPools.
function M.pages_list_dedicated_ip_pools(client, input)
    return paginator.pages(client, "listDedicatedIpPools", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDeliverabilityTestReports.
function M.pages_list_deliverability_test_reports(client, input)
    return paginator.pages(client, "listDeliverabilityTestReports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDomainDeliverabilityCampaigns.
function M.pages_list_domain_deliverability_campaigns(client, input)
    return paginator.pages(client, "listDomainDeliverabilityCampaigns", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listEmailIdentities.
function M.pages_list_email_identities(client, input)
    return paginator.pages(client, "listEmailIdentities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
