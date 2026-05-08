



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("devopsguru.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("devopsguru.schemas")
local traits = require("smithy.traits")
local types = require("devopsguru.types")
local sdk_defaults = require("aws.sdk_defaults")





































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CapstoneControlPlaneService"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "devops-guru", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:addNotificationChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddNotificationChannel, input, options)
end

function C:deleteInsight(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInsight, input, options)
end

function C:describeAccountHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountHealth, input, options)
end

function C:describeAccountOverview(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountOverview, input, options)
end

function C:describeAnomaly(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAnomaly, input, options)
end

function C:describeEventSourcesConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventSourcesConfig, input, options)
end

function C:describeFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFeedback, input, options)
end

function C:describeInsight(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInsight, input, options)
end

function C:describeOrganizationHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationHealth, input, options)
end

function C:describeOrganizationOverview(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationOverview, input, options)
end

function C:describeOrganizationResourceCollectionHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationResourceCollectionHealth, input, options)
end

function C:describeResourceCollectionHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourceCollectionHealth, input, options)
end

function C:describeServiceIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServiceIntegration, input, options)
end

function C:getCostEstimation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCostEstimation, input, options)
end

function C:getResourceCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceCollection, input, options)
end

function C:listAnomaliesForInsight(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnomaliesForInsight, input, options)
end

function C:listAnomalousLogGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnomalousLogGroups, input, options)
end

function C:listEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEvents, input, options)
end

function C:listInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInsights, input, options)
end

function C:listMonitoredResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMonitoredResources, input, options)
end

function C:listNotificationChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotificationChannels, input, options)
end

function C:listOrganizationInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationInsights, input, options)
end

function C:listRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendations, input, options)
end

function C:putFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFeedback, input, options)
end

function C:removeNotificationChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveNotificationChannel, input, options)
end

function C:searchInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchInsights, input, options)
end

function C:searchOrganizationInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchOrganizationInsights, input, options)
end

function C:startCostEstimation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCostEstimation, input, options)
end

function C:updateEventSourcesConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventSourcesConfig, input, options)
end

function C:updateResourceCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceCollection, input, options)
end

function C:updateServiceIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceIntegration, input, options)
end

return M
