



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("autoscaling.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("autoscaling.schemas")
local traits = require("smithy.traits")
local types = require("autoscaling.types")
local sdk_defaults = require("aws.sdk_defaults")








































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AutoScaling_2011_01_01"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "autoscaling", signing_region = c.region } }
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

function C:attachInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachInstances, input, options)
end

function C:attachLoadBalancers(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachLoadBalancers, input, options)
end

function C:attachLoadBalancerTargetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachLoadBalancerTargetGroups, input, options)
end

function C:attachTrafficSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachTrafficSources, input, options)
end

function C:batchDeleteScheduledAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteScheduledAction, input, options)
end

function C:batchPutScheduledUpdateGroupAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchPutScheduledUpdateGroupAction, input, options)
end

function C:cancelInstanceRefresh(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelInstanceRefresh, input, options)
end

function C:completeLifecycleAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteLifecycleAction, input, options)
end

function C:createAutoScalingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutoScalingGroup, input, options)
end

function C:createLaunchConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLaunchConfiguration, input, options)
end

function C:createOrUpdateTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOrUpdateTags, input, options)
end

function C:deleteAutoScalingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAutoScalingGroup, input, options)
end

function C:deleteLaunchConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLaunchConfiguration, input, options)
end

function C:deleteLifecycleHook(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLifecycleHook, input, options)
end

function C:deleteNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotificationConfiguration, input, options)
end

function C:deletePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicy, input, options)
end

function C:deleteScheduledAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteScheduledAction, input, options)
end

function C:deleteTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTags, input, options)
end

function C:deleteWarmPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWarmPool, input, options)
end

function C:describeAccountLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountLimits, input, options)
end

function C:describeAdjustmentTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAdjustmentTypes, input, options)
end

function C:describeAutoScalingGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAutoScalingGroups, input, options)
end

function C:describeAutoScalingInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAutoScalingInstances, input, options)
end

function C:describeAutoScalingNotificationTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAutoScalingNotificationTypes, input, options)
end

function C:describeInstanceRefreshes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceRefreshes, input, options)
end

function C:describeLaunchConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLaunchConfigurations, input, options)
end

function C:describeLifecycleHooks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLifecycleHooks, input, options)
end

function C:describeLifecycleHookTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLifecycleHookTypes, input, options)
end

function C:describeLoadBalancers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoadBalancers, input, options)
end

function C:describeLoadBalancerTargetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoadBalancerTargetGroups, input, options)
end

function C:describeMetricCollectionTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetricCollectionTypes, input, options)
end

function C:describeNotificationConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotificationConfigurations, input, options)
end

function C:describePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePolicies, input, options)
end

function C:describeScalingActivities(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScalingActivities, input, options)
end

function C:describeScalingProcessTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScalingProcessTypes, input, options)
end

function C:describeScheduledActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScheduledActions, input, options)
end

function C:describeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTags, input, options)
end

function C:describeTerminationPolicyTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTerminationPolicyTypes, input, options)
end

function C:describeTrafficSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrafficSources, input, options)
end

function C:describeWarmPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWarmPool, input, options)
end

function C:detachInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachInstances, input, options)
end

function C:detachLoadBalancers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachLoadBalancers, input, options)
end

function C:detachLoadBalancerTargetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachLoadBalancerTargetGroups, input, options)
end

function C:detachTrafficSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachTrafficSources, input, options)
end

function C:disableMetricsCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableMetricsCollection, input, options)
end

function C:enableMetricsCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableMetricsCollection, input, options)
end

function C:enterStandby(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnterStandby, input, options)
end

function C:executePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecutePolicy, input, options)
end

function C:exitStandby(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExitStandby, input, options)
end

function C:getPredictiveScalingForecast(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPredictiveScalingForecast, input, options)
end

function C:launchInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.LaunchInstances, input, options)
end

function C:putLifecycleHook(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLifecycleHook, input, options)
end

function C:putNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutNotificationConfiguration, input, options)
end

function C:putScalingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutScalingPolicy, input, options)
end

function C:putScheduledUpdateGroupAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutScheduledUpdateGroupAction, input, options)
end

function C:putWarmPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutWarmPool, input, options)
end

function C:recordLifecycleActionHeartbeat(input, options)
   return self:invokeOperation(schemas.Service, schemas.RecordLifecycleActionHeartbeat, input, options)
end

function C:resumeProcesses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeProcesses, input, options)
end

function C:rollbackInstanceRefresh(input, options)
   return self:invokeOperation(schemas.Service, schemas.RollbackInstanceRefresh, input, options)
end

function C:setDesiredCapacity(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetDesiredCapacity, input, options)
end

function C:setInstanceHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetInstanceHealth, input, options)
end

function C:setInstanceProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetInstanceProtection, input, options)
end

function C:startInstanceRefresh(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartInstanceRefresh, input, options)
end

function C:suspendProcesses(input, options)
   return self:invokeOperation(schemas.Service, schemas.SuspendProcesses, input, options)
end

function C:terminateInstanceInAutoScalingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateInstanceInAutoScalingGroup, input, options)
end

function C:updateAutoScalingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAutoScalingGroup, input, options)
end

return M
