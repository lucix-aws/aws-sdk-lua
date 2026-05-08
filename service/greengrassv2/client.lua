



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("greengrassv2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("greengrassv2.schemas")
local traits = require("smithy.traits")
local types = require("greengrassv2.types")
local sdk_defaults = require("aws.sdk_defaults")



































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "GreengrassV2"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "greengrass", signing_region = c.region } }
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

function C:associateServiceRoleToAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateServiceRoleToAccount, input, options)
end

function C:batchAssociateClientDeviceWithCoreDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateClientDeviceWithCoreDevice, input, options)
end

function C:batchDisassociateClientDeviceFromCoreDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateClientDeviceFromCoreDevice, input, options)
end

function C:cancelDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelDeployment, input, options)
end

function C:createComponentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateComponentVersion, input, options)
end

function C:createDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeployment, input, options)
end

function C:deleteComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteComponent, input, options)
end

function C:deleteCoreDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCoreDevice, input, options)
end

function C:deleteDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeployment, input, options)
end

function C:describeComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComponent, input, options)
end

function C:disassociateServiceRoleFromAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateServiceRoleFromAccount, input, options)
end

function C:getComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComponent, input, options)
end

function C:getComponentVersionArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComponentVersionArtifact, input, options)
end

function C:getConnectivityInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectivityInfo, input, options)
end

function C:getCoreDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCoreDevice, input, options)
end

function C:getDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployment, input, options)
end

function C:getServiceRoleForAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceRoleForAccount, input, options)
end

function C:listClientDevicesAssociatedWithCoreDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClientDevicesAssociatedWithCoreDevice, input, options)
end

function C:listComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComponents, input, options)
end

function C:listComponentVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComponentVersions, input, options)
end

function C:listCoreDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCoreDevices, input, options)
end

function C:listDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeployments, input, options)
end

function C:listEffectiveDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEffectiveDeployments, input, options)
end

function C:listInstalledComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstalledComponents, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:resolveComponentCandidates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResolveComponentCandidates, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateConnectivityInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectivityInfo, input, options)
end

return M
