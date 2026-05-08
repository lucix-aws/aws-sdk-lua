



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codestarnotifications.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("codestarnotifications.schemas")
local traits = require("smithy.traits")
local types = require("codestarnotifications.types")
local sdk_defaults = require("aws.sdk_defaults")



















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CodeStarNotifications_20191015"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codestar-notifications", signing_region = c.region } }
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

function C:createNotificationRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNotificationRule, input, options)
end

function C:deleteNotificationRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotificationRule, input, options)
end

function C:deleteTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTarget, input, options)
end

function C:describeNotificationRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotificationRule, input, options)
end

function C:listEventTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventTypes, input, options)
end

function C:listNotificationRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotificationRules, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargets, input, options)
end

function C:subscribe(input, options)
   return self:invokeOperation(schemas.Service, schemas.Subscribe, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:unsubscribe(input, options)
   return self:invokeOperation(schemas.Service, schemas.Unsubscribe, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateNotificationRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotificationRule, input, options)
end

return M
