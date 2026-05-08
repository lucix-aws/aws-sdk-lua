



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("chimesdkidentity.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("chimesdkidentity.schemas")
local traits = require("smithy.traits")
local types = require("chimesdkidentity.types")
local sdk_defaults = require("aws.sdk_defaults")




































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ChimeIdentityService"
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

function C:createAppInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppInstance, input, options)
end

function C:createAppInstanceAdmin(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppInstanceAdmin, input, options)
end

function C:createAppInstanceBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppInstanceBot, input, options)
end

function C:createAppInstanceUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppInstanceUser, input, options)
end

function C:deleteAppInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppInstance, input, options)
end

function C:deleteAppInstanceAdmin(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppInstanceAdmin, input, options)
end

function C:deleteAppInstanceBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppInstanceBot, input, options)
end

function C:deleteAppInstanceUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppInstanceUser, input, options)
end

function C:deregisterAppInstanceUserEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterAppInstanceUserEndpoint, input, options)
end

function C:describeAppInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppInstance, input, options)
end

function C:describeAppInstanceAdmin(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppInstanceAdmin, input, options)
end

function C:describeAppInstanceBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppInstanceBot, input, options)
end

function C:describeAppInstanceUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppInstanceUser, input, options)
end

function C:describeAppInstanceUserEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppInstanceUserEndpoint, input, options)
end

function C:getAppInstanceRetentionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAppInstanceRetentionSettings, input, options)
end

function C:listAppInstanceAdmins(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppInstanceAdmins, input, options)
end

function C:listAppInstanceBots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppInstanceBots, input, options)
end

function C:listAppInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppInstances, input, options)
end

function C:listAppInstanceUserEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppInstanceUserEndpoints, input, options)
end

function C:listAppInstanceUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppInstanceUsers, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putAppInstanceRetentionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAppInstanceRetentionSettings, input, options)
end

function C:putAppInstanceUserExpirationSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAppInstanceUserExpirationSettings, input, options)
end

function C:registerAppInstanceUserEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterAppInstanceUserEndpoint, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAppInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppInstance, input, options)
end

function C:updateAppInstanceBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppInstanceBot, input, options)
end

function C:updateAppInstanceUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppInstanceUser, input, options)
end

function C:updateAppInstanceUserEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppInstanceUserEndpoint, input, options)
end

return M
