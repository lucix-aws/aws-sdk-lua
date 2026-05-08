



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("amplifyuibuilder.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("amplifyuibuilder.schemas")
local traits = require("smithy.traits")
local types = require("amplifyuibuilder.types")
local sdk_defaults = require("aws.sdk_defaults")


































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmplifyUIBuilder"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "amplifyuibuilder", signing_region = c.region } }
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

function C:createComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateComponent, input, options)
end

function C:createForm(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateForm, input, options)
end

function C:createTheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTheme, input, options)
end

function C:deleteComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteComponent, input, options)
end

function C:deleteForm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteForm, input, options)
end

function C:deleteTheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTheme, input, options)
end

function C:exchangeCodeForToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExchangeCodeForToken, input, options)
end

function C:exportComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportComponents, input, options)
end

function C:exportForms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportForms, input, options)
end

function C:exportThemes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportThemes, input, options)
end

function C:getCodegenJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCodegenJob, input, options)
end

function C:getComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComponent, input, options)
end

function C:getForm(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetForm, input, options)
end

function C:getMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetadata, input, options)
end

function C:getTheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTheme, input, options)
end

function C:listCodegenJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCodegenJobs, input, options)
end

function C:listComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComponents, input, options)
end

function C:listForms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListForms, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listThemes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThemes, input, options)
end

function C:putMetadataFlag(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMetadataFlag, input, options)
end

function C:refreshToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.RefreshToken, input, options)
end

function C:startCodegenJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCodegenJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateComponent, input, options)
end

function C:updateForm(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateForm, input, options)
end

function C:updateTheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTheme, input, options)
end

return M
