local types = require("autoscaling.types")

local record Client
    attachInstances: function(Client, types.AttachInstancesInput): types.AttachInstancesOutput, table
    attachLoadBalancers: function(Client, types.AttachLoadBalancersInput): types.AttachLoadBalancersOutput, table
    attachLoadBalancerTargetGroups: function(Client, types.AttachLoadBalancerTargetGroupsInput): types.AttachLoadBalancerTargetGroupsOutput, table
    attachTrafficSources: function(Client, types.AttachTrafficSourcesInput): types.AttachTrafficSourcesOutput, table
    batchDeleteScheduledAction: function(Client, types.BatchDeleteScheduledActionInput): types.BatchDeleteScheduledActionOutput, table
    batchPutScheduledUpdateGroupAction: function(Client, types.BatchPutScheduledUpdateGroupActionInput): types.BatchPutScheduledUpdateGroupActionOutput, table
    cancelInstanceRefresh: function(Client, types.CancelInstanceRefreshInput): types.CancelInstanceRefreshOutput, table
    completeLifecycleAction: function(Client, types.CompleteLifecycleActionInput): types.CompleteLifecycleActionOutput, table
    createAutoScalingGroup: function(Client, types.CreateAutoScalingGroupInput): types.CreateAutoScalingGroupOutput, table
    createLaunchConfiguration: function(Client, types.CreateLaunchConfigurationInput): types.CreateLaunchConfigurationOutput, table
    createOrUpdateTags: function(Client, types.CreateOrUpdateTagsInput): types.CreateOrUpdateTagsOutput, table
    deleteAutoScalingGroup: function(Client, types.DeleteAutoScalingGroupInput): types.DeleteAutoScalingGroupOutput, table
    deleteLaunchConfiguration: function(Client, types.DeleteLaunchConfigurationInput): types.DeleteLaunchConfigurationOutput, table
    deleteLifecycleHook: function(Client, types.DeleteLifecycleHookInput): types.DeleteLifecycleHookOutput, table
    deleteNotificationConfiguration: function(Client, types.DeleteNotificationConfigurationInput): types.DeleteNotificationConfigurationOutput, table
    deletePolicy: function(Client, types.DeletePolicyInput): types.DeletePolicyOutput, table
    deleteScheduledAction: function(Client, types.DeleteScheduledActionInput): types.DeleteScheduledActionOutput, table
    deleteTags: function(Client, types.DeleteTagsInput): types.DeleteTagsOutput, table
    deleteWarmPool: function(Client, types.DeleteWarmPoolInput): types.DeleteWarmPoolOutput, table
    describeAccountLimits: function(Client, types.DescribeAccountLimitsInput): types.DescribeAccountLimitsOutput, table
    describeAdjustmentTypes: function(Client, types.DescribeAdjustmentTypesInput): types.DescribeAdjustmentTypesOutput, table
    describeAutoScalingGroups: function(Client, types.DescribeAutoScalingGroupsInput): types.DescribeAutoScalingGroupsOutput, table
    describeAutoScalingInstances: function(Client, types.DescribeAutoScalingInstancesInput): types.DescribeAutoScalingInstancesOutput, table
    describeAutoScalingNotificationTypes: function(Client, types.DescribeAutoScalingNotificationTypesInput): types.DescribeAutoScalingNotificationTypesOutput, table
    describeInstanceRefreshes: function(Client, types.DescribeInstanceRefreshesInput): types.DescribeInstanceRefreshesOutput, table
    describeLaunchConfigurations: function(Client, types.DescribeLaunchConfigurationsInput): types.DescribeLaunchConfigurationsOutput, table
    describeLifecycleHooks: function(Client, types.DescribeLifecycleHooksInput): types.DescribeLifecycleHooksOutput, table
    describeLifecycleHookTypes: function(Client, types.DescribeLifecycleHookTypesInput): types.DescribeLifecycleHookTypesOutput, table
    describeLoadBalancers: function(Client, types.DescribeLoadBalancersInput): types.DescribeLoadBalancersOutput, table
    describeLoadBalancerTargetGroups: function(Client, types.DescribeLoadBalancerTargetGroupsInput): types.DescribeLoadBalancerTargetGroupsOutput, table
    describeMetricCollectionTypes: function(Client, types.DescribeMetricCollectionTypesInput): types.DescribeMetricCollectionTypesOutput, table
    describeNotificationConfigurations: function(Client, types.DescribeNotificationConfigurationsInput): types.DescribeNotificationConfigurationsOutput, table
    describePolicies: function(Client, types.DescribePoliciesInput): types.DescribePoliciesOutput, table
    describeScalingActivities: function(Client, types.DescribeScalingActivitiesInput): types.DescribeScalingActivitiesOutput, table
    describeScalingProcessTypes: function(Client, types.DescribeScalingProcessTypesInput): types.DescribeScalingProcessTypesOutput, table
    describeScheduledActions: function(Client, types.DescribeScheduledActionsInput): types.DescribeScheduledActionsOutput, table
    describeTags: function(Client, types.DescribeTagsInput): types.DescribeTagsOutput, table
    describeTerminationPolicyTypes: function(Client, types.DescribeTerminationPolicyTypesInput): types.DescribeTerminationPolicyTypesOutput, table
    describeTrafficSources: function(Client, types.DescribeTrafficSourcesInput): types.DescribeTrafficSourcesOutput, table
    describeWarmPool: function(Client, types.DescribeWarmPoolInput): types.DescribeWarmPoolOutput, table
    detachInstances: function(Client, types.DetachInstancesInput): types.DetachInstancesOutput, table
    detachLoadBalancers: function(Client, types.DetachLoadBalancersInput): types.DetachLoadBalancersOutput, table
    detachLoadBalancerTargetGroups: function(Client, types.DetachLoadBalancerTargetGroupsInput): types.DetachLoadBalancerTargetGroupsOutput, table
    detachTrafficSources: function(Client, types.DetachTrafficSourcesInput): types.DetachTrafficSourcesOutput, table
    disableMetricsCollection: function(Client, types.DisableMetricsCollectionInput): types.DisableMetricsCollectionOutput, table
    enableMetricsCollection: function(Client, types.EnableMetricsCollectionInput): types.EnableMetricsCollectionOutput, table
    enterStandby: function(Client, types.EnterStandbyInput): types.EnterStandbyOutput, table
    executePolicy: function(Client, types.ExecutePolicyInput): types.ExecutePolicyOutput, table
    exitStandby: function(Client, types.ExitStandbyInput): types.ExitStandbyOutput, table
    getPredictiveScalingForecast: function(Client, types.GetPredictiveScalingForecastInput): types.GetPredictiveScalingForecastOutput, table
    launchInstances: function(Client, types.LaunchInstancesInput): types.LaunchInstancesOutput, table
    putLifecycleHook: function(Client, types.PutLifecycleHookInput): types.PutLifecycleHookOutput, table
    putNotificationConfiguration: function(Client, types.PutNotificationConfigurationInput): types.PutNotificationConfigurationOutput, table
    putScalingPolicy: function(Client, types.PutScalingPolicyInput): types.PutScalingPolicyOutput, table
    putScheduledUpdateGroupAction: function(Client, types.PutScheduledUpdateGroupActionInput): types.PutScheduledUpdateGroupActionOutput, table
    putWarmPool: function(Client, types.PutWarmPoolInput): types.PutWarmPoolOutput, table
    recordLifecycleActionHeartbeat: function(Client, types.RecordLifecycleActionHeartbeatInput): types.RecordLifecycleActionHeartbeatOutput, table
    resumeProcesses: function(Client, types.ResumeProcessesInput): types.ResumeProcessesOutput, table
    rollbackInstanceRefresh: function(Client, types.RollbackInstanceRefreshInput): types.RollbackInstanceRefreshOutput, table
    setDesiredCapacity: function(Client, types.SetDesiredCapacityInput): types.SetDesiredCapacityOutput, table
    setInstanceHealth: function(Client, types.SetInstanceHealthInput): types.SetInstanceHealthOutput, table
    setInstanceProtection: function(Client, types.SetInstanceProtectionInput): types.SetInstanceProtectionOutput, table
    startInstanceRefresh: function(Client, types.StartInstanceRefreshInput): types.StartInstanceRefreshOutput, table
    suspendProcesses: function(Client, types.SuspendProcessesInput): types.SuspendProcessesOutput, table
    terminateInstanceInAutoScalingGroup: function(Client, types.TerminateInstanceInAutoScalingGroupInput): types.TerminateInstanceInAutoScalingGroupOutput, table
    updateAutoScalingGroup: function(Client, types.UpdateAutoScalingGroupInput): types.UpdateAutoScalingGroupOutput, table
end

local record M
    new: function(table): Client
end

return M
