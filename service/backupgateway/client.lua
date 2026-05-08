



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("backupgateway.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("backupgateway.schemas")
local traits = require("smithy.traits")
local types = require("backupgateway.types")
local sdk_defaults = require("aws.sdk_defaults")































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "BackupOnPremises_v20210101"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "backup-gateway", signing_region = c.region } }
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

function C:associateGatewayToServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateGatewayToServer, input, options)
end

function C:createGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGateway, input, options)
end

function C:deleteGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGateway, input, options)
end

function C:deleteHypervisor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHypervisor, input, options)
end

function C:disassociateGatewayFromServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateGatewayFromServer, input, options)
end

function C:getBandwidthRateLimitSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBandwidthRateLimitSchedule, input, options)
end

function C:getGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGateway, input, options)
end

function C:getHypervisor(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHypervisor, input, options)
end

function C:getHypervisorPropertyMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHypervisorPropertyMappings, input, options)
end

function C:getVirtualMachine(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVirtualMachine, input, options)
end

function C:importHypervisorConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportHypervisorConfiguration, input, options)
end

function C:listGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGateways, input, options)
end

function C:listHypervisors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHypervisors, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVirtualMachines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVirtualMachines, input, options)
end

function C:putBandwidthRateLimitSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBandwidthRateLimitSchedule, input, options)
end

function C:putHypervisorPropertyMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutHypervisorPropertyMappings, input, options)
end

function C:putMaintenanceStartTime(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMaintenanceStartTime, input, options)
end

function C:startVirtualMachinesMetadataSync(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartVirtualMachinesMetadataSync, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testHypervisorConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestHypervisorConfiguration, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateGatewayInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGatewayInformation, input, options)
end

function C:updateGatewaySoftwareNow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGatewaySoftwareNow, input, options)
end

function C:updateHypervisor(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHypervisor, input, options)
end

return M
