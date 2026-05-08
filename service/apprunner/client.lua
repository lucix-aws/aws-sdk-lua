



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("apprunner.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("apprunner.schemas")
local traits = require("smithy.traits")
local types = require("apprunner.types")
local sdk_defaults = require("aws.sdk_defaults")











































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AppRunner"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "apprunner", signing_region = c.region } }
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

function C:associateCustomDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateCustomDomain, input, options)
end

function C:createAutoScalingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutoScalingConfiguration, input, options)
end

function C:createConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnection, input, options)
end

function C:createObservabilityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateObservabilityConfiguration, input, options)
end

function C:createService(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateService, input, options)
end

function C:createVpcConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcConnector, input, options)
end

function C:createVpcIngressConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcIngressConnection, input, options)
end

function C:deleteAutoScalingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAutoScalingConfiguration, input, options)
end

function C:deleteConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnection, input, options)
end

function C:deleteObservabilityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteObservabilityConfiguration, input, options)
end

function C:deleteService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteService, input, options)
end

function C:deleteVpcConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcConnector, input, options)
end

function C:deleteVpcIngressConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcIngressConnection, input, options)
end

function C:describeAutoScalingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAutoScalingConfiguration, input, options)
end

function C:describeCustomDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomDomains, input, options)
end

function C:describeObservabilityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeObservabilityConfiguration, input, options)
end

function C:describeService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeService, input, options)
end

function C:describeVpcConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcConnector, input, options)
end

function C:describeVpcIngressConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcIngressConnection, input, options)
end

function C:disassociateCustomDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateCustomDomain, input, options)
end

function C:listAutoScalingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutoScalingConfigurations, input, options)
end

function C:listConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnections, input, options)
end

function C:listObservabilityConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObservabilityConfigurations, input, options)
end

function C:listOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOperations, input, options)
end

function C:listServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServices, input, options)
end

function C:listServicesForAutoScalingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServicesForAutoScalingConfiguration, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVpcConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVpcConnectors, input, options)
end

function C:listVpcIngressConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVpcIngressConnections, input, options)
end

function C:pauseService(input, options)
   return self:invokeOperation(schemas.Service, schemas.PauseService, input, options)
end

function C:resumeService(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeService, input, options)
end

function C:startDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDeployment, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDefaultAutoScalingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDefaultAutoScalingConfiguration, input, options)
end

function C:updateService(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateService, input, options)
end

function C:updateVpcIngressConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVpcIngressConnection, input, options)
end

return M
