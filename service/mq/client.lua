



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mq.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mq.schemas")
local traits = require("smithy.traits")
local types = require("mq.types")
local sdk_defaults = require("aws.sdk_defaults")






























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "mq"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mq", signing_region = c.region } }
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

function C:createBroker(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBroker, input, options)
end

function C:createConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguration, input, options)
end

function C:createTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTags, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:deleteBroker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBroker, input, options)
end

function C:deleteConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguration, input, options)
end

function C:deleteTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTags, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:describeBroker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBroker, input, options)
end

function C:describeBrokerEngineTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBrokerEngineTypes, input, options)
end

function C:describeBrokerInstanceOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBrokerInstanceOptions, input, options)
end

function C:describeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfiguration, input, options)
end

function C:describeConfigurationRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationRevision, input, options)
end

function C:describeUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUser, input, options)
end

function C:listBrokers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBrokers, input, options)
end

function C:listConfigurationRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationRevisions, input, options)
end

function C:listConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurations, input, options)
end

function C:listTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTags, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:promote(input, options)
   return self:invokeOperation(schemas.Service, schemas.Promote, input, options)
end

function C:rebootBroker(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootBroker, input, options)
end

function C:updateBroker(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBroker, input, options)
end

function C:updateConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfiguration, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

return M
