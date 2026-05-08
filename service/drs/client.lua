



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("drs.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("drs.schemas")
local traits = require("smithy.traits")
local types = require("drs.types")
local sdk_defaults = require("aws.sdk_defaults")
























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ElasticDisasterRecoveryService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "drs", signing_region = c.region } }
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

function C:associateSourceNetworkStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSourceNetworkStack, input, options)
end

function C:createExtendedSourceServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExtendedSourceServer, input, options)
end

function C:createLaunchConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLaunchConfigurationTemplate, input, options)
end

function C:createReplicationConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplicationConfigurationTemplate, input, options)
end

function C:createSourceNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSourceNetwork, input, options)
end

function C:deleteJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJob, input, options)
end

function C:deleteLaunchAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLaunchAction, input, options)
end

function C:deleteLaunchConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLaunchConfigurationTemplate, input, options)
end

function C:deleteRecoveryInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecoveryInstance, input, options)
end

function C:deleteReplicationConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicationConfigurationTemplate, input, options)
end

function C:deleteSourceNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSourceNetwork, input, options)
end

function C:deleteSourceServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSourceServer, input, options)
end

function C:describeJobLogItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobLogItems, input, options)
end

function C:describeJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobs, input, options)
end

function C:describeLaunchConfigurationTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLaunchConfigurationTemplates, input, options)
end

function C:describeRecoveryInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecoveryInstances, input, options)
end

function C:describeRecoverySnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecoverySnapshots, input, options)
end

function C:describeReplicationConfigurationTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationConfigurationTemplates, input, options)
end

function C:describeSourceNetworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSourceNetworks, input, options)
end

function C:describeSourceServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSourceServers, input, options)
end

function C:disconnectRecoveryInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisconnectRecoveryInstance, input, options)
end

function C:disconnectSourceServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisconnectSourceServer, input, options)
end

function C:exportSourceNetworkCfnTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportSourceNetworkCfnTemplate, input, options)
end

function C:getFailbackReplicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFailbackReplicationConfiguration, input, options)
end

function C:getLaunchConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLaunchConfiguration, input, options)
end

function C:getReplicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReplicationConfiguration, input, options)
end

function C:initializeService(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitializeService, input, options)
end

function C:listExtensibleSourceServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExtensibleSourceServers, input, options)
end

function C:listLaunchActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLaunchActions, input, options)
end

function C:listStagingAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStagingAccounts, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putLaunchAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLaunchAction, input, options)
end

function C:retryDataReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetryDataReplication, input, options)
end

function C:reverseReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReverseReplication, input, options)
end

function C:startFailbackLaunch(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFailbackLaunch, input, options)
end

function C:startRecovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRecovery, input, options)
end

function C:startReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReplication, input, options)
end

function C:startSourceNetworkRecovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSourceNetworkRecovery, input, options)
end

function C:startSourceNetworkReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSourceNetworkReplication, input, options)
end

function C:stopFailback(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopFailback, input, options)
end

function C:stopReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopReplication, input, options)
end

function C:stopSourceNetworkReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopSourceNetworkReplication, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:terminateRecoveryInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateRecoveryInstances, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateFailbackReplicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFailbackReplicationConfiguration, input, options)
end

function C:updateLaunchConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLaunchConfiguration, input, options)
end

function C:updateLaunchConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLaunchConfigurationTemplate, input, options)
end

function C:updateReplicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReplicationConfiguration, input, options)
end

function C:updateReplicationConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReplicationConfigurationTemplate, input, options)
end

return M
