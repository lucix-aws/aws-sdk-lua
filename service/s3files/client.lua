



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("s3files.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("s3files.schemas")
local traits = require("smithy.traits")
local types = require("s3files.types")
local sdk_defaults = require("aws.sdk_defaults")



























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "S3Files"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "s3files", signing_region = c.region } }
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

function C:createAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessPoint, input, options)
end

function C:createFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFileSystem, input, options)
end

function C:createMountTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMountTarget, input, options)
end

function C:deleteAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessPoint, input, options)
end

function C:deleteFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFileSystem, input, options)
end

function C:deleteFileSystemPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFileSystemPolicy, input, options)
end

function C:deleteMountTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMountTarget, input, options)
end

function C:getAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPoint, input, options)
end

function C:getFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFileSystem, input, options)
end

function C:getFileSystemPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFileSystemPolicy, input, options)
end

function C:getMountTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMountTarget, input, options)
end

function C:getSynchronizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSynchronizationConfiguration, input, options)
end

function C:listAccessPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessPoints, input, options)
end

function C:listFileSystems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFileSystems, input, options)
end

function C:listMountTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMountTargets, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putFileSystemPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFileSystemPolicy, input, options)
end

function C:putSynchronizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSynchronizationConfiguration, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateMountTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMountTarget, input, options)
end

return M
