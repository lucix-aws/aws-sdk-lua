



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ebs.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("ebs.schemas")
local traits = require("smithy.traits")
local types = require("ebs.types")
local sdk_defaults = require("aws.sdk_defaults")












local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Ebs"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ebs", signing_region = c.region } }
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

function C:completeSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteSnapshot, input, options)
end

function C:getSnapshotBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSnapshotBlock, input, options)
end

function C:listChangedBlocks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChangedBlocks, input, options)
end

function C:listSnapshotBlocks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSnapshotBlocks, input, options)
end

function C:putSnapshotBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSnapshotBlock, input, options)
end

function C:startSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSnapshot, input, options)
end

return M
