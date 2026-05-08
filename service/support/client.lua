



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("support.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("support.schemas")
local traits = require("smithy.traits")
local types = require("support.types")
local sdk_defaults = require("aws.sdk_defaults")






















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSSupport_20130415"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "support", signing_region = c.region } }
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

function C:addAttachmentsToSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddAttachmentsToSet, input, options)
end

function C:addCommunicationToCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddCommunicationToCase, input, options)
end

function C:createCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCase, input, options)
end

function C:describeAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAttachment, input, options)
end

function C:describeCases(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCases, input, options)
end

function C:describeCommunications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCommunications, input, options)
end

function C:describeCreateCaseOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCreateCaseOptions, input, options)
end

function C:describeServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServices, input, options)
end

function C:describeSeverityLevels(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSeverityLevels, input, options)
end

function C:describeSupportedLanguages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSupportedLanguages, input, options)
end

function C:describeTrustedAdvisorCheckRefreshStatuses(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrustedAdvisorCheckRefreshStatuses, input, options)
end

function C:describeTrustedAdvisorCheckResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrustedAdvisorCheckResult, input, options)
end

function C:describeTrustedAdvisorChecks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrustedAdvisorChecks, input, options)
end

function C:describeTrustedAdvisorCheckSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrustedAdvisorCheckSummaries, input, options)
end

function C:refreshTrustedAdvisorCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.RefreshTrustedAdvisorCheck, input, options)
end

function C:resolveCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResolveCase, input, options)
end

return M
