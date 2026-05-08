



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ssmcontacts.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("ssmcontacts.schemas")
local traits = require("smithy.traits")
local types = require("ssmcontacts.types")
local sdk_defaults = require("aws.sdk_defaults")













































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SSMContacts"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ssm-contacts", signing_region = c.region } }
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

function C:acceptPage(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptPage, input, options)
end

function C:activateContactChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.ActivateContactChannel, input, options)
end

function C:createContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContact, input, options)
end

function C:createContactChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContactChannel, input, options)
end

function C:createRotation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRotation, input, options)
end

function C:createRotationOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRotationOverride, input, options)
end

function C:deactivateContactChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeactivateContactChannel, input, options)
end

function C:deleteContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContact, input, options)
end

function C:deleteContactChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContactChannel, input, options)
end

function C:deleteRotation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRotation, input, options)
end

function C:deleteRotationOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRotationOverride, input, options)
end

function C:describeEngagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEngagement, input, options)
end

function C:describePage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePage, input, options)
end

function C:getContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContact, input, options)
end

function C:getContactChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContactChannel, input, options)
end

function C:getContactPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContactPolicy, input, options)
end

function C:getRotation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRotation, input, options)
end

function C:getRotationOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRotationOverride, input, options)
end

function C:listContactChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContactChannels, input, options)
end

function C:listContacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContacts, input, options)
end

function C:listEngagements(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEngagements, input, options)
end

function C:listPageReceipts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPageReceipts, input, options)
end

function C:listPageResolutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPageResolutions, input, options)
end

function C:listPagesByContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPagesByContact, input, options)
end

function C:listPagesByEngagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPagesByEngagement, input, options)
end

function C:listPreviewRotationShifts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPreviewRotationShifts, input, options)
end

function C:listRotationOverrides(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRotationOverrides, input, options)
end

function C:listRotations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRotations, input, options)
end

function C:listRotationShifts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRotationShifts, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putContactPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutContactPolicy, input, options)
end

function C:sendActivationCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendActivationCode, input, options)
end

function C:startEngagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEngagement, input, options)
end

function C:stopEngagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopEngagement, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContact, input, options)
end

function C:updateContactChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactChannel, input, options)
end

function C:updateRotation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRotation, input, options)
end

return M
