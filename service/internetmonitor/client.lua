



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("internetmonitor.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("internetmonitor.schemas")
local traits = require("smithy.traits")
local types = require("internetmonitor.types")
local sdk_defaults = require("aws.sdk_defaults")






















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "InternetMonitor20210603"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "internetmonitor", signing_region = c.region } }
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

function C:createMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMonitor, input, options)
end

function C:deleteMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMonitor, input, options)
end

function C:getHealthEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHealthEvent, input, options)
end

function C:getInternetEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInternetEvent, input, options)
end

function C:getMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMonitor, input, options)
end

function C:getQueryResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueryResults, input, options)
end

function C:getQueryStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueryStatus, input, options)
end

function C:listHealthEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHealthEvents, input, options)
end

function C:listInternetEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInternetEvents, input, options)
end

function C:listMonitors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMonitors, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartQuery, input, options)
end

function C:stopQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopQuery, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMonitor, input, options)
end

return M
