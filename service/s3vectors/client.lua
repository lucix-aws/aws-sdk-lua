



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("s3vectors.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("s3vectors.schemas")
local traits = require("smithy.traits")
local types = require("s3vectors.types")
local sdk_defaults = require("aws.sdk_defaults")

























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "S3Vectors"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "s3vectors", signing_region = c.region } }
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

function C:createIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIndex, input, options)
end

function C:createVectorBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVectorBucket, input, options)
end

function C:deleteIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIndex, input, options)
end

function C:deleteVectorBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVectorBucket, input, options)
end

function C:deleteVectorBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVectorBucketPolicy, input, options)
end

function C:deleteVectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVectors, input, options)
end

function C:getIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIndex, input, options)
end

function C:getVectorBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVectorBucket, input, options)
end

function C:getVectorBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVectorBucketPolicy, input, options)
end

function C:getVectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVectors, input, options)
end

function C:listIndexes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIndexes, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVectorBuckets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVectorBuckets, input, options)
end

function C:listVectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVectors, input, options)
end

function C:putVectorBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVectorBucketPolicy, input, options)
end

function C:putVectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVectors, input, options)
end

function C:queryVectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.QueryVectors, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
