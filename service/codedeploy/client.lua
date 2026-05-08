



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codedeploy.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("codedeploy.schemas")
local traits = require("smithy.traits")
local types = require("codedeploy.types")
local sdk_defaults = require("aws.sdk_defaults")





















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CodeDeploy_20141006"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codedeploy", signing_region = c.region } }
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

function C:addTagsToOnPremisesInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTagsToOnPremisesInstances, input, options)
end

function C:batchGetApplicationRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetApplicationRevisions, input, options)
end

function C:batchGetApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetApplications, input, options)
end

function C:batchGetDeploymentGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetDeploymentGroups, input, options)
end

function C:batchGetDeploymentInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetDeploymentInstances, input, options)
end

function C:batchGetDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetDeployments, input, options)
end

function C:batchGetDeploymentTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetDeploymentTargets, input, options)
end

function C:batchGetOnPremisesInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetOnPremisesInstances, input, options)
end

function C:continueDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.ContinueDeployment, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeployment, input, options)
end

function C:createDeploymentConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeploymentConfig, input, options)
end

function C:createDeploymentGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeploymentGroup, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteDeploymentConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeploymentConfig, input, options)
end

function C:deleteDeploymentGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeploymentGroup, input, options)
end

function C:deleteGitHubAccountToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGitHubAccountToken, input, options)
end

function C:deleteResourcesByExternalId(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcesByExternalId, input, options)
end

function C:deregisterOnPremisesInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterOnPremisesInstance, input, options)
end

function C:getApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplication, input, options)
end

function C:getApplicationRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationRevision, input, options)
end

function C:getDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployment, input, options)
end

function C:getDeploymentConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeploymentConfig, input, options)
end

function C:getDeploymentGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeploymentGroup, input, options)
end

function C:getDeploymentInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeploymentInstance, input, options)
end

function C:getDeploymentTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeploymentTarget, input, options)
end

function C:getOnPremisesInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOnPremisesInstance, input, options)
end

function C:listApplicationRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationRevisions, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listDeploymentConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeploymentConfigs, input, options)
end

function C:listDeploymentGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeploymentGroups, input, options)
end

function C:listDeploymentInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeploymentInstances, input, options)
end

function C:listDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeployments, input, options)
end

function C:listDeploymentTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeploymentTargets, input, options)
end

function C:listGitHubAccountTokenNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGitHubAccountTokenNames, input, options)
end

function C:listOnPremisesInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOnPremisesInstances, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putLifecycleEventHookExecutionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLifecycleEventHookExecutionStatus, input, options)
end

function C:registerApplicationRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterApplicationRevision, input, options)
end

function C:registerOnPremisesInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterOnPremisesInstance, input, options)
end

function C:removeTagsFromOnPremisesInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromOnPremisesInstances, input, options)
end

function C:skipWaitTimeForInstanceTermination(input, options)
   return self:invokeOperation(schemas.Service, schemas.SkipWaitTimeForInstanceTermination, input, options)
end

function C:stopDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDeployment, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateDeploymentGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeploymentGroup, input, options)
end

return M
