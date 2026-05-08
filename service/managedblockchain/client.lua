



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("managedblockchain.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("managedblockchain.schemas")
local traits = require("smithy.traits")
local types = require("managedblockchain.types")
local sdk_defaults = require("aws.sdk_defaults")

































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "TaigaWebService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "managedblockchain", signing_region = c.region } }
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

function C:createAccessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessor, input, options)
end

function C:createMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMember, input, options)
end

function C:createNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetwork, input, options)
end

function C:createNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNode, input, options)
end

function C:createProposal(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProposal, input, options)
end

function C:deleteAccessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessor, input, options)
end

function C:deleteMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMember, input, options)
end

function C:deleteNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNode, input, options)
end

function C:getAccessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessor, input, options)
end

function C:getMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMember, input, options)
end

function C:getNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetwork, input, options)
end

function C:getNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNode, input, options)
end

function C:getProposal(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProposal, input, options)
end

function C:listAccessors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessors, input, options)
end

function C:listInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvitations, input, options)
end

function C:listMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMembers, input, options)
end

function C:listNetworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworks, input, options)
end

function C:listNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNodes, input, options)
end

function C:listProposals(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProposals, input, options)
end

function C:listProposalVotes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProposalVotes, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:rejectInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectInvitation, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMember, input, options)
end

function C:updateNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNode, input, options)
end

function C:voteOnProposal(input, options)
   return self:invokeOperation(schemas.Service, schemas.VoteOnProposal, input, options)
end

return M
