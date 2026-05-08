



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudsearch.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("cloudsearch.schemas")
local traits = require("smithy.traits")
local types = require("cloudsearch.types")
local sdk_defaults = require("aws.sdk_defaults")
































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "A9SearchCloudConfigService2013"
   if not c.protocol then c.protocol = query_protocol.new("awsQuery") end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudsearch", signing_region = c.region } }
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

function C:buildSuggesters(input, options)
   return self:invokeOperation(schemas.Service, schemas.BuildSuggesters, input, options)
end

function C:createDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomain, input, options)
end

function C:defineAnalysisScheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.DefineAnalysisScheme, input, options)
end

function C:defineExpression(input, options)
   return self:invokeOperation(schemas.Service, schemas.DefineExpression, input, options)
end

function C:defineIndexField(input, options)
   return self:invokeOperation(schemas.Service, schemas.DefineIndexField, input, options)
end

function C:defineSuggester(input, options)
   return self:invokeOperation(schemas.Service, schemas.DefineSuggester, input, options)
end

function C:deleteAnalysisScheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnalysisScheme, input, options)
end

function C:deleteDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomain, input, options)
end

function C:deleteExpression(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExpression, input, options)
end

function C:deleteIndexField(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIndexField, input, options)
end

function C:deleteSuggester(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSuggester, input, options)
end

function C:describeAnalysisSchemes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAnalysisSchemes, input, options)
end

function C:describeAvailabilityOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAvailabilityOptions, input, options)
end

function C:describeDomainEndpointOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomainEndpointOptions, input, options)
end

function C:describeDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomains, input, options)
end

function C:describeExpressions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExpressions, input, options)
end

function C:describeIndexFields(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIndexFields, input, options)
end

function C:describeScalingParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScalingParameters, input, options)
end

function C:describeServiceAccessPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServiceAccessPolicies, input, options)
end

function C:describeSuggesters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSuggesters, input, options)
end

function C:indexDocuments(input, options)
   return self:invokeOperation(schemas.Service, schemas.IndexDocuments, input, options)
end

function C:listDomainNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainNames, input, options)
end

function C:updateAvailabilityOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAvailabilityOptions, input, options)
end

function C:updateDomainEndpointOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainEndpointOptions, input, options)
end

function C:updateScalingParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateScalingParameters, input, options)
end

function C:updateServiceAccessPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceAccessPolicies, input, options)
end

return M
