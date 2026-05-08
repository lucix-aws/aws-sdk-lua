



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("appflow.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("appflow.schemas")
local traits = require("smithy.traits")
local types = require("appflow.types")
local sdk_defaults = require("aws.sdk_defaults")































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SandstoneConfigurationServiceLambda"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appflow", signing_region = c.region } }
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

function C:cancelFlowExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelFlowExecutions, input, options)
end

function C:createConnectorProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectorProfile, input, options)
end

function C:createFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFlow, input, options)
end

function C:deleteConnectorProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectorProfile, input, options)
end

function C:deleteFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFlow, input, options)
end

function C:describeConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnector, input, options)
end

function C:describeConnectorEntity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectorEntity, input, options)
end

function C:describeConnectorProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectorProfiles, input, options)
end

function C:describeConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectors, input, options)
end

function C:describeFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFlow, input, options)
end

function C:describeFlowExecutionRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFlowExecutionRecords, input, options)
end

function C:listConnectorEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectorEntities, input, options)
end

function C:listConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectors, input, options)
end

function C:listFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlows, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:registerConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterConnector, input, options)
end

function C:resetConnectorMetadataCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetConnectorMetadataCache, input, options)
end

function C:startFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFlow, input, options)
end

function C:stopFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopFlow, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:unregisterConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnregisterConnector, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateConnectorProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectorProfile, input, options)
end

function C:updateConnectorRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectorRegistration, input, options)
end

function C:updateFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlow, input, options)
end

return M
