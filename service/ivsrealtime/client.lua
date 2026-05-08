



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ivsrealtime.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("ivsrealtime.schemas")
local traits = require("smithy.traits")
local types = require("ivsrealtime.types")
local sdk_defaults = require("aws.sdk_defaults")













































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonInteractiveVideoServiceRealTime"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ivs", signing_region = c.region } }
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

function C:createEncoderConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEncoderConfiguration, input, options)
end

function C:createIngestConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIngestConfiguration, input, options)
end

function C:createParticipantToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateParticipantToken, input, options)
end

function C:createStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStage, input, options)
end

function C:createStorageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStorageConfiguration, input, options)
end

function C:deleteEncoderConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEncoderConfiguration, input, options)
end

function C:deleteIngestConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIngestConfiguration, input, options)
end

function C:deletePublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePublicKey, input, options)
end

function C:deleteStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStage, input, options)
end

function C:deleteStorageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStorageConfiguration, input, options)
end

function C:disconnectParticipant(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisconnectParticipant, input, options)
end

function C:getComposition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComposition, input, options)
end

function C:getEncoderConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEncoderConfiguration, input, options)
end

function C:getIngestConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIngestConfiguration, input, options)
end

function C:getParticipant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetParticipant, input, options)
end

function C:getPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPublicKey, input, options)
end

function C:getStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStage, input, options)
end

function C:getStageSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStageSession, input, options)
end

function C:getStorageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStorageConfiguration, input, options)
end

function C:importPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportPublicKey, input, options)
end

function C:listCompositions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCompositions, input, options)
end

function C:listEncoderConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEncoderConfigurations, input, options)
end

function C:listIngestConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIngestConfigurations, input, options)
end

function C:listParticipantEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListParticipantEvents, input, options)
end

function C:listParticipantReplicas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListParticipantReplicas, input, options)
end

function C:listParticipants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListParticipants, input, options)
end

function C:listPublicKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPublicKeys, input, options)
end

function C:listStages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStages, input, options)
end

function C:listStageSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStageSessions, input, options)
end

function C:listStorageConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStorageConfigurations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startComposition(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartComposition, input, options)
end

function C:startParticipantReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartParticipantReplication, input, options)
end

function C:stopComposition(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopComposition, input, options)
end

function C:stopParticipantReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopParticipantReplication, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateIngestConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIngestConfiguration, input, options)
end

function C:updateStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStage, input, options)
end

return M
