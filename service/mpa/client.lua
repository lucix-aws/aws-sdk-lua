



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mpa.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mpa.schemas")
local traits = require("smithy.traits")
local types = require("mpa.types")
local sdk_defaults = require("aws.sdk_defaults")




























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSFluffyCoreService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mpa", signing_region = c.region } }
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

function C:cancelSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelSession, input, options)
end

function C:createApprovalTeam(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApprovalTeam, input, options)
end

function C:createIdentitySource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIdentitySource, input, options)
end

function C:deleteIdentitySource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentitySource, input, options)
end

function C:deleteInactiveApprovalTeamVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInactiveApprovalTeamVersion, input, options)
end

function C:getApprovalTeam(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApprovalTeam, input, options)
end

function C:getIdentitySource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentitySource, input, options)
end

function C:getPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicyVersion, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSession, input, options)
end

function C:listApprovalTeams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApprovalTeams, input, options)
end

function C:listIdentitySources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentitySources, input, options)
end

function C:listPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicies, input, options)
end

function C:listPolicyVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyVersions, input, options)
end

function C:listResourcePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourcePolicies, input, options)
end

function C:listSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startActiveApprovalTeamDeletion(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartActiveApprovalTeamDeletion, input, options)
end

function C:startApprovalTeamBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartApprovalTeamBaseline, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApprovalTeam(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApprovalTeam, input, options)
end

return M
