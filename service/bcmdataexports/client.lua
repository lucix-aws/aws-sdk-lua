



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("bcmdataexports.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("bcmdataexports.schemas")
local traits = require("smithy.traits")
local types = require("bcmdataexports.types")
local sdk_defaults = require("aws.sdk_defaults")


















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSBillingAndCostManagementDataExports"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bcm-data-exports", signing_region = c.region } }
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

function C:createExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExport, input, options)
end

function C:deleteExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExport, input, options)
end

function C:getExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExecution, input, options)
end

function C:getExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExport, input, options)
end

function C:getTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTable, input, options)
end

function C:listExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExecutions, input, options)
end

function C:listExports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExports, input, options)
end

function C:listTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTables, input, options)
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

function C:updateExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateExport, input, options)
end

return M
