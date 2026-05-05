local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("autoscaling.endpoint_rules")
local query_protocol = require("protocol.query")
local schemas = require("autoscaling.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AutoScaling_2011_01_01"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "autoscaling", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:attachInstances(input, options)
    return self:invokeOperation(input, {
        name = "AttachInstances",
        input_schema = schemas.AttachInstancesInput,
        output_schema = schemas.AttachInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachLoadBalancers(input, options)
    return self:invokeOperation(input, {
        name = "AttachLoadBalancers",
        input_schema = schemas.AttachLoadBalancersInput,
        output_schema = schemas.AttachLoadBalancersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachLoadBalancerTargetGroups(input, options)
    return self:invokeOperation(input, {
        name = "AttachLoadBalancerTargetGroups",
        input_schema = schemas.AttachLoadBalancerTargetGroupsInput,
        output_schema = schemas.AttachLoadBalancerTargetGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachTrafficSources(input, options)
    return self:invokeOperation(input, {
        name = "AttachTrafficSources",
        input_schema = schemas.AttachTrafficSourcesInput,
        output_schema = schemas.AttachTrafficSourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteScheduledAction",
        input_schema = schemas.BatchDeleteScheduledActionInput,
        output_schema = schemas.BatchDeleteScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchPutScheduledUpdateGroupAction(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutScheduledUpdateGroupAction",
        input_schema = schemas.BatchPutScheduledUpdateGroupActionInput,
        output_schema = schemas.BatchPutScheduledUpdateGroupActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelInstanceRefresh(input, options)
    return self:invokeOperation(input, {
        name = "CancelInstanceRefresh",
        input_schema = schemas.CancelInstanceRefreshInput,
        output_schema = schemas.CancelInstanceRefreshOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:completeLifecycleAction(input, options)
    return self:invokeOperation(input, {
        name = "CompleteLifecycleAction",
        input_schema = schemas.CompleteLifecycleActionInput,
        output_schema = schemas.CompleteLifecycleActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAutoScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutoScalingGroup",
        input_schema = schemas.CreateAutoScalingGroupInput,
        output_schema = schemas.CreateAutoScalingGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLaunchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateLaunchConfiguration",
        input_schema = schemas.CreateLaunchConfigurationInput,
        output_schema = schemas.CreateLaunchConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOrUpdateTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateOrUpdateTags",
        input_schema = schemas.CreateOrUpdateTagsInput,
        output_schema = schemas.CreateOrUpdateTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAutoScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutoScalingGroup",
        input_schema = schemas.DeleteAutoScalingGroupInput,
        output_schema = schemas.DeleteAutoScalingGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLaunchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLaunchConfiguration",
        input_schema = schemas.DeleteLaunchConfigurationInput,
        output_schema = schemas.DeleteLaunchConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLifecycleHook(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLifecycleHook",
        input_schema = schemas.DeleteLifecycleHookInput,
        output_schema = schemas.DeleteLifecycleHookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotificationConfiguration",
        input_schema = schemas.DeleteNotificationConfigurationInput,
        output_schema = schemas.DeleteNotificationConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = schemas.DeletePolicyInput,
        output_schema = schemas.DeletePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledAction",
        input_schema = schemas.DeleteScheduledActionInput,
        output_schema = schemas.DeleteScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = schemas.DeleteTagsInput,
        output_schema = schemas.DeleteTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWarmPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWarmPool",
        input_schema = schemas.DeleteWarmPoolInput,
        output_schema = schemas.DeleteWarmPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountLimits",
        input_schema = schemas.DescribeAccountLimitsInput,
        output_schema = schemas.DescribeAccountLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAdjustmentTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAdjustmentTypes",
        input_schema = schemas.DescribeAdjustmentTypesInput,
        output_schema = schemas.DescribeAdjustmentTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAutoScalingGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutoScalingGroups",
        input_schema = schemas.DescribeAutoScalingGroupsInput,
        output_schema = schemas.DescribeAutoScalingGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAutoScalingInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutoScalingInstances",
        input_schema = schemas.DescribeAutoScalingInstancesInput,
        output_schema = schemas.DescribeAutoScalingInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAutoScalingNotificationTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutoScalingNotificationTypes",
        input_schema = schemas.DescribeAutoScalingNotificationTypesInput,
        output_schema = schemas.DescribeAutoScalingNotificationTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceRefreshes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceRefreshes",
        input_schema = schemas.DescribeInstanceRefreshesInput,
        output_schema = schemas.DescribeInstanceRefreshesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLaunchConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLaunchConfigurations",
        input_schema = schemas.DescribeLaunchConfigurationsInput,
        output_schema = schemas.DescribeLaunchConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLifecycleHooks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLifecycleHooks",
        input_schema = schemas.DescribeLifecycleHooksInput,
        output_schema = schemas.DescribeLifecycleHooksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLifecycleHookTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLifecycleHookTypes",
        input_schema = schemas.DescribeLifecycleHookTypesInput,
        output_schema = schemas.DescribeLifecycleHookTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoadBalancers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoadBalancers",
        input_schema = schemas.DescribeLoadBalancersInput,
        output_schema = schemas.DescribeLoadBalancersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoadBalancerTargetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoadBalancerTargetGroups",
        input_schema = schemas.DescribeLoadBalancerTargetGroupsInput,
        output_schema = schemas.DescribeLoadBalancerTargetGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetricCollectionTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetricCollectionTypes",
        input_schema = schemas.DescribeMetricCollectionTypesInput,
        output_schema = schemas.DescribeMetricCollectionTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotificationConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotificationConfigurations",
        input_schema = schemas.DescribeNotificationConfigurationsInput,
        output_schema = schemas.DescribeNotificationConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribePolicies",
        input_schema = schemas.DescribePoliciesInput,
        output_schema = schemas.DescribePoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScalingActivities(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingActivities",
        input_schema = schemas.DescribeScalingActivitiesInput,
        output_schema = schemas.DescribeScalingActivitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScalingProcessTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingProcessTypes",
        input_schema = schemas.DescribeScalingProcessTypesInput,
        output_schema = schemas.DescribeScalingProcessTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScheduledActions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScheduledActions",
        input_schema = schemas.DescribeScheduledActionsInput,
        output_schema = schemas.DescribeScheduledActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = schemas.DescribeTagsInput,
        output_schema = schemas.DescribeTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTerminationPolicyTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTerminationPolicyTypes",
        input_schema = schemas.DescribeTerminationPolicyTypesInput,
        output_schema = schemas.DescribeTerminationPolicyTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrafficSources(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrafficSources",
        input_schema = schemas.DescribeTrafficSourcesInput,
        output_schema = schemas.DescribeTrafficSourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWarmPool(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWarmPool",
        input_schema = schemas.DescribeWarmPoolInput,
        output_schema = schemas.DescribeWarmPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachInstances(input, options)
    return self:invokeOperation(input, {
        name = "DetachInstances",
        input_schema = schemas.DetachInstancesInput,
        output_schema = schemas.DetachInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachLoadBalancers(input, options)
    return self:invokeOperation(input, {
        name = "DetachLoadBalancers",
        input_schema = schemas.DetachLoadBalancersInput,
        output_schema = schemas.DetachLoadBalancersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachLoadBalancerTargetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DetachLoadBalancerTargetGroups",
        input_schema = schemas.DetachLoadBalancerTargetGroupsInput,
        output_schema = schemas.DetachLoadBalancerTargetGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachTrafficSources(input, options)
    return self:invokeOperation(input, {
        name = "DetachTrafficSources",
        input_schema = schemas.DetachTrafficSourcesInput,
        output_schema = schemas.DetachTrafficSourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableMetricsCollection(input, options)
    return self:invokeOperation(input, {
        name = "DisableMetricsCollection",
        input_schema = schemas.DisableMetricsCollectionInput,
        output_schema = schemas.DisableMetricsCollectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableMetricsCollection(input, options)
    return self:invokeOperation(input, {
        name = "EnableMetricsCollection",
        input_schema = schemas.EnableMetricsCollectionInput,
        output_schema = schemas.EnableMetricsCollectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enterStandby(input, options)
    return self:invokeOperation(input, {
        name = "EnterStandby",
        input_schema = schemas.EnterStandbyInput,
        output_schema = schemas.EnterStandbyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executePolicy(input, options)
    return self:invokeOperation(input, {
        name = "ExecutePolicy",
        input_schema = schemas.ExecutePolicyInput,
        output_schema = schemas.ExecutePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exitStandby(input, options)
    return self:invokeOperation(input, {
        name = "ExitStandby",
        input_schema = schemas.ExitStandbyInput,
        output_schema = schemas.ExitStandbyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPredictiveScalingForecast(input, options)
    return self:invokeOperation(input, {
        name = "GetPredictiveScalingForecast",
        input_schema = schemas.GetPredictiveScalingForecastInput,
        output_schema = schemas.GetPredictiveScalingForecastOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:launchInstances(input, options)
    return self:invokeOperation(input, {
        name = "LaunchInstances",
        input_schema = schemas.LaunchInstancesInput,
        output_schema = schemas.LaunchInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLifecycleHook(input, options)
    return self:invokeOperation(input, {
        name = "PutLifecycleHook",
        input_schema = schemas.PutLifecycleHookInput,
        output_schema = schemas.PutLifecycleHookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutNotificationConfiguration",
        input_schema = schemas.PutNotificationConfigurationInput,
        output_schema = schemas.PutNotificationConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putScalingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutScalingPolicy",
        input_schema = schemas.PutScalingPolicyInput,
        output_schema = schemas.PutScalingPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putScheduledUpdateGroupAction(input, options)
    return self:invokeOperation(input, {
        name = "PutScheduledUpdateGroupAction",
        input_schema = schemas.PutScheduledUpdateGroupActionInput,
        output_schema = schemas.PutScheduledUpdateGroupActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putWarmPool(input, options)
    return self:invokeOperation(input, {
        name = "PutWarmPool",
        input_schema = schemas.PutWarmPoolInput,
        output_schema = schemas.PutWarmPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:recordLifecycleActionHeartbeat(input, options)
    return self:invokeOperation(input, {
        name = "RecordLifecycleActionHeartbeat",
        input_schema = schemas.RecordLifecycleActionHeartbeatInput,
        output_schema = schemas.RecordLifecycleActionHeartbeatOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resumeProcesses(input, options)
    return self:invokeOperation(input, {
        name = "ResumeProcesses",
        input_schema = schemas.ResumeProcessesInput,
        output_schema = schemas.ResumeProcessesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rollbackInstanceRefresh(input, options)
    return self:invokeOperation(input, {
        name = "RollbackInstanceRefresh",
        input_schema = schemas.RollbackInstanceRefreshInput,
        output_schema = schemas.RollbackInstanceRefreshOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setDesiredCapacity(input, options)
    return self:invokeOperation(input, {
        name = "SetDesiredCapacity",
        input_schema = schemas.SetDesiredCapacityInput,
        output_schema = schemas.SetDesiredCapacityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setInstanceHealth(input, options)
    return self:invokeOperation(input, {
        name = "SetInstanceHealth",
        input_schema = schemas.SetInstanceHealthInput,
        output_schema = schemas.SetInstanceHealthOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setInstanceProtection(input, options)
    return self:invokeOperation(input, {
        name = "SetInstanceProtection",
        input_schema = schemas.SetInstanceProtectionInput,
        output_schema = schemas.SetInstanceProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startInstanceRefresh(input, options)
    return self:invokeOperation(input, {
        name = "StartInstanceRefresh",
        input_schema = schemas.StartInstanceRefreshInput,
        output_schema = schemas.StartInstanceRefreshOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:suspendProcesses(input, options)
    return self:invokeOperation(input, {
        name = "SuspendProcesses",
        input_schema = schemas.SuspendProcessesInput,
        output_schema = schemas.SuspendProcessesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateInstanceInAutoScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "TerminateInstanceInAutoScalingGroup",
        input_schema = schemas.TerminateInstanceInAutoScalingGroupInput,
        output_schema = schemas.TerminateInstanceInAutoScalingGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAutoScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutoScalingGroup",
        input_schema = schemas.UpdateAutoScalingGroupInput,
        output_schema = schemas.UpdateAutoScalingGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
