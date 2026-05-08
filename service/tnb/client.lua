



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("tnb.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("tnb.schemas")
local traits = require("smithy.traits")
local types = require("tnb.types")
local sdk_defaults = require("aws.sdk_defaults")







































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "TNB"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "tnb", signing_region = c.region } }
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

function C:cancelSolNetworkOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelSolNetworkOperation, input, options)
end

function C:createSolFunctionPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSolFunctionPackage, input, options)
end

function C:createSolNetworkInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSolNetworkInstance, input, options)
end

function C:createSolNetworkPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSolNetworkPackage, input, options)
end

function C:deleteSolFunctionPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSolFunctionPackage, input, options)
end

function C:deleteSolNetworkInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSolNetworkInstance, input, options)
end

function C:deleteSolNetworkPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSolNetworkPackage, input, options)
end

function C:getSolFunctionInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSolFunctionInstance, input, options)
end

function C:getSolFunctionPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSolFunctionPackage, input, options)
end

function C:getSolFunctionPackageContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSolFunctionPackageContent, input, options)
end

function C:getSolFunctionPackageDescriptor(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSolFunctionPackageDescriptor, input, options)
end

function C:getSolNetworkInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSolNetworkInstance, input, options)
end

function C:getSolNetworkOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSolNetworkOperation, input, options)
end

function C:getSolNetworkPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSolNetworkPackage, input, options)
end

function C:getSolNetworkPackageContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSolNetworkPackageContent, input, options)
end

function C:getSolNetworkPackageDescriptor(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSolNetworkPackageDescriptor, input, options)
end

function C:instantiateSolNetworkInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.InstantiateSolNetworkInstance, input, options)
end

function C:listSolFunctionInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSolFunctionInstances, input, options)
end

function C:listSolFunctionPackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSolFunctionPackages, input, options)
end

function C:listSolNetworkInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSolNetworkInstances, input, options)
end

function C:listSolNetworkOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSolNetworkOperations, input, options)
end

function C:listSolNetworkPackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSolNetworkPackages, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putSolFunctionPackageContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSolFunctionPackageContent, input, options)
end

function C:putSolNetworkPackageContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSolNetworkPackageContent, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:terminateSolNetworkInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateSolNetworkInstance, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateSolFunctionPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSolFunctionPackage, input, options)
end

function C:updateSolNetworkInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSolNetworkInstance, input, options)
end

function C:updateSolNetworkPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSolNetworkPackage, input, options)
end

function C:validateSolFunctionPackageContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateSolFunctionPackageContent, input, options)
end

function C:validateSolNetworkPackageContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateSolNetworkPackageContent, input, options)
end

return M
