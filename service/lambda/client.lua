



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lambda.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("lambda.schemas")
local traits = require("smithy.traits")
local types = require("lambda.types")
local sdk_defaults = require("aws.sdk_defaults")



























































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSGirApiService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lambda", signing_region = c.region } }
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

function C:addLayerVersionPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddLayerVersionPermission, input, options)
end

function C:addPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddPermission, input, options)
end

function C:checkpointDurableExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckpointDurableExecution, input, options)
end

function C:createAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAlias, input, options)
end

function C:createCapacityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCapacityProvider, input, options)
end

function C:createCodeSigningConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCodeSigningConfig, input, options)
end

function C:createEventSourceMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventSourceMapping, input, options)
end

function C:createFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFunction, input, options)
end

function C:createFunctionUrlConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFunctionUrlConfig, input, options)
end

function C:deleteAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlias, input, options)
end

function C:deleteCapacityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCapacityProvider, input, options)
end

function C:deleteCodeSigningConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCodeSigningConfig, input, options)
end

function C:deleteEventSourceMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventSourceMapping, input, options)
end

function C:deleteFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFunction, input, options)
end

function C:deleteFunctionCodeSigningConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFunctionCodeSigningConfig, input, options)
end

function C:deleteFunctionConcurrency(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFunctionConcurrency, input, options)
end

function C:deleteFunctionEventInvokeConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFunctionEventInvokeConfig, input, options)
end

function C:deleteFunctionUrlConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFunctionUrlConfig, input, options)
end

function C:deleteLayerVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLayerVersion, input, options)
end

function C:deleteProvisionedConcurrencyConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProvisionedConcurrencyConfig, input, options)
end

function C:getAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountSettings, input, options)
end

function C:getAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAlias, input, options)
end

function C:getCapacityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapacityProvider, input, options)
end

function C:getCodeSigningConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCodeSigningConfig, input, options)
end

function C:getDurableExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDurableExecution, input, options)
end

function C:getDurableExecutionHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDurableExecutionHistory, input, options)
end

function C:getDurableExecutionState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDurableExecutionState, input, options)
end

function C:getEventSourceMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventSourceMapping, input, options)
end

function C:getFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunction, input, options)
end

function C:getFunctionCodeSigningConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunctionCodeSigningConfig, input, options)
end

function C:getFunctionConcurrency(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunctionConcurrency, input, options)
end

function C:getFunctionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunctionConfiguration, input, options)
end

function C:getFunctionEventInvokeConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunctionEventInvokeConfig, input, options)
end

function C:getFunctionRecursionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunctionRecursionConfig, input, options)
end

function C:getFunctionScalingConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunctionScalingConfig, input, options)
end

function C:getFunctionUrlConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunctionUrlConfig, input, options)
end

function C:getLayerVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLayerVersion, input, options)
end

function C:getLayerVersionByArn(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLayerVersionByArn, input, options)
end

function C:getLayerVersionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLayerVersionPolicy, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:getProvisionedConcurrencyConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProvisionedConcurrencyConfig, input, options)
end

function C:getRuntimeManagementConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRuntimeManagementConfig, input, options)
end

function C:invoke(input, options)
   return self:invokeOperation(schemas.Service, schemas.Invoke, input, options)
end

function C:invokeAsync(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeAsync, input, options)
end

function C:invokeWithResponseStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeWithResponseStream, input, options)
end

function C:listAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAliases, input, options)
end

function C:listCapacityProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCapacityProviders, input, options)
end

function C:listCodeSigningConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCodeSigningConfigs, input, options)
end

function C:listDurableExecutionsByFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDurableExecutionsByFunction, input, options)
end

function C:listEventSourceMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventSourceMappings, input, options)
end

function C:listFunctionEventInvokeConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFunctionEventInvokeConfigs, input, options)
end

function C:listFunctions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFunctions, input, options)
end

function C:listFunctionsByCodeSigningConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFunctionsByCodeSigningConfig, input, options)
end

function C:listFunctionUrlConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFunctionUrlConfigs, input, options)
end

function C:listFunctionVersionsByCapacityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFunctionVersionsByCapacityProvider, input, options)
end

function C:listLayers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLayers, input, options)
end

function C:listLayerVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLayerVersions, input, options)
end

function C:listProvisionedConcurrencyConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProvisionedConcurrencyConfigs, input, options)
end

function C:listTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTags, input, options)
end

function C:listVersionsByFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVersionsByFunction, input, options)
end

function C:publishLayerVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishLayerVersion, input, options)
end

function C:publishVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishVersion, input, options)
end

function C:putFunctionCodeSigningConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFunctionCodeSigningConfig, input, options)
end

function C:putFunctionConcurrency(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFunctionConcurrency, input, options)
end

function C:putFunctionEventInvokeConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFunctionEventInvokeConfig, input, options)
end

function C:putFunctionRecursionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFunctionRecursionConfig, input, options)
end

function C:putFunctionScalingConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFunctionScalingConfig, input, options)
end

function C:putProvisionedConcurrencyConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutProvisionedConcurrencyConfig, input, options)
end

function C:putRuntimeManagementConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRuntimeManagementConfig, input, options)
end

function C:removeLayerVersionPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveLayerVersionPermission, input, options)
end

function C:removePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemovePermission, input, options)
end

function C:sendDurableExecutionCallbackFailure(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendDurableExecutionCallbackFailure, input, options)
end

function C:sendDurableExecutionCallbackHeartbeat(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendDurableExecutionCallbackHeartbeat, input, options)
end

function C:sendDurableExecutionCallbackSuccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendDurableExecutionCallbackSuccess, input, options)
end

function C:stopDurableExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDurableExecution, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAlias, input, options)
end

function C:updateCapacityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCapacityProvider, input, options)
end

function C:updateCodeSigningConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCodeSigningConfig, input, options)
end

function C:updateEventSourceMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventSourceMapping, input, options)
end

function C:updateFunctionCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFunctionCode, input, options)
end

function C:updateFunctionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFunctionConfiguration, input, options)
end

function C:updateFunctionEventInvokeConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFunctionEventInvokeConfig, input, options)
end

function C:updateFunctionUrlConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFunctionUrlConfig, input, options)
end

return M
