



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudtrail.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("cloudtrail.schemas")
local traits = require("smithy.traits")
local types = require("cloudtrail.types")
local sdk_defaults = require("aws.sdk_defaults")


































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CloudTrail_20131101"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudtrail", signing_region = c.region } }
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

function C:addTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTags, input, options)
end

function C:cancelQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelQuery, input, options)
end

function C:createChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannel, input, options)
end

function C:createDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDashboard, input, options)
end

function C:createEventDataStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventDataStore, input, options)
end

function C:createTrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrail, input, options)
end

function C:deleteChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannel, input, options)
end

function C:deleteDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDashboard, input, options)
end

function C:deleteEventDataStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventDataStore, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteTrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrail, input, options)
end

function C:deregisterOrganizationDelegatedAdmin(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterOrganizationDelegatedAdmin, input, options)
end

function C:describeQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQuery, input, options)
end

function C:describeTrails(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrails, input, options)
end

function C:disableFederation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableFederation, input, options)
end

function C:enableFederation(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableFederation, input, options)
end

function C:generateQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateQuery, input, options)
end

function C:getChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannel, input, options)
end

function C:getDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDashboard, input, options)
end

function C:getEventConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventConfiguration, input, options)
end

function C:getEventDataStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventDataStore, input, options)
end

function C:getEventSelectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventSelectors, input, options)
end

function C:getImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImport, input, options)
end

function C:getInsightSelectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInsightSelectors, input, options)
end

function C:getQueryResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueryResults, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getTrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrail, input, options)
end

function C:getTrailStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrailStatus, input, options)
end

function C:listChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannels, input, options)
end

function C:listDashboards(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDashboards, input, options)
end

function C:listEventDataStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventDataStores, input, options)
end

function C:listImportFailures(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImportFailures, input, options)
end

function C:listImports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImports, input, options)
end

function C:listInsightsData(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInsightsData, input, options)
end

function C:listInsightsMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInsightsMetricData, input, options)
end

function C:listPublicKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPublicKeys, input, options)
end

function C:listQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueries, input, options)
end

function C:listTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTags, input, options)
end

function C:listTrails(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrails, input, options)
end

function C:lookupEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.LookupEvents, input, options)
end

function C:putEventConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEventConfiguration, input, options)
end

function C:putEventSelectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEventSelectors, input, options)
end

function C:putInsightSelectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutInsightSelectors, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:registerOrganizationDelegatedAdmin(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterOrganizationDelegatedAdmin, input, options)
end

function C:removeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTags, input, options)
end

function C:restoreEventDataStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreEventDataStore, input, options)
end

function C:searchSampleQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchSampleQueries, input, options)
end

function C:startDashboardRefresh(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDashboardRefresh, input, options)
end

function C:startEventDataStoreIngestion(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEventDataStoreIngestion, input, options)
end

function C:startImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImport, input, options)
end

function C:startLogging(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartLogging, input, options)
end

function C:startQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartQuery, input, options)
end

function C:stopEventDataStoreIngestion(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopEventDataStoreIngestion, input, options)
end

function C:stopImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopImport, input, options)
end

function C:stopLogging(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopLogging, input, options)
end

function C:updateChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannel, input, options)
end

function C:updateDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDashboard, input, options)
end

function C:updateEventDataStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventDataStore, input, options)
end

function C:updateTrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrail, input, options)
end

return M
