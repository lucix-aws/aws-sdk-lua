local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("networkflowmonitor.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("networkflowmonitor.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "NetworkFlowMonitor"
    cfg.signing_name = "networkflowmonitor"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:createMonitor(input, options)
    return self:invokeOperation(input, {
        name = "CreateMonitor",
        input_schema = types.CreateMonitorInput,
        output_schema = types.CreateMonitorOutput,
        http_method = "POST",
        http_path = "/monitors",
    }, options)
end

function Client:createScope(input, options)
    return self:invokeOperation(input, {
        name = "CreateScope",
        input_schema = types.CreateScopeInput,
        output_schema = types.CreateScopeOutput,
        http_method = "POST",
        http_path = "/scopes",
    }, options)
end

function Client:deleteMonitor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMonitor",
        input_schema = types.DeleteMonitorInput,
        output_schema = types.DeleteMonitorOutput,
        http_method = "DELETE",
        http_path = "/monitors/{monitorName}",
    }, options)
end

function Client:deleteScope(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScope",
        input_schema = types.DeleteScopeInput,
        output_schema = types.DeleteScopeOutput,
        http_method = "DELETE",
        http_path = "/scopes/{scopeId}",
    }, options)
end

function Client:getMonitor(input, options)
    return self:invokeOperation(input, {
        name = "GetMonitor",
        input_schema = types.GetMonitorInput,
        output_schema = types.GetMonitorOutput,
        http_method = "GET",
        http_path = "/monitors/{monitorName}",
    }, options)
end

function Client:getQueryResultsMonitorTopContributors(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryResultsMonitorTopContributors",
        input_schema = types.GetQueryResultsMonitorTopContributorsInput,
        output_schema = types.GetQueryResultsMonitorTopContributorsOutput,
        http_method = "GET",
        http_path = "/monitors/{monitorName}/topContributorsQueries/{queryId}/results",
    }, options)
end

function Client:getQueryResultsWorkloadInsightsTopContributors(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryResultsWorkloadInsightsTopContributors",
        input_schema = types.GetQueryResultsWorkloadInsightsTopContributorsInput,
        output_schema = types.GetQueryResultsWorkloadInsightsTopContributorsOutput,
        http_method = "GET",
        http_path = "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}/results",
    }, options)
end

function Client:getQueryResultsWorkloadInsightsTopContributorsData(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryResultsWorkloadInsightsTopContributorsData",
        input_schema = types.GetQueryResultsWorkloadInsightsTopContributorsDataInput,
        output_schema = types.GetQueryResultsWorkloadInsightsTopContributorsDataOutput,
        http_method = "GET",
        http_path = "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}/results",
    }, options)
end

function Client:getQueryStatusMonitorTopContributors(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryStatusMonitorTopContributors",
        input_schema = types.GetQueryStatusMonitorTopContributorsInput,
        output_schema = types.GetQueryStatusMonitorTopContributorsOutput,
        http_method = "GET",
        http_path = "/monitors/{monitorName}/topContributorsQueries/{queryId}/status",
    }, options)
end

function Client:getQueryStatusWorkloadInsightsTopContributors(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryStatusWorkloadInsightsTopContributors",
        input_schema = types.GetQueryStatusWorkloadInsightsTopContributorsInput,
        output_schema = types.GetQueryStatusWorkloadInsightsTopContributorsOutput,
        http_method = "GET",
        http_path = "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}/status",
    }, options)
end

function Client:getQueryStatusWorkloadInsightsTopContributorsData(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryStatusWorkloadInsightsTopContributorsData",
        input_schema = types.GetQueryStatusWorkloadInsightsTopContributorsDataInput,
        output_schema = types.GetQueryStatusWorkloadInsightsTopContributorsDataOutput,
        http_method = "GET",
        http_path = "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}/status",
    }, options)
end

function Client:getScope(input, options)
    return self:invokeOperation(input, {
        name = "GetScope",
        input_schema = types.GetScopeInput,
        output_schema = types.GetScopeOutput,
        http_method = "GET",
        http_path = "/scopes/{scopeId}",
    }, options)
end

function Client:listMonitors(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitors",
        input_schema = types.ListMonitorsInput,
        output_schema = types.ListMonitorsOutput,
        http_method = "GET",
        http_path = "/monitors",
    }, options)
end

function Client:listScopes(input, options)
    return self:invokeOperation(input, {
        name = "ListScopes",
        input_schema = types.ListScopesInput,
        output_schema = types.ListScopesOutput,
        http_method = "GET",
        http_path = "/scopes",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:startQueryMonitorTopContributors(input, options)
    return self:invokeOperation(input, {
        name = "StartQueryMonitorTopContributors",
        input_schema = types.StartQueryMonitorTopContributorsInput,
        output_schema = types.StartQueryMonitorTopContributorsOutput,
        http_method = "POST",
        http_path = "/monitors/{monitorName}/topContributorsQueries",
    }, options)
end

function Client:startQueryWorkloadInsightsTopContributors(input, options)
    return self:invokeOperation(input, {
        name = "StartQueryWorkloadInsightsTopContributors",
        input_schema = types.StartQueryWorkloadInsightsTopContributorsInput,
        output_schema = types.StartQueryWorkloadInsightsTopContributorsOutput,
        http_method = "POST",
        http_path = "/workloadInsights/{scopeId}/topContributorsQueries",
    }, options)
end

function Client:startQueryWorkloadInsightsTopContributorsData(input, options)
    return self:invokeOperation(input, {
        name = "StartQueryWorkloadInsightsTopContributorsData",
        input_schema = types.StartQueryWorkloadInsightsTopContributorsDataInput,
        output_schema = types.StartQueryWorkloadInsightsTopContributorsDataOutput,
        http_method = "POST",
        http_path = "/workloadInsights/{scopeId}/topContributorsDataQueries",
    }, options)
end

function Client:stopQueryMonitorTopContributors(input, options)
    return self:invokeOperation(input, {
        name = "StopQueryMonitorTopContributors",
        input_schema = types.StopQueryMonitorTopContributorsInput,
        output_schema = types.StopQueryMonitorTopContributorsOutput,
        http_method = "DELETE",
        http_path = "/monitors/{monitorName}/topContributorsQueries/{queryId}",
    }, options)
end

function Client:stopQueryWorkloadInsightsTopContributors(input, options)
    return self:invokeOperation(input, {
        name = "StopQueryWorkloadInsightsTopContributors",
        input_schema = types.StopQueryWorkloadInsightsTopContributorsInput,
        output_schema = types.StopQueryWorkloadInsightsTopContributorsOutput,
        http_method = "DELETE",
        http_path = "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}",
    }, options)
end

function Client:stopQueryWorkloadInsightsTopContributorsData(input, options)
    return self:invokeOperation(input, {
        name = "StopQueryWorkloadInsightsTopContributorsData",
        input_schema = types.StopQueryWorkloadInsightsTopContributorsDataInput,
        output_schema = types.StopQueryWorkloadInsightsTopContributorsDataOutput,
        http_method = "DELETE",
        http_path = "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateMonitor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMonitor",
        input_schema = types.UpdateMonitorInput,
        output_schema = types.UpdateMonitorOutput,
        http_method = "PATCH",
        http_path = "/monitors/{monitorName}",
    }, options)
end

function Client:updateScope(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScope",
        input_schema = types.UpdateScopeInput,
        output_schema = types.UpdateScopeOutput,
        http_method = "PATCH",
        http_path = "/scopes/{scopeId}",
    }, options)
end

return M
