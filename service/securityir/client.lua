



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("securityir.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("securityir.schemas")
local traits = require("smithy.traits")
local types = require("securityir.types")
local sdk_defaults = require("aws.sdk_defaults")






























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SecurityIncidentResponse"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "security-ir", signing_region = c.region } }
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

function C:batchGetMemberAccountDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetMemberAccountDetails, input, options)
end

function C:cancelMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMembership, input, options)
end

function C:closeCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CloseCase, input, options)
end

function C:createCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCase, input, options)
end

function C:createCaseComment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCaseComment, input, options)
end

function C:createMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMembership, input, options)
end

function C:getCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCase, input, options)
end

function C:getCaseAttachmentDownloadUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCaseAttachmentDownloadUrl, input, options)
end

function C:getCaseAttachmentUploadUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCaseAttachmentUploadUrl, input, options)
end

function C:getMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMembership, input, options)
end

function C:listCaseEdits(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCaseEdits, input, options)
end

function C:listCases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCases, input, options)
end

function C:listComments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComments, input, options)
end

function C:listInvestigations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvestigations, input, options)
end

function C:listMemberships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMemberships, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:sendFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendFeedback, input, options)
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

function C:updateCaseComment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCaseComment, input, options)
end

function C:updateCaseStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCaseStatus, input, options)
end

function C:updateMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMembership, input, options)
end

function C:updateResolverType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResolverType, input, options)
end

return M
