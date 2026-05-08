



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("appfabric.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("appfabric.schemas")
local traits = require("smithy.traits")
local types = require("appfabric.types")
local sdk_defaults = require("aws.sdk_defaults")
































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "FabricFrontEndService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appfabric", signing_region = c.region } }
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

function C:batchGetUserAccessTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetUserAccessTasks, input, options)
end

function C:connectAppAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConnectAppAuthorization, input, options)
end

function C:createAppAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppAuthorization, input, options)
end

function C:createAppBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppBundle, input, options)
end

function C:createIngestion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIngestion, input, options)
end

function C:createIngestionDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIngestionDestination, input, options)
end

function C:deleteAppAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppAuthorization, input, options)
end

function C:deleteAppBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppBundle, input, options)
end

function C:deleteIngestion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIngestion, input, options)
end

function C:deleteIngestionDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIngestionDestination, input, options)
end

function C:getAppAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAppAuthorization, input, options)
end

function C:getAppBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAppBundle, input, options)
end

function C:getIngestion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIngestion, input, options)
end

function C:getIngestionDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIngestionDestination, input, options)
end

function C:listAppAuthorizations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppAuthorizations, input, options)
end

function C:listAppBundles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppBundles, input, options)
end

function C:listIngestionDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIngestionDestinations, input, options)
end

function C:listIngestions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIngestions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startIngestion(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartIngestion, input, options)
end

function C:startUserAccessTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartUserAccessTasks, input, options)
end

function C:stopIngestion(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopIngestion, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAppAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppAuthorization, input, options)
end

function C:updateIngestionDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIngestionDestination, input, options)
end

return M
