



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("kafkaconnect.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("kafkaconnect.schemas")
local traits = require("smithy.traits")
local types = require("kafkaconnect.types")
local sdk_defaults = require("aws.sdk_defaults")
























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "KafkaConnect"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kafkaconnect", signing_region = c.region } }
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

function C:createConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnector, input, options)
end

function C:createCustomPlugin(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomPlugin, input, options)
end

function C:createWorkerConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkerConfiguration, input, options)
end

function C:deleteConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnector, input, options)
end

function C:deleteCustomPlugin(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomPlugin, input, options)
end

function C:deleteWorkerConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkerConfiguration, input, options)
end

function C:describeConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnector, input, options)
end

function C:describeConnectorOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectorOperation, input, options)
end

function C:describeCustomPlugin(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomPlugin, input, options)
end

function C:describeWorkerConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkerConfiguration, input, options)
end

function C:listConnectorOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectorOperations, input, options)
end

function C:listConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectors, input, options)
end

function C:listCustomPlugins(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomPlugins, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWorkerConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkerConfigurations, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnector, input, options)
end

return M
