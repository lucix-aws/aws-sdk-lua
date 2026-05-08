



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("supplychain.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("supplychain.schemas")
local traits = require("smithy.traits")
local types = require("supplychain.types")
local sdk_defaults = require("aws.sdk_defaults")




































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "GalaxyPublicAPIGateway"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "scn", signing_region = c.region } }
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

function C:createBillOfMaterialsImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBillOfMaterialsImportJob, input, options)
end

function C:createDataIntegrationFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataIntegrationFlow, input, options)
end

function C:createDataLakeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataLakeDataset, input, options)
end

function C:createDataLakeNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataLakeNamespace, input, options)
end

function C:createInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstance, input, options)
end

function C:deleteDataIntegrationFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataIntegrationFlow, input, options)
end

function C:deleteDataLakeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataLakeDataset, input, options)
end

function C:deleteDataLakeNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataLakeNamespace, input, options)
end

function C:deleteInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstance, input, options)
end

function C:getBillOfMaterialsImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBillOfMaterialsImportJob, input, options)
end

function C:getDataIntegrationEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataIntegrationEvent, input, options)
end

function C:getDataIntegrationFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataIntegrationFlow, input, options)
end

function C:getDataIntegrationFlowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataIntegrationFlowExecution, input, options)
end

function C:getDataLakeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataLakeDataset, input, options)
end

function C:getDataLakeNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataLakeNamespace, input, options)
end

function C:getInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstance, input, options)
end

function C:listDataIntegrationEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataIntegrationEvents, input, options)
end

function C:listDataIntegrationFlowExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataIntegrationFlowExecutions, input, options)
end

function C:listDataIntegrationFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataIntegrationFlows, input, options)
end

function C:listDataLakeDatasets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataLakeDatasets, input, options)
end

function C:listDataLakeNamespaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataLakeNamespaces, input, options)
end

function C:listInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstances, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:sendDataIntegrationEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendDataIntegrationEvent, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDataIntegrationFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataIntegrationFlow, input, options)
end

function C:updateDataLakeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataLakeDataset, input, options)
end

function C:updateDataLakeNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataLakeNamespace, input, options)
end

function C:updateInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInstance, input, options)
end

return M
