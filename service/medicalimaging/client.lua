



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("medicalimaging.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("medicalimaging.schemas")
local traits = require("smithy.traits")
local types = require("medicalimaging.types")
local sdk_defaults = require("aws.sdk_defaults")
























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AHIGatewayService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "medical-imaging", signing_region = c.region } }
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

function C:copyImageSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyImageSet, input, options)
end

function C:createDatastore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDatastore, input, options)
end

function C:deleteDatastore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDatastore, input, options)
end

function C:deleteImageSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImageSet, input, options)
end

function C:getDatastore(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDatastore, input, options)
end

function C:getDICOMImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDICOMImportJob, input, options)
end

function C:getImageFrame(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImageFrame, input, options)
end

function C:getImageSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImageSet, input, options)
end

function C:getImageSetMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImageSetMetadata, input, options)
end

function C:listDatastores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatastores, input, options)
end

function C:listDICOMImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDICOMImportJobs, input, options)
end

function C:listImageSetVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImageSetVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:searchImageSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchImageSets, input, options)
end

function C:startDICOMImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDICOMImportJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateImageSetMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateImageSetMetadata, input, options)
end

return M
