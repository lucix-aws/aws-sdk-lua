



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("gameliftstreams.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("gameliftstreams.schemas")
local traits = require("smithy.traits")
local types = require("gameliftstreams.types")
local sdk_defaults = require("aws.sdk_defaults")






























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "GameLiftStreams"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "gameliftstreams", signing_region = c.region } }
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

function C:addStreamGroupLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddStreamGroupLocations, input, options)
end

function C:associateApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateApplications, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createStreamGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStreamGroup, input, options)
end

function C:createStreamSessionConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStreamSessionConnection, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteStreamGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStreamGroup, input, options)
end

function C:disassociateApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateApplications, input, options)
end

function C:exportStreamSessionFiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportStreamSessionFiles, input, options)
end

function C:getApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplication, input, options)
end

function C:getStreamGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStreamGroup, input, options)
end

function C:getStreamSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStreamSession, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listStreamGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreamGroups, input, options)
end

function C:listStreamSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreamSessions, input, options)
end

function C:listStreamSessionsByAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreamSessionsByAccount, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:removeStreamGroupLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveStreamGroupLocations, input, options)
end

function C:startStreamSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartStreamSession, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:terminateStreamSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateStreamSession, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateStreamGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStreamGroup, input, options)
end

return M
