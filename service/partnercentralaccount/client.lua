



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("partnercentralaccount.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("partnercentralaccount.schemas")
local traits = require("smithy.traits")
local types = require("partnercentralaccount.types")
local sdk_defaults = require("aws.sdk_defaults")



































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "PartnerCentralAccount"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "partnercentral-account", signing_region = c.region } }
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

function C:acceptConnectionInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptConnectionInvitation, input, options)
end

function C:associateAwsTrainingCertificationEmailDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAwsTrainingCertificationEmailDomain, input, options)
end

function C:cancelConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelConnection, input, options)
end

function C:cancelConnectionInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelConnectionInvitation, input, options)
end

function C:cancelProfileUpdateTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelProfileUpdateTask, input, options)
end

function C:createConnectionInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectionInvitation, input, options)
end

function C:createPartner(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePartner, input, options)
end

function C:disassociateAwsTrainingCertificationEmailDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAwsTrainingCertificationEmailDomain, input, options)
end

function C:getAllianceLeadContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAllianceLeadContact, input, options)
end

function C:getConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnection, input, options)
end

function C:getConnectionInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectionInvitation, input, options)
end

function C:getConnectionPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectionPreferences, input, options)
end

function C:getPartner(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPartner, input, options)
end

function C:getProfileUpdateTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfileUpdateTask, input, options)
end

function C:getProfileVisibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfileVisibility, input, options)
end

function C:getVerification(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVerification, input, options)
end

function C:listConnectionInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectionInvitations, input, options)
end

function C:listConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnections, input, options)
end

function C:listPartners(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPartners, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putAllianceLeadContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAllianceLeadContact, input, options)
end

function C:putProfileVisibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutProfileVisibility, input, options)
end

function C:rejectConnectionInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectConnectionInvitation, input, options)
end

function C:sendEmailVerificationCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendEmailVerificationCode, input, options)
end

function C:startProfileUpdateTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartProfileUpdateTask, input, options)
end

function C:startVerification(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartVerification, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateConnectionPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectionPreferences, input, options)
end

return M
