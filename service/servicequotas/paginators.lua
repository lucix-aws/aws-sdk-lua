local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAWSDefaultServiceQuotas.
function M.pages_list_a_w_s_default_service_quotas(client, input)
    return paginator.pages(client, "listAWSDefaultServiceQuotas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Quotas",
    })
end

--- Returns an item iterator for listAWSDefaultServiceQuotas.
function M.items_list_a_w_s_default_service_quotas(client, input)
    return paginator.items(client, "listAWSDefaultServiceQuotas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Quotas",
    })
end

--- Returns a page iterator for listRequestedServiceQuotaChangeHistory.
function M.pages_list_requested_service_quota_change_history(client, input)
    return paginator.pages(client, "listRequestedServiceQuotaChangeHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RequestedQuotas",
    })
end

--- Returns an item iterator for listRequestedServiceQuotaChangeHistory.
function M.items_list_requested_service_quota_change_history(client, input)
    return paginator.items(client, "listRequestedServiceQuotaChangeHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RequestedQuotas",
    })
end

--- Returns a page iterator for listRequestedServiceQuotaChangeHistoryByQuota.
function M.pages_list_requested_service_quota_change_history_by_quota(client, input)
    return paginator.pages(client, "listRequestedServiceQuotaChangeHistoryByQuota", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RequestedQuotas",
    })
end

--- Returns an item iterator for listRequestedServiceQuotaChangeHistoryByQuota.
function M.items_list_requested_service_quota_change_history_by_quota(client, input)
    return paginator.items(client, "listRequestedServiceQuotaChangeHistoryByQuota", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RequestedQuotas",
    })
end

--- Returns a page iterator for listServiceQuotaIncreaseRequestsInTemplate.
function M.pages_list_service_quota_increase_requests_in_template(client, input)
    return paginator.pages(client, "listServiceQuotaIncreaseRequestsInTemplate", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceQuotaIncreaseRequestInTemplateList",
    })
end

--- Returns an item iterator for listServiceQuotaIncreaseRequestsInTemplate.
function M.items_list_service_quota_increase_requests_in_template(client, input)
    return paginator.items(client, "listServiceQuotaIncreaseRequestsInTemplate", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceQuotaIncreaseRequestInTemplateList",
    })
end

--- Returns a page iterator for listServiceQuotas.
function M.pages_list_service_quotas(client, input)
    return paginator.pages(client, "listServiceQuotas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Quotas",
    })
end

--- Returns an item iterator for listServiceQuotas.
function M.items_list_service_quotas(client, input)
    return paginator.items(client, "listServiceQuotas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Quotas",
    })
end

--- Returns a page iterator for listServices.
function M.pages_list_services(client, input)
    return paginator.pages(client, "listServices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Services",
    })
end

--- Returns an item iterator for listServices.
function M.items_list_services(client, input)
    return paginator.items(client, "listServices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Services",
    })
end

return M
