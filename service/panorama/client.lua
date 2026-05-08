



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("panorama.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("panorama.schemas")
local traits = require("smithy.traits")
local types = require("panorama.types")
local sdk_defaults = require("aws.sdk_defaults")








































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "OmniCloudServiceLambda"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "panorama", signing_region = c.region } }
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

function C:createApplicationInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplicationInstance, input, options)
end

function C:createJobForDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJobForDevices, input, options)
end

function C:createNodeFromTemplateJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNodeFromTemplateJob, input, options)
end

function C:createPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePackage, input, options)
end

function C:createPackageImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePackageImportJob, input, options)
end

function C:deleteDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDevice, input, options)
end

function C:deletePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePackage, input, options)
end

function C:deregisterPackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterPackageVersion, input, options)
end

function C:describeApplicationInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplicationInstance, input, options)
end

function C:describeApplicationInstanceDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplicationInstanceDetails, input, options)
end

function C:describeDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDevice, input, options)
end

function C:describeDeviceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDeviceJob, input, options)
end

function C:describeNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNode, input, options)
end

function C:describeNodeFromTemplateJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNodeFromTemplateJob, input, options)
end

function C:describePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePackage, input, options)
end

function C:describePackageImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePackageImportJob, input, options)
end

function C:describePackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePackageVersion, input, options)
end

function C:listApplicationInstanceDependencies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationInstanceDependencies, input, options)
end

function C:listApplicationInstanceNodeInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationInstanceNodeInstances, input, options)
end

function C:listApplicationInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationInstances, input, options)
end

function C:listDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevices, input, options)
end

function C:listDevicesJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevicesJobs, input, options)
end

function C:listNodeFromTemplateJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNodeFromTemplateJobs, input, options)
end

function C:listNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNodes, input, options)
end

function C:listPackageImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackageImportJobs, input, options)
end

function C:listPackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackages, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:provisionDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.ProvisionDevice, input, options)
end

function C:registerPackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterPackageVersion, input, options)
end

function C:removeApplicationInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveApplicationInstance, input, options)
end

function C:signalApplicationInstanceNodeInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.SignalApplicationInstanceNodeInstances, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDeviceMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeviceMetadata, input, options)
end

return M
