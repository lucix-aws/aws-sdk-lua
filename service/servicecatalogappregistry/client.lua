



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("servicecatalogappregistry.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("servicecatalogappregistry.schemas")
local traits = require("smithy.traits")
local types = require("servicecatalogappregistry.types")
local sdk_defaults = require("aws.sdk_defaults")






























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWS242AppRegistry"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "servicecatalog", signing_region = c.region } }
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

function C:associateAttributeGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAttributeGroup, input, options)
end

function C:associateResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateResource, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createAttributeGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAttributeGroup, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteAttributeGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAttributeGroup, input, options)
end

function C:disassociateAttributeGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAttributeGroup, input, options)
end

function C:disassociateResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateResource, input, options)
end

function C:getApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplication, input, options)
end

function C:getAssociatedResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssociatedResource, input, options)
end

function C:getAttributeGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAttributeGroup, input, options)
end

function C:getConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguration, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listAssociatedAttributeGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedAttributeGroups, input, options)
end

function C:listAssociatedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedResources, input, options)
end

function C:listAttributeGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttributeGroups, input, options)
end

function C:listAttributeGroupsForApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttributeGroupsForApplication, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfiguration, input, options)
end

function C:syncResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.SyncResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateAttributeGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAttributeGroup, input, options)
end

return M
