local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("devopsguru.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("devopsguru.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CapstoneControlPlaneService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "devops-guru", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:addNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "AddNotificationChannel",
        input_schema = schemas.AddNotificationChannelInput,
        output_schema = schemas.AddNotificationChannelOutput,
        http_method = "PUT",
        http_path = "/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInsight(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInsight",
        input_schema = schemas.DeleteInsightInput,
        output_schema = schemas.DeleteInsightOutput,
        http_method = "DELETE",
        http_path = "/insights/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountHealth",
        input_schema = schemas.DescribeAccountHealthInput,
        output_schema = schemas.DescribeAccountHealthOutput,
        http_method = "GET",
        http_path = "/accounts/health",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountOverview(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountOverview",
        input_schema = schemas.DescribeAccountOverviewInput,
        output_schema = schemas.DescribeAccountOverviewOutput,
        http_method = "POST",
        http_path = "/accounts/overview",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAnomaly(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnomaly",
        input_schema = schemas.DescribeAnomalyInput,
        output_schema = schemas.DescribeAnomalyOutput,
        http_method = "GET",
        http_path = "/anomalies/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventSourcesConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventSourcesConfig",
        input_schema = schemas.DescribeEventSourcesConfigInput,
        output_schema = schemas.DescribeEventSourcesConfigOutput,
        http_method = "POST",
        http_path = "/event-sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFeedback(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFeedback",
        input_schema = schemas.DescribeFeedbackInput,
        output_schema = schemas.DescribeFeedbackOutput,
        http_method = "POST",
        http_path = "/feedback",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInsight(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInsight",
        input_schema = schemas.DescribeInsightInput,
        output_schema = schemas.DescribeInsightOutput,
        http_method = "GET",
        http_path = "/insights/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationHealth",
        input_schema = schemas.DescribeOrganizationHealthInput,
        output_schema = schemas.DescribeOrganizationHealthOutput,
        http_method = "POST",
        http_path = "/organization/health",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationOverview(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationOverview",
        input_schema = schemas.DescribeOrganizationOverviewInput,
        output_schema = schemas.DescribeOrganizationOverviewOutput,
        http_method = "POST",
        http_path = "/organization/overview",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationResourceCollectionHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationResourceCollectionHealth",
        input_schema = schemas.DescribeOrganizationResourceCollectionHealthInput,
        output_schema = schemas.DescribeOrganizationResourceCollectionHealthOutput,
        http_method = "POST",
        http_path = "/organization/health/resource-collection",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResourceCollectionHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourceCollectionHealth",
        input_schema = schemas.DescribeResourceCollectionHealthInput,
        output_schema = schemas.DescribeResourceCollectionHealthOutput,
        http_method = "GET",
        http_path = "/accounts/health/resource-collection/{ResourceCollectionType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServiceIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceIntegration",
        input_schema = schemas.DescribeServiceIntegrationInput,
        output_schema = schemas.DescribeServiceIntegrationOutput,
        http_method = "GET",
        http_path = "/service-integrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCostEstimation(input, options)
    return self:invokeOperation(input, {
        name = "GetCostEstimation",
        input_schema = schemas.GetCostEstimationInput,
        output_schema = schemas.GetCostEstimationOutput,
        http_method = "GET",
        http_path = "/cost-estimation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceCollection(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceCollection",
        input_schema = schemas.GetResourceCollectionInput,
        output_schema = schemas.GetResourceCollectionOutput,
        http_method = "GET",
        http_path = "/resource-collections/{ResourceCollectionType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnomaliesForInsight(input, options)
    return self:invokeOperation(input, {
        name = "ListAnomaliesForInsight",
        input_schema = schemas.ListAnomaliesForInsightInput,
        output_schema = schemas.ListAnomaliesForInsightOutput,
        http_method = "POST",
        http_path = "/anomalies/insight/{InsightId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnomalousLogGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListAnomalousLogGroups",
        input_schema = schemas.ListAnomalousLogGroupsInput,
        output_schema = schemas.ListAnomalousLogGroupsOutput,
        http_method = "POST",
        http_path = "/list-log-anomalies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListEvents",
        input_schema = schemas.ListEventsInput,
        output_schema = schemas.ListEventsOutput,
        http_method = "POST",
        http_path = "/events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInsights(input, options)
    return self:invokeOperation(input, {
        name = "ListInsights",
        input_schema = schemas.ListInsightsInput,
        output_schema = schemas.ListInsightsOutput,
        http_method = "POST",
        http_path = "/insights",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMonitoredResources(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitoredResources",
        input_schema = schemas.ListMonitoredResourcesInput,
        output_schema = schemas.ListMonitoredResourcesOutput,
        http_method = "POST",
        http_path = "/monitoredResources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotificationChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListNotificationChannels",
        input_schema = schemas.ListNotificationChannelsInput,
        output_schema = schemas.ListNotificationChannelsOutput,
        http_method = "POST",
        http_path = "/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationInsights(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationInsights",
        input_schema = schemas.ListOrganizationInsightsInput,
        output_schema = schemas.ListOrganizationInsightsOutput,
        http_method = "POST",
        http_path = "/organization/insights",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendations",
        input_schema = schemas.ListRecommendationsInput,
        output_schema = schemas.ListRecommendationsOutput,
        http_method = "POST",
        http_path = "/recommendations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFeedback(input, options)
    return self:invokeOperation(input, {
        name = "PutFeedback",
        input_schema = schemas.PutFeedbackInput,
        output_schema = schemas.PutFeedbackOutput,
        http_method = "PUT",
        http_path = "/feedback",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "RemoveNotificationChannel",
        input_schema = schemas.RemoveNotificationChannelInput,
        output_schema = schemas.RemoveNotificationChannelOutput,
        http_method = "DELETE",
        http_path = "/channels/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchInsights(input, options)
    return self:invokeOperation(input, {
        name = "SearchInsights",
        input_schema = schemas.SearchInsightsInput,
        output_schema = schemas.SearchInsightsOutput,
        http_method = "POST",
        http_path = "/insights/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchOrganizationInsights(input, options)
    return self:invokeOperation(input, {
        name = "SearchOrganizationInsights",
        input_schema = schemas.SearchOrganizationInsightsInput,
        output_schema = schemas.SearchOrganizationInsightsOutput,
        http_method = "POST",
        http_path = "/organization/insights/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCostEstimation(input, options)
    return self:invokeOperation(input, {
        name = "StartCostEstimation",
        input_schema = schemas.StartCostEstimationInput,
        output_schema = schemas.StartCostEstimationOutput,
        http_method = "PUT",
        http_path = "/cost-estimation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventSourcesConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventSourcesConfig",
        input_schema = schemas.UpdateEventSourcesConfigInput,
        output_schema = schemas.UpdateEventSourcesConfigOutput,
        http_method = "PUT",
        http_path = "/event-sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResourceCollection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceCollection",
        input_schema = schemas.UpdateResourceCollectionInput,
        output_schema = schemas.UpdateResourceCollectionOutput,
        http_method = "PUT",
        http_path = "/resource-collections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceIntegration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceIntegration",
        input_schema = schemas.UpdateServiceIntegrationInput,
        output_schema = schemas.UpdateServiceIntegrationOutput,
        http_method = "PUT",
        http_path = "/service-integrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
