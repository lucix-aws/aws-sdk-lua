



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("migrationhubstrategy.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("migrationhubstrategy.schemas")
local traits = require("smithy.traits")
local types = require("migrationhubstrategy.types")
local sdk_defaults = require("aws.sdk_defaults")




























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSMigrationHubStrategyRecommendation"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "migrationhub-strategy", signing_region = c.region } }
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

function C:getApplicationComponentDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationComponentDetails, input, options)
end

function C:getApplicationComponentStrategies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationComponentStrategies, input, options)
end

function C:getAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssessment, input, options)
end

function C:getImportFileTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImportFileTask, input, options)
end

function C:getLatestAssessmentId(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLatestAssessmentId, input, options)
end

function C:getPortfolioPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPortfolioPreferences, input, options)
end

function C:getPortfolioSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPortfolioSummary, input, options)
end

function C:getRecommendationReportDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommendationReportDetails, input, options)
end

function C:getServerDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServerDetails, input, options)
end

function C:getServerStrategies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServerStrategies, input, options)
end

function C:listAnalyzableServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnalyzableServers, input, options)
end

function C:listApplicationComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationComponents, input, options)
end

function C:listCollectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollectors, input, options)
end

function C:listImportFileTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImportFileTask, input, options)
end

function C:listServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServers, input, options)
end

function C:putPortfolioPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPortfolioPreferences, input, options)
end

function C:startAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAssessment, input, options)
end

function C:startImportFileTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImportFileTask, input, options)
end

function C:startRecommendationReportGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRecommendationReportGeneration, input, options)
end

function C:stopAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopAssessment, input, options)
end

function C:updateApplicationComponentConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplicationComponentConfig, input, options)
end

function C:updateServerConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServerConfig, input, options)
end

return M
