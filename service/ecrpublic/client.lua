



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ecrpublic.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("ecrpublic.schemas")
local traits = require("smithy.traits")
local types = require("ecrpublic.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SpencerFrontendService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ecr-public", signing_region = c.region } }
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

function C:batchCheckLayerAvailability(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCheckLayerAvailability, input, options)
end

function C:batchDeleteImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteImage, input, options)
end

function C:completeLayerUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteLayerUpload, input, options)
end

function C:createRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRepository, input, options)
end

function C:deleteRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRepository, input, options)
end

function C:deleteRepositoryPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRepositoryPolicy, input, options)
end

function C:describeImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImages, input, options)
end

function C:describeImageTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageTags, input, options)
end

function C:describeRegistries(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegistries, input, options)
end

function C:describeRepositories(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRepositories, input, options)
end

function C:getAuthorizationToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAuthorizationToken, input, options)
end

function C:getRegistryCatalogData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegistryCatalogData, input, options)
end

function C:getRepositoryCatalogData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepositoryCatalogData, input, options)
end

function C:getRepositoryPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepositoryPolicy, input, options)
end

function C:initiateLayerUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitiateLayerUpload, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutImage, input, options)
end

function C:putRegistryCatalogData(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRegistryCatalogData, input, options)
end

function C:putRepositoryCatalogData(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRepositoryCatalogData, input, options)
end

function C:setRepositoryPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetRepositoryPolicy, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:uploadLayerPart(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadLayerPart, input, options)
end

return M
