



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("amp.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("amp.schemas")
local traits = require("smithy.traits")
local types = require("amp.types")
local sdk_defaults = require("aws.sdk_defaults")


















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonPrometheusService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aps", signing_region = c.region } }
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

function C:createAlertManagerDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAlertManagerDefinition, input, options)
end

function C:createAnomalyDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAnomalyDetector, input, options)
end

function C:createLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoggingConfiguration, input, options)
end

function C:createQueryLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQueryLoggingConfiguration, input, options)
end

function C:createRuleGroupsNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRuleGroupsNamespace, input, options)
end

function C:createScraper(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateScraper, input, options)
end

function C:createWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspace, input, options)
end

function C:deleteAlertManagerDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlertManagerDefinition, input, options)
end

function C:deleteAnomalyDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnomalyDetector, input, options)
end

function C:deleteLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoggingConfiguration, input, options)
end

function C:deleteQueryLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueryLoggingConfiguration, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteRuleGroupsNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRuleGroupsNamespace, input, options)
end

function C:deleteScraper(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteScraper, input, options)
end

function C:deleteScraperLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteScraperLoggingConfiguration, input, options)
end

function C:deleteWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspace, input, options)
end

function C:describeAlertManagerDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAlertManagerDefinition, input, options)
end

function C:describeAnomalyDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAnomalyDetector, input, options)
end

function C:describeLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoggingConfiguration, input, options)
end

function C:describeQueryLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQueryLoggingConfiguration, input, options)
end

function C:describeResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourcePolicy, input, options)
end

function C:describeRuleGroupsNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRuleGroupsNamespace, input, options)
end

function C:describeScraper(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScraper, input, options)
end

function C:describeScraperLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScraperLoggingConfiguration, input, options)
end

function C:describeWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspace, input, options)
end

function C:describeWorkspaceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspaceConfiguration, input, options)
end

function C:getDefaultScraperConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDefaultScraperConfiguration, input, options)
end

function C:listAnomalyDetectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnomalyDetectors, input, options)
end

function C:listRuleGroupsNamespaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuleGroupsNamespaces, input, options)
end

function C:listScrapers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScrapers, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkspaces, input, options)
end

function C:putAlertManagerDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAlertManagerDefinition, input, options)
end

function C:putAnomalyDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAnomalyDetector, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:putRuleGroupsNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRuleGroupsNamespace, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLoggingConfiguration, input, options)
end

function C:updateQueryLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueryLoggingConfiguration, input, options)
end

function C:updateScraper(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateScraper, input, options)
end

function C:updateScraperLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateScraperLoggingConfiguration, input, options)
end

function C:updateWorkspaceAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspaceAlias, input, options)
end

function C:updateWorkspaceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspaceConfiguration, input, options)
end

return M
