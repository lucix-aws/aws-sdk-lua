



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("elasticbeanstalk.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("elasticbeanstalk.schemas")
local traits = require("smithy.traits")
local types = require("elasticbeanstalk.types")
local sdk_defaults = require("aws.sdk_defaults")





















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSElasticBeanstalkService"
   if not c.protocol then c.protocol = query_protocol.new("awsQuery") end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "elasticbeanstalk", signing_region = c.region } }
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

function C:abortEnvironmentUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.AbortEnvironmentUpdate, input, options)
end

function C:applyEnvironmentManagedAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ApplyEnvironmentManagedAction, input, options)
end

function C:associateEnvironmentOperationsRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateEnvironmentOperationsRole, input, options)
end

function C:checkDNSAvailability(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckDNSAvailability, input, options)
end

function C:composeEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ComposeEnvironments, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createApplicationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplicationVersion, input, options)
end

function C:createConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationTemplate, input, options)
end

function C:createEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironment, input, options)
end

function C:createPlatformVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePlatformVersion, input, options)
end

function C:createStorageLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStorageLocation, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteApplicationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplicationVersion, input, options)
end

function C:deleteConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationTemplate, input, options)
end

function C:deleteEnvironmentConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironmentConfiguration, input, options)
end

function C:deletePlatformVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePlatformVersion, input, options)
end

function C:describeAccountAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountAttributes, input, options)
end

function C:describeApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplications, input, options)
end

function C:describeApplicationVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplicationVersions, input, options)
end

function C:describeConfigurationOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationOptions, input, options)
end

function C:describeConfigurationSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationSettings, input, options)
end

function C:describeEnvironmentHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEnvironmentHealth, input, options)
end

function C:describeEnvironmentManagedActionHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEnvironmentManagedActionHistory, input, options)
end

function C:describeEnvironmentManagedActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEnvironmentManagedActions, input, options)
end

function C:describeEnvironmentResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEnvironmentResources, input, options)
end

function C:describeEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEnvironments, input, options)
end

function C:describeEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEvents, input, options)
end

function C:describeInstancesHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstancesHealth, input, options)
end

function C:describePlatformVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePlatformVersion, input, options)
end

function C:disassociateEnvironmentOperationsRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateEnvironmentOperationsRole, input, options)
end

function C:listAvailableSolutionStacks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAvailableSolutionStacks, input, options)
end

function C:listPlatformBranches(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlatformBranches, input, options)
end

function C:listPlatformVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlatformVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:rebuildEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebuildEnvironment, input, options)
end

function C:requestEnvironmentInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.RequestEnvironmentInfo, input, options)
end

function C:restartAppServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestartAppServer, input, options)
end

function C:retrieveEnvironmentInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetrieveEnvironmentInfo, input, options)
end

function C:swapEnvironmentCNAMEs(input, options)
   return self:invokeOperation(schemas.Service, schemas.SwapEnvironmentCNAMEs, input, options)
end

function C:terminateEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateEnvironment, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateApplicationResourceLifecycle(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplicationResourceLifecycle, input, options)
end

function C:updateApplicationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplicationVersion, input, options)
end

function C:updateConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationTemplate, input, options)
end

function C:updateEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironment, input, options)
end

function C:updateTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTagsForResource, input, options)
end

function C:validateConfigurationSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateConfigurationSettings, input, options)
end

return M
