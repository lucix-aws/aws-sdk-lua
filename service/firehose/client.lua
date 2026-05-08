



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("firehose.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("firehose.schemas")
local traits = require("smithy.traits")
local types = require("firehose.types")
local sdk_defaults = require("aws.sdk_defaults")


















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Firehose_20150804"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "firehose", signing_region = c.region } }
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

function C:createDeliveryStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeliveryStream, input, options)
end

function C:deleteDeliveryStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeliveryStream, input, options)
end

function C:describeDeliveryStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDeliveryStream, input, options)
end

function C:listDeliveryStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeliveryStreams, input, options)
end

function C:listTagsForDeliveryStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForDeliveryStream, input, options)
end

function C:putRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRecord, input, options)
end

function C:putRecordBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRecordBatch, input, options)
end

function C:startDeliveryStreamEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDeliveryStreamEncryption, input, options)
end

function C:stopDeliveryStreamEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDeliveryStreamEncryption, input, options)
end

function C:tagDeliveryStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagDeliveryStream, input, options)
end

function C:untagDeliveryStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagDeliveryStream, input, options)
end

function C:updateDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDestination, input, options)
end

return M
