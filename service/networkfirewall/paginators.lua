local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getAnalysisReportResults.
function M.pages_get_analysis_report_results(client, input)
    return paginator.pages(client, "getAnalysisReportResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AnalysisReportResults",
    })
end

--- Returns an item iterator for getAnalysisReportResults.
function M.items_get_analysis_report_results(client, input)
    return paginator.items(client, "getAnalysisReportResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AnalysisReportResults",
    })
end

--- Returns a page iterator for listAnalysisReports.
function M.pages_list_analysis_reports(client, input)
    return paginator.pages(client, "listAnalysisReports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AnalysisReports",
    })
end

--- Returns an item iterator for listAnalysisReports.
function M.items_list_analysis_reports(client, input)
    return paginator.items(client, "listAnalysisReports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AnalysisReports",
    })
end

--- Returns a page iterator for listFirewallPolicies.
function M.pages_list_firewall_policies(client, input)
    return paginator.pages(client, "listFirewallPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FirewallPolicies",
    })
end

--- Returns an item iterator for listFirewallPolicies.
function M.items_list_firewall_policies(client, input)
    return paginator.items(client, "listFirewallPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FirewallPolicies",
    })
end

--- Returns a page iterator for listFirewalls.
function M.pages_list_firewalls(client, input)
    return paginator.pages(client, "listFirewalls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Firewalls",
    })
end

--- Returns an item iterator for listFirewalls.
function M.items_list_firewalls(client, input)
    return paginator.items(client, "listFirewalls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Firewalls",
    })
end

--- Returns a page iterator for listFlowOperationResults.
function M.pages_list_flow_operation_results(client, input)
    return paginator.pages(client, "listFlowOperationResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Flows",
    })
end

--- Returns an item iterator for listFlowOperationResults.
function M.items_list_flow_operation_results(client, input)
    return paginator.items(client, "listFlowOperationResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Flows",
    })
end

--- Returns a page iterator for listFlowOperations.
function M.pages_list_flow_operations(client, input)
    return paginator.pages(client, "listFlowOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FlowOperations",
    })
end

--- Returns an item iterator for listFlowOperations.
function M.items_list_flow_operations(client, input)
    return paginator.items(client, "listFlowOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FlowOperations",
    })
end

--- Returns a page iterator for listProxies.
function M.pages_list_proxies(client, input)
    return paginator.pages(client, "listProxies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Proxies",
    })
end

--- Returns an item iterator for listProxies.
function M.items_list_proxies(client, input)
    return paginator.items(client, "listProxies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Proxies",
    })
end

--- Returns a page iterator for listProxyConfigurations.
function M.pages_list_proxy_configurations(client, input)
    return paginator.pages(client, "listProxyConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProxyConfigurations",
    })
end

--- Returns an item iterator for listProxyConfigurations.
function M.items_list_proxy_configurations(client, input)
    return paginator.items(client, "listProxyConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProxyConfigurations",
    })
end

--- Returns a page iterator for listProxyRuleGroups.
function M.pages_list_proxy_rule_groups(client, input)
    return paginator.pages(client, "listProxyRuleGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProxyRuleGroups",
    })
end

--- Returns an item iterator for listProxyRuleGroups.
function M.items_list_proxy_rule_groups(client, input)
    return paginator.items(client, "listProxyRuleGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProxyRuleGroups",
    })
end

--- Returns a page iterator for listRuleGroups.
function M.pages_list_rule_groups(client, input)
    return paginator.pages(client, "listRuleGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RuleGroups",
    })
end

--- Returns an item iterator for listRuleGroups.
function M.items_list_rule_groups(client, input)
    return paginator.items(client, "listRuleGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RuleGroups",
    })
end

--- Returns a page iterator for listTLSInspectionConfigurations.
function M.pages_list_t_l_s_inspection_configurations(client, input)
    return paginator.pages(client, "listTLSInspectionConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TLSInspectionConfigurations",
    })
end

--- Returns an item iterator for listTLSInspectionConfigurations.
function M.items_list_t_l_s_inspection_configurations(client, input)
    return paginator.items(client, "listTLSInspectionConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TLSInspectionConfigurations",
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

--- Returns a page iterator for listVpcEndpointAssociations.
function M.pages_list_vpc_endpoint_associations(client, input)
    return paginator.pages(client, "listVpcEndpointAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "VpcEndpointAssociations",
    })
end

--- Returns an item iterator for listVpcEndpointAssociations.
function M.items_list_vpc_endpoint_associations(client, input)
    return paginator.items(client, "listVpcEndpointAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "VpcEndpointAssociations",
    })
end

return M
