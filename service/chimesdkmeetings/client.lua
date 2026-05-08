



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("chimesdkmeetings.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("chimesdkmeetings.schemas")
local traits = require("smithy.traits")
local types = require("chimesdkmeetings.types")
local sdk_defaults = require("aws.sdk_defaults")






















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ChimeMeetingsSDKService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "chime", signing_region = c.region } }
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

function C:batchCreateAttendee(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateAttendee, input, options)
end

function C:batchUpdateAttendeeCapabilitiesExcept(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateAttendeeCapabilitiesExcept, input, options)
end

function C:createAttendee(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAttendee, input, options)
end

function C:createMeeting(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMeeting, input, options)
end

function C:createMeetingWithAttendees(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMeetingWithAttendees, input, options)
end

function C:deleteAttendee(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAttendee, input, options)
end

function C:deleteMeeting(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMeeting, input, options)
end

function C:getAttendee(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAttendee, input, options)
end

function C:getMeeting(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMeeting, input, options)
end

function C:listAttendees(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttendees, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startMeetingTranscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMeetingTranscription, input, options)
end

function C:stopMeetingTranscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopMeetingTranscription, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAttendeeCapabilities(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAttendeeCapabilities, input, options)
end

return M
