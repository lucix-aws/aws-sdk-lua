



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("emr.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("emr.schemas")
local traits = require("smithy.traits")
local types = require("emr.types")
local sdk_defaults = require("aws.sdk_defaults")


































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ElasticMapReduce"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "elasticmapreduce", signing_region = c.region } }
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

function C:addInstanceFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddInstanceFleet, input, options)
end

function C:addInstanceGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddInstanceGroups, input, options)
end

function C:addJobFlowSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddJobFlowSteps, input, options)
end

function C:addTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTags, input, options)
end

function C:cancelSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelSteps, input, options)
end

function C:createPersistentAppUI(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePersistentAppUI, input, options)
end

function C:createSecurityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecurityConfiguration, input, options)
end

function C:createStudio(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStudio, input, options)
end

function C:createStudioSessionMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStudioSessionMapping, input, options)
end

function C:deleteSecurityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecurityConfiguration, input, options)
end

function C:deleteStudio(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStudio, input, options)
end

function C:deleteStudioSessionMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStudioSessionMapping, input, options)
end

function C:describeCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCluster, input, options)
end

function C:describeJobFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobFlows, input, options)
end

function C:describeNotebookExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotebookExecution, input, options)
end

function C:describePersistentAppUI(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePersistentAppUI, input, options)
end

function C:describeReleaseLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReleaseLabel, input, options)
end

function C:describeSecurityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecurityConfiguration, input, options)
end

function C:describeStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStep, input, options)
end

function C:describeStudio(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStudio, input, options)
end

function C:getAutoTerminationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutoTerminationPolicy, input, options)
end

function C:getBlockPublicAccessConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBlockPublicAccessConfiguration, input, options)
end

function C:getClusterSessionCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClusterSessionCredentials, input, options)
end

function C:getManagedScalingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedScalingPolicy, input, options)
end

function C:getOnClusterAppUIPresignedURL(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOnClusterAppUIPresignedURL, input, options)
end

function C:getPersistentAppUIPresignedURL(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPersistentAppUIPresignedURL, input, options)
end

function C:getStudioSessionMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStudioSessionMapping, input, options)
end

function C:listBootstrapActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBootstrapActions, input, options)
end

function C:listClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusters, input, options)
end

function C:listInstanceFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstanceFleets, input, options)
end

function C:listInstanceGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstanceGroups, input, options)
end

function C:listInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstances, input, options)
end

function C:listNotebookExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotebookExecutions, input, options)
end

function C:listReleaseLabels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReleaseLabels, input, options)
end

function C:listSecurityConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityConfigurations, input, options)
end

function C:listSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSteps, input, options)
end

function C:listStudios(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStudios, input, options)
end

function C:listStudioSessionMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStudioSessionMappings, input, options)
end

function C:listSupportedInstanceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSupportedInstanceTypes, input, options)
end

function C:modifyCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCluster, input, options)
end

function C:modifyInstanceFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceFleet, input, options)
end

function C:modifyInstanceGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceGroups, input, options)
end

function C:putAutoScalingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAutoScalingPolicy, input, options)
end

function C:putAutoTerminationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAutoTerminationPolicy, input, options)
end

function C:putBlockPublicAccessConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBlockPublicAccessConfiguration, input, options)
end

function C:putManagedScalingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutManagedScalingPolicy, input, options)
end

function C:removeAutoScalingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveAutoScalingPolicy, input, options)
end

function C:removeAutoTerminationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveAutoTerminationPolicy, input, options)
end

function C:removeManagedScalingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveManagedScalingPolicy, input, options)
end

function C:removeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTags, input, options)
end

function C:runJobFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.RunJobFlow, input, options)
end

function C:setKeepJobFlowAliveWhenNoSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetKeepJobFlowAliveWhenNoSteps, input, options)
end

function C:setTerminationProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetTerminationProtection, input, options)
end

function C:setUnhealthyNodeReplacement(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetUnhealthyNodeReplacement, input, options)
end

function C:setVisibleToAllUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetVisibleToAllUsers, input, options)
end

function C:startNotebookExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartNotebookExecution, input, options)
end

function C:stopNotebookExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopNotebookExecution, input, options)
end

function C:terminateJobFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateJobFlows, input, options)
end

function C:updateStudio(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStudio, input, options)
end

function C:updateStudioSessionMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStudioSessionMapping, input, options)
end

return M
