local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("autoscaling.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("autoscaling.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AutoScaling_2011_01_01"
    cfg.signing_name = "autoscaling"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:attachInstances(input, options)
    return self:invokeOperation(input, {
        name = "AttachInstances",
        input_schema = types.AttachInstancesInput,
        output_schema = types.AttachInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:attachLoadBalancers(input, options)
    return self:invokeOperation(input, {
        name = "AttachLoadBalancers",
        input_schema = types.AttachLoadBalancersInput,
        output_schema = types.AttachLoadBalancersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:attachLoadBalancerTargetGroups(input, options)
    return self:invokeOperation(input, {
        name = "AttachLoadBalancerTargetGroups",
        input_schema = types.AttachLoadBalancerTargetGroupsInput,
        output_schema = types.AttachLoadBalancerTargetGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:attachTrafficSources(input, options)
    return self:invokeOperation(input, {
        name = "AttachTrafficSources",
        input_schema = types.AttachTrafficSourcesInput,
        output_schema = types.AttachTrafficSourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteScheduledAction",
        input_schema = types.BatchDeleteScheduledActionInput,
        output_schema = types.BatchDeleteScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchPutScheduledUpdateGroupAction(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutScheduledUpdateGroupAction",
        input_schema = types.BatchPutScheduledUpdateGroupActionInput,
        output_schema = types.BatchPutScheduledUpdateGroupActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelInstanceRefresh(input, options)
    return self:invokeOperation(input, {
        name = "CancelInstanceRefresh",
        input_schema = types.CancelInstanceRefreshInput,
        output_schema = types.CancelInstanceRefreshOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:completeLifecycleAction(input, options)
    return self:invokeOperation(input, {
        name = "CompleteLifecycleAction",
        input_schema = types.CompleteLifecycleActionInput,
        output_schema = types.CompleteLifecycleActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAutoScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutoScalingGroup",
        input_schema = types.CreateAutoScalingGroupInput,
        output_schema = types.CreateAutoScalingGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLaunchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateLaunchConfiguration",
        input_schema = types.CreateLaunchConfigurationInput,
        output_schema = types.CreateLaunchConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createOrUpdateTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateOrUpdateTags",
        input_schema = types.CreateOrUpdateTagsInput,
        output_schema = types.CreateOrUpdateTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAutoScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutoScalingGroup",
        input_schema = types.DeleteAutoScalingGroupInput,
        output_schema = types.DeleteAutoScalingGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLaunchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLaunchConfiguration",
        input_schema = types.DeleteLaunchConfigurationInput,
        output_schema = types.DeleteLaunchConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLifecycleHook(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLifecycleHook",
        input_schema = types.DeleteLifecycleHookInput,
        output_schema = types.DeleteLifecycleHookOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotificationConfiguration",
        input_schema = types.DeleteNotificationConfigurationInput,
        output_schema = types.DeleteNotificationConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = types.DeletePolicyInput,
        output_schema = types.DeletePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledAction",
        input_schema = types.DeleteScheduledActionInput,
        output_schema = types.DeleteScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = types.DeleteTagsInput,
        output_schema = types.DeleteTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteWarmPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWarmPool",
        input_schema = types.DeleteWarmPoolInput,
        output_schema = types.DeleteWarmPoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAccountLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountLimits",
        input_schema = types.DescribeAccountLimitsInput,
        output_schema = types.DescribeAccountLimitsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAdjustmentTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAdjustmentTypes",
        input_schema = types.DescribeAdjustmentTypesInput,
        output_schema = types.DescribeAdjustmentTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAutoScalingGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutoScalingGroups",
        input_schema = types.DescribeAutoScalingGroupsInput,
        output_schema = types.DescribeAutoScalingGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAutoScalingInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutoScalingInstances",
        input_schema = types.DescribeAutoScalingInstancesInput,
        output_schema = types.DescribeAutoScalingInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAutoScalingNotificationTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutoScalingNotificationTypes",
        input_schema = types.DescribeAutoScalingNotificationTypesInput,
        output_schema = types.DescribeAutoScalingNotificationTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInstanceRefreshes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceRefreshes",
        input_schema = types.DescribeInstanceRefreshesInput,
        output_schema = types.DescribeInstanceRefreshesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLaunchConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLaunchConfigurations",
        input_schema = types.DescribeLaunchConfigurationsInput,
        output_schema = types.DescribeLaunchConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLifecycleHooks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLifecycleHooks",
        input_schema = types.DescribeLifecycleHooksInput,
        output_schema = types.DescribeLifecycleHooksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLifecycleHookTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLifecycleHookTypes",
        input_schema = types.DescribeLifecycleHookTypesInput,
        output_schema = types.DescribeLifecycleHookTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLoadBalancers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoadBalancers",
        input_schema = types.DescribeLoadBalancersInput,
        output_schema = types.DescribeLoadBalancersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLoadBalancerTargetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoadBalancerTargetGroups",
        input_schema = types.DescribeLoadBalancerTargetGroupsInput,
        output_schema = types.DescribeLoadBalancerTargetGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMetricCollectionTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetricCollectionTypes",
        input_schema = types.DescribeMetricCollectionTypesInput,
        output_schema = types.DescribeMetricCollectionTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeNotificationConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotificationConfigurations",
        input_schema = types.DescribeNotificationConfigurationsInput,
        output_schema = types.DescribeNotificationConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribePolicies",
        input_schema = types.DescribePoliciesInput,
        output_schema = types.DescribePoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScalingActivities(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingActivities",
        input_schema = types.DescribeScalingActivitiesInput,
        output_schema = types.DescribeScalingActivitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScalingProcessTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingProcessTypes",
        input_schema = types.DescribeScalingProcessTypesInput,
        output_schema = types.DescribeScalingProcessTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScheduledActions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScheduledActions",
        input_schema = types.DescribeScheduledActionsInput,
        output_schema = types.DescribeScheduledActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = types.DescribeTagsInput,
        output_schema = types.DescribeTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTerminationPolicyTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTerminationPolicyTypes",
        input_schema = types.DescribeTerminationPolicyTypesInput,
        output_schema = types.DescribeTerminationPolicyTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTrafficSources(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrafficSources",
        input_schema = types.DescribeTrafficSourcesInput,
        output_schema = types.DescribeTrafficSourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeWarmPool(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWarmPool",
        input_schema = types.DescribeWarmPoolInput,
        output_schema = types.DescribeWarmPoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detachInstances(input, options)
    return self:invokeOperation(input, {
        name = "DetachInstances",
        input_schema = types.DetachInstancesInput,
        output_schema = types.DetachInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detachLoadBalancers(input, options)
    return self:invokeOperation(input, {
        name = "DetachLoadBalancers",
        input_schema = types.DetachLoadBalancersInput,
        output_schema = types.DetachLoadBalancersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detachLoadBalancerTargetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DetachLoadBalancerTargetGroups",
        input_schema = types.DetachLoadBalancerTargetGroupsInput,
        output_schema = types.DetachLoadBalancerTargetGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detachTrafficSources(input, options)
    return self:invokeOperation(input, {
        name = "DetachTrafficSources",
        input_schema = types.DetachTrafficSourcesInput,
        output_schema = types.DetachTrafficSourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableMetricsCollection(input, options)
    return self:invokeOperation(input, {
        name = "DisableMetricsCollection",
        input_schema = types.DisableMetricsCollectionInput,
        output_schema = types.DisableMetricsCollectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableMetricsCollection(input, options)
    return self:invokeOperation(input, {
        name = "EnableMetricsCollection",
        input_schema = types.EnableMetricsCollectionInput,
        output_schema = types.EnableMetricsCollectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enterStandby(input, options)
    return self:invokeOperation(input, {
        name = "EnterStandby",
        input_schema = types.EnterStandbyInput,
        output_schema = types.EnterStandbyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:executePolicy(input, options)
    return self:invokeOperation(input, {
        name = "ExecutePolicy",
        input_schema = types.ExecutePolicyInput,
        output_schema = types.ExecutePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exitStandby(input, options)
    return self:invokeOperation(input, {
        name = "ExitStandby",
        input_schema = types.ExitStandbyInput,
        output_schema = types.ExitStandbyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPredictiveScalingForecast(input, options)
    return self:invokeOperation(input, {
        name = "GetPredictiveScalingForecast",
        input_schema = types.GetPredictiveScalingForecastInput,
        output_schema = types.GetPredictiveScalingForecastOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:launchInstances(input, options)
    return self:invokeOperation(input, {
        name = "LaunchInstances",
        input_schema = types.LaunchInstancesInput,
        output_schema = types.LaunchInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putLifecycleHook(input, options)
    return self:invokeOperation(input, {
        name = "PutLifecycleHook",
        input_schema = types.PutLifecycleHookInput,
        output_schema = types.PutLifecycleHookOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutNotificationConfiguration",
        input_schema = types.PutNotificationConfigurationInput,
        output_schema = types.PutNotificationConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutScalingPolicy",
        input_schema = types.PutScalingPolicyInput,
        output_schema = types.PutScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putScheduledUpdateGroupAction(input, options)
    return self:invokeOperation(input, {
        name = "PutScheduledUpdateGroupAction",
        input_schema = types.PutScheduledUpdateGroupActionInput,
        output_schema = types.PutScheduledUpdateGroupActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putWarmPool(input, options)
    return self:invokeOperation(input, {
        name = "PutWarmPool",
        input_schema = types.PutWarmPoolInput,
        output_schema = types.PutWarmPoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:recordLifecycleActionHeartbeat(input, options)
    return self:invokeOperation(input, {
        name = "RecordLifecycleActionHeartbeat",
        input_schema = types.RecordLifecycleActionHeartbeatInput,
        output_schema = types.RecordLifecycleActionHeartbeatOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resumeProcesses(input, options)
    return self:invokeOperation(input, {
        name = "ResumeProcesses",
        input_schema = types.ResumeProcessesInput,
        output_schema = types.ResumeProcessesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rollbackInstanceRefresh(input, options)
    return self:invokeOperation(input, {
        name = "RollbackInstanceRefresh",
        input_schema = types.RollbackInstanceRefreshInput,
        output_schema = types.RollbackInstanceRefreshOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setDesiredCapacity(input, options)
    return self:invokeOperation(input, {
        name = "SetDesiredCapacity",
        input_schema = types.SetDesiredCapacityInput,
        output_schema = types.SetDesiredCapacityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setInstanceHealth(input, options)
    return self:invokeOperation(input, {
        name = "SetInstanceHealth",
        input_schema = types.SetInstanceHealthInput,
        output_schema = types.SetInstanceHealthOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setInstanceProtection(input, options)
    return self:invokeOperation(input, {
        name = "SetInstanceProtection",
        input_schema = types.SetInstanceProtectionInput,
        output_schema = types.SetInstanceProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startInstanceRefresh(input, options)
    return self:invokeOperation(input, {
        name = "StartInstanceRefresh",
        input_schema = types.StartInstanceRefreshInput,
        output_schema = types.StartInstanceRefreshOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:suspendProcesses(input, options)
    return self:invokeOperation(input, {
        name = "SuspendProcesses",
        input_schema = types.SuspendProcessesInput,
        output_schema = types.SuspendProcessesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:terminateInstanceInAutoScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "TerminateInstanceInAutoScalingGroup",
        input_schema = types.TerminateInstanceInAutoScalingGroupInput,
        output_schema = types.TerminateInstanceInAutoScalingGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAutoScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutoScalingGroup",
        input_schema = types.UpdateAutoScalingGroupInput,
        output_schema = types.UpdateAutoScalingGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
