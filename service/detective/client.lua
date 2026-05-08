



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("detective.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("detective.schemas")
local traits = require("smithy.traits")
local types = require("detective.types")
local sdk_defaults = require("aws.sdk_defaults")



































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonDetective"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "detective", signing_region = c.region } }
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

function C:acceptInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptInvitation, input, options)
end

function C:batchGetGraphMemberDatasources(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetGraphMemberDatasources, input, options)
end

function C:batchGetMembershipDatasources(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetMembershipDatasources, input, options)
end

function C:createGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGraph, input, options)
end

function C:createMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMembers, input, options)
end

function C:deleteGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGraph, input, options)
end

function C:deleteMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMembers, input, options)
end

function C:describeOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationConfiguration, input, options)
end

function C:disableOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableOrganizationAdminAccount, input, options)
end

function C:disassociateMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMembership, input, options)
end

function C:enableOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableOrganizationAdminAccount, input, options)
end

function C:getInvestigation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInvestigation, input, options)
end

function C:getMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMembers, input, options)
end

function C:listDatasourcePackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasourcePackages, input, options)
end

function C:listGraphs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGraphs, input, options)
end

function C:listIndicators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIndicators, input, options)
end

function C:listInvestigations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvestigations, input, options)
end

function C:listInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvitations, input, options)
end

function C:listMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMembers, input, options)
end

function C:listOrganizationAdminAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationAdminAccounts, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:rejectInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectInvitation, input, options)
end

function C:startInvestigation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartInvestigation, input, options)
end

function C:startMonitoringMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMonitoringMember, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDatasourcePackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDatasourcePackages, input, options)
end

function C:updateInvestigationState(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInvestigationState, input, options)
end

function C:updateOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOrganizationConfiguration, input, options)
end

return M
