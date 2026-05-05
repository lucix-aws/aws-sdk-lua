local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeScalableTargets.
function M.pages_describe_scalable_targets(client, input)
    return paginator.pages(client, "describeScalableTargets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScalableTargets",
    })
end

--- Returns an item iterator for describeScalableTargets.
function M.items_describe_scalable_targets(client, input)
    return paginator.items(client, "describeScalableTargets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScalableTargets",
    })
end

--- Returns a page iterator for describeScalingActivities.
function M.pages_describe_scaling_activities(client, input)
    return paginator.pages(client, "describeScalingActivities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScalingActivities",
    })
end

--- Returns an item iterator for describeScalingActivities.
function M.items_describe_scaling_activities(client, input)
    return paginator.items(client, "describeScalingActivities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScalingActivities",
    })
end

--- Returns a page iterator for describeScalingPolicies.
function M.pages_describe_scaling_policies(client, input)
    return paginator.pages(client, "describeScalingPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScalingPolicies",
    })
end

--- Returns an item iterator for describeScalingPolicies.
function M.items_describe_scaling_policies(client, input)
    return paginator.items(client, "describeScalingPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScalingPolicies",
    })
end

--- Returns a page iterator for describeScheduledActions.
function M.pages_describe_scheduled_actions(client, input)
    return paginator.pages(client, "describeScheduledActions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScheduledActions",
    })
end

--- Returns an item iterator for describeScheduledActions.
function M.items_describe_scheduled_actions(client, input)
    return paginator.items(client, "describeScheduledActions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ScheduledActions",
    })
end

return M
