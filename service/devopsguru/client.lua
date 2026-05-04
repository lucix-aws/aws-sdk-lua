local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("devopsguru.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("devopsguru.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CapstoneControlPlaneService"
    cfg.signing_name = "capstonecontrolplaneservice"
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

function Client:addNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "AddNotificationChannel",
        input_schema = types.AddNotificationChannelInput,
        output_schema = types.AddNotificationChannelOutput,
        http_method = "PUT",
        http_path = "/channels",
    }, options)
end

function Client:deleteInsight(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInsight",
        input_schema = types.DeleteInsightInput,
        output_schema = types.DeleteInsightOutput,
        http_method = "DELETE",
        http_path = "/insights/{Id}",
    }, options)
end

function Client:describeAccountHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountHealth",
        input_schema = types.DescribeAccountHealthInput,
        output_schema = types.DescribeAccountHealthOutput,
        http_method = "GET",
        http_path = "/accounts/health",
    }, options)
end

function Client:describeAccountOverview(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountOverview",
        input_schema = types.DescribeAccountOverviewInput,
        output_schema = types.DescribeAccountOverviewOutput,
        http_method = "POST",
        http_path = "/accounts/overview",
    }, options)
end

function Client:describeAnomaly(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnomaly",
        input_schema = types.DescribeAnomalyInput,
        output_schema = types.DescribeAnomalyOutput,
        http_method = "GET",
        http_path = "/anomalies/{Id}",
    }, options)
end

function Client:describeEventSourcesConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventSourcesConfig",
        input_schema = types.DescribeEventSourcesConfigInput,
        output_schema = types.DescribeEventSourcesConfigOutput,
        http_method = "POST",
        http_path = "/event-sources",
    }, options)
end

function Client:describeFeedback(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFeedback",
        input_schema = types.DescribeFeedbackInput,
        output_schema = types.DescribeFeedbackOutput,
        http_method = "POST",
        http_path = "/feedback",
    }, options)
end

function Client:describeInsight(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInsight",
        input_schema = types.DescribeInsightInput,
        output_schema = types.DescribeInsightOutput,
        http_method = "GET",
        http_path = "/insights/{Id}",
    }, options)
end

function Client:describeOrganizationHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationHealth",
        input_schema = types.DescribeOrganizationHealthInput,
        output_schema = types.DescribeOrganizationHealthOutput,
        http_method = "POST",
        http_path = "/organization/health",
    }, options)
end

function Client:describeOrganizationOverview(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationOverview",
        input_schema = types.DescribeOrganizationOverviewInput,
        output_schema = types.DescribeOrganizationOverviewOutput,
        http_method = "POST",
        http_path = "/organization/overview",
    }, options)
end

function Client:describeOrganizationResourceCollectionHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationResourceCollectionHealth",
        input_schema = types.DescribeOrganizationResourceCollectionHealthInput,
        output_schema = types.DescribeOrganizationResourceCollectionHealthOutput,
        http_method = "POST",
        http_path = "/organization/health/resource-collection",
    }, options)
end

function Client:describeResourceCollectionHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourceCollectionHealth",
        input_schema = types.DescribeResourceCollectionHealthInput,
        output_schema = types.DescribeResourceCollectionHealthOutput,
        http_method = "GET",
        http_path = "/accounts/health/resource-collection/{ResourceCollectionType}",
    }, options)
end

function Client:describeServiceIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceIntegration",
        input_schema = types.DescribeServiceIntegrationInput,
        output_schema = types.DescribeServiceIntegrationOutput,
        http_method = "GET",
        http_path = "/service-integrations",
    }, options)
end

function Client:getCostEstimation(input, options)
    return self:invokeOperation(input, {
        name = "GetCostEstimation",
        input_schema = types.GetCostEstimationInput,
        output_schema = types.GetCostEstimationOutput,
        http_method = "GET",
        http_path = "/cost-estimation",
    }, options)
end

function Client:getResourceCollection(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceCollection",
        input_schema = types.GetResourceCollectionInput,
        output_schema = types.GetResourceCollectionOutput,
        http_method = "GET",
        http_path = "/resource-collections/{ResourceCollectionType}",
    }, options)
end

function Client:listAnomaliesForInsight(input, options)
    return self:invokeOperation(input, {
        name = "ListAnomaliesForInsight",
        input_schema = types.ListAnomaliesForInsightInput,
        output_schema = types.ListAnomaliesForInsightOutput,
        http_method = "POST",
        http_path = "/anomalies/insight/{InsightId}",
    }, options)
end

function Client:listAnomalousLogGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListAnomalousLogGroups",
        input_schema = types.ListAnomalousLogGroupsInput,
        output_schema = types.ListAnomalousLogGroupsOutput,
        http_method = "POST",
        http_path = "/list-log-anomalies",
    }, options)
end

function Client:listEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListEvents",
        input_schema = types.ListEventsInput,
        output_schema = types.ListEventsOutput,
        http_method = "POST",
        http_path = "/events",
    }, options)
end

function Client:listInsights(input, options)
    return self:invokeOperation(input, {
        name = "ListInsights",
        input_schema = types.ListInsightsInput,
        output_schema = types.ListInsightsOutput,
        http_method = "POST",
        http_path = "/insights",
    }, options)
end

function Client:listMonitoredResources(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitoredResources",
        input_schema = types.ListMonitoredResourcesInput,
        output_schema = types.ListMonitoredResourcesOutput,
        http_method = "POST",
        http_path = "/monitoredResources",
    }, options)
end

function Client:listNotificationChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListNotificationChannels",
        input_schema = types.ListNotificationChannelsInput,
        output_schema = types.ListNotificationChannelsOutput,
        http_method = "POST",
        http_path = "/channels",
    }, options)
end

function Client:listOrganizationInsights(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationInsights",
        input_schema = types.ListOrganizationInsightsInput,
        output_schema = types.ListOrganizationInsightsOutput,
        http_method = "POST",
        http_path = "/organization/insights",
    }, options)
end

function Client:listRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendations",
        input_schema = types.ListRecommendationsInput,
        output_schema = types.ListRecommendationsOutput,
        http_method = "POST",
        http_path = "/recommendations",
    }, options)
end

function Client:putFeedback(input, options)
    return self:invokeOperation(input, {
        name = "PutFeedback",
        input_schema = types.PutFeedbackInput,
        output_schema = types.PutFeedbackOutput,
        http_method = "PUT",
        http_path = "/feedback",
    }, options)
end

function Client:removeNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "RemoveNotificationChannel",
        input_schema = types.RemoveNotificationChannelInput,
        output_schema = types.RemoveNotificationChannelOutput,
        http_method = "DELETE",
        http_path = "/channels/{Id}",
    }, options)
end

function Client:searchInsights(input, options)
    return self:invokeOperation(input, {
        name = "SearchInsights",
        input_schema = types.SearchInsightsInput,
        output_schema = types.SearchInsightsOutput,
        http_method = "POST",
        http_path = "/insights/search",
    }, options)
end

function Client:searchOrganizationInsights(input, options)
    return self:invokeOperation(input, {
        name = "SearchOrganizationInsights",
        input_schema = types.SearchOrganizationInsightsInput,
        output_schema = types.SearchOrganizationInsightsOutput,
        http_method = "POST",
        http_path = "/organization/insights/search",
    }, options)
end

function Client:startCostEstimation(input, options)
    return self:invokeOperation(input, {
        name = "StartCostEstimation",
        input_schema = types.StartCostEstimationInput,
        output_schema = types.StartCostEstimationOutput,
        http_method = "PUT",
        http_path = "/cost-estimation",
    }, options)
end

function Client:updateEventSourcesConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventSourcesConfig",
        input_schema = types.UpdateEventSourcesConfigInput,
        output_schema = types.UpdateEventSourcesConfigOutput,
        http_method = "PUT",
        http_path = "/event-sources",
    }, options)
end

function Client:updateResourceCollection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceCollection",
        input_schema = types.UpdateResourceCollectionInput,
        output_schema = types.UpdateResourceCollectionOutput,
        http_method = "PUT",
        http_path = "/resource-collections",
    }, options)
end

function Client:updateServiceIntegration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceIntegration",
        input_schema = types.UpdateServiceIntegrationInput,
        output_schema = types.UpdateServiceIntegrationOutput,
        http_method = "PUT",
        http_path = "/service-integrations",
    }, options)
end

return M
