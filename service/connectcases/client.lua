



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("connectcases.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("connectcases.schemas")
local traits = require("smithy.traits")
local types = require("connectcases.types")
local sdk_defaults = require("aws.sdk_defaults")

















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonConnectCases"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cases", signing_region = c.region } }
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

function C:batchGetCaseRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCaseRule, input, options)
end

function C:batchGetField(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetField, input, options)
end

function C:batchPutFieldOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchPutFieldOptions, input, options)
end

function C:createCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCase, input, options)
end

function C:createCaseRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCaseRule, input, options)
end

function C:createDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomain, input, options)
end

function C:createField(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateField, input, options)
end

function C:createLayout(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLayout, input, options)
end

function C:createRelatedItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRelatedItem, input, options)
end

function C:createTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTemplate, input, options)
end

function C:deleteCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCase, input, options)
end

function C:deleteCaseRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCaseRule, input, options)
end

function C:deleteDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomain, input, options)
end

function C:deleteField(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteField, input, options)
end

function C:deleteLayout(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLayout, input, options)
end

function C:deleteRelatedItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRelatedItem, input, options)
end

function C:deleteTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTemplate, input, options)
end

function C:getCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCase, input, options)
end

function C:getCaseAuditEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCaseAuditEvents, input, options)
end

function C:getCaseEventConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCaseEventConfiguration, input, options)
end

function C:getDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomain, input, options)
end

function C:getLayout(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLayout, input, options)
end

function C:getTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplate, input, options)
end

function C:listCaseRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCaseRules, input, options)
end

function C:listCasesForContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCasesForContact, input, options)
end

function C:listDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomains, input, options)
end

function C:listFieldOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFieldOptions, input, options)
end

function C:listFields(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFields, input, options)
end

function C:listLayouts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLayouts, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplates, input, options)
end

function C:putCaseEventConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutCaseEventConfiguration, input, options)
end

function C:searchAllRelatedItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchAllRelatedItems, input, options)
end

function C:searchCases(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchCases, input, options)
end

function C:searchRelatedItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchRelatedItems, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCase, input, options)
end

function C:updateCaseRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCaseRule, input, options)
end

function C:updateField(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateField, input, options)
end

function C:updateLayout(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLayout, input, options)
end

function C:updateRelatedItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRelatedItem, input, options)
end

function C:updateTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTemplate, input, options)
end

return M
