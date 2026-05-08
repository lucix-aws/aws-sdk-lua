



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codegurusecurity.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("codegurusecurity.schemas")
local traits = require("smithy.traits")
local types = require("codegurusecurity.types")
local sdk_defaults = require("aws.sdk_defaults")



















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AwsCodeGuruSecurity"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codeguru-security", signing_region = c.region } }
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

function C:batchGetFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetFindings, input, options)
end

function C:createScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateScan, input, options)
end

function C:createUploadUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUploadUrl, input, options)
end

function C:getAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountConfiguration, input, options)
end

function C:getFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindings, input, options)
end

function C:getMetricsSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetricsSummary, input, options)
end

function C:getScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetScan, input, options)
end

function C:listFindingsMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindingsMetrics, input, options)
end

function C:listScans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScans, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountConfiguration, input, options)
end

return M
