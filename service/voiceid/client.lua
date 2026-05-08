



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("voiceid.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("voiceid.schemas")
local traits = require("smithy.traits")
local types = require("voiceid.types")
local sdk_defaults = require("aws.sdk_defaults")



































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "VoiceID"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "voiceid", signing_region = c.region } }
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

function C:associateFraudster(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateFraudster, input, options)
end

function C:createDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomain, input, options)
end

function C:createWatchlist(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWatchlist, input, options)
end

function C:deleteDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomain, input, options)
end

function C:deleteFraudster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFraudster, input, options)
end

function C:deleteSpeaker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSpeaker, input, options)
end

function C:deleteWatchlist(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWatchlist, input, options)
end

function C:describeDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomain, input, options)
end

function C:describeFraudster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFraudster, input, options)
end

function C:describeFraudsterRegistrationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFraudsterRegistrationJob, input, options)
end

function C:describeSpeaker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSpeaker, input, options)
end

function C:describeSpeakerEnrollmentJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSpeakerEnrollmentJob, input, options)
end

function C:describeWatchlist(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWatchlist, input, options)
end

function C:disassociateFraudster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFraudster, input, options)
end

function C:evaluateSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.EvaluateSession, input, options)
end

function C:listDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomains, input, options)
end

function C:listFraudsterRegistrationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFraudsterRegistrationJobs, input, options)
end

function C:listFraudsters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFraudsters, input, options)
end

function C:listSpeakerEnrollmentJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSpeakerEnrollmentJobs, input, options)
end

function C:listSpeakers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSpeakers, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWatchlists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWatchlists, input, options)
end

function C:optOutSpeaker(input, options)
   return self:invokeOperation(schemas.Service, schemas.OptOutSpeaker, input, options)
end

function C:startFraudsterRegistrationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFraudsterRegistrationJob, input, options)
end

function C:startSpeakerEnrollmentJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSpeakerEnrollmentJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomain, input, options)
end

function C:updateWatchlist(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWatchlist, input, options)
end

return M
