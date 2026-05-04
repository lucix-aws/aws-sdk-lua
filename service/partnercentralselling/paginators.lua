local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listEngagementByAcceptingInvitationTasks.
function M.pages_list_engagement_by_accepting_invitation_tasks(client, input)
    return paginator.pages(client, "listEngagementByAcceptingInvitationTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TaskSummaries",
    })
end

--- Returns an item iterator for listEngagementByAcceptingInvitationTasks.
function M.items_list_engagement_by_accepting_invitation_tasks(client, input)
    return paginator.items(client, "listEngagementByAcceptingInvitationTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TaskSummaries",
    })
end

--- Returns a page iterator for listEngagementFromOpportunityTasks.
function M.pages_list_engagement_from_opportunity_tasks(client, input)
    return paginator.pages(client, "listEngagementFromOpportunityTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TaskSummaries",
    })
end

--- Returns an item iterator for listEngagementFromOpportunityTasks.
function M.items_list_engagement_from_opportunity_tasks(client, input)
    return paginator.items(client, "listEngagementFromOpportunityTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TaskSummaries",
    })
end

--- Returns a page iterator for listEngagementInvitations.
function M.pages_list_engagement_invitations(client, input)
    return paginator.pages(client, "listEngagementInvitations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EngagementInvitationSummaries",
    })
end

--- Returns an item iterator for listEngagementInvitations.
function M.items_list_engagement_invitations(client, input)
    return paginator.items(client, "listEngagementInvitations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EngagementInvitationSummaries",
    })
end

--- Returns a page iterator for listEngagementMembers.
function M.pages_list_engagement_members(client, input)
    return paginator.pages(client, "listEngagementMembers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EngagementMemberList",
    })
end

--- Returns an item iterator for listEngagementMembers.
function M.items_list_engagement_members(client, input)
    return paginator.items(client, "listEngagementMembers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EngagementMemberList",
    })
end

--- Returns a page iterator for listEngagementResourceAssociations.
function M.pages_list_engagement_resource_associations(client, input)
    return paginator.pages(client, "listEngagementResourceAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EngagementResourceAssociationSummaries",
    })
end

--- Returns an item iterator for listEngagementResourceAssociations.
function M.items_list_engagement_resource_associations(client, input)
    return paginator.items(client, "listEngagementResourceAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EngagementResourceAssociationSummaries",
    })
end

--- Returns a page iterator for listEngagements.
function M.pages_list_engagements(client, input)
    return paginator.pages(client, "listEngagements", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EngagementSummaryList",
    })
end

--- Returns an item iterator for listEngagements.
function M.items_list_engagements(client, input)
    return paginator.items(client, "listEngagements", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EngagementSummaryList",
    })
end

--- Returns a page iterator for listOpportunities.
function M.pages_list_opportunities(client, input)
    return paginator.pages(client, "listOpportunities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OpportunitySummaries",
    })
end

--- Returns an item iterator for listOpportunities.
function M.items_list_opportunities(client, input)
    return paginator.items(client, "listOpportunities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OpportunitySummaries",
    })
end

--- Returns a page iterator for listOpportunityFromEngagementTasks.
function M.pages_list_opportunity_from_engagement_tasks(client, input)
    return paginator.pages(client, "listOpportunityFromEngagementTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TaskSummaries",
    })
end

--- Returns an item iterator for listOpportunityFromEngagementTasks.
function M.items_list_opportunity_from_engagement_tasks(client, input)
    return paginator.items(client, "listOpportunityFromEngagementTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TaskSummaries",
    })
end

--- Returns a page iterator for listResourceSnapshotJobs.
function M.pages_list_resource_snapshot_jobs(client, input)
    return paginator.pages(client, "listResourceSnapshotJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceSnapshotJobSummaries",
    })
end

--- Returns an item iterator for listResourceSnapshotJobs.
function M.items_list_resource_snapshot_jobs(client, input)
    return paginator.items(client, "listResourceSnapshotJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceSnapshotJobSummaries",
    })
end

--- Returns a page iterator for listResourceSnapshots.
function M.pages_list_resource_snapshots(client, input)
    return paginator.pages(client, "listResourceSnapshots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceSnapshotSummaries",
    })
end

--- Returns an item iterator for listResourceSnapshots.
function M.items_list_resource_snapshots(client, input)
    return paginator.items(client, "listResourceSnapshots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceSnapshotSummaries",
    })
end

--- Returns a page iterator for listSolutions.
function M.pages_list_solutions(client, input)
    return paginator.pages(client, "listSolutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SolutionSummaries",
    })
end

--- Returns an item iterator for listSolutions.
function M.items_list_solutions(client, input)
    return paginator.items(client, "listSolutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SolutionSummaries",
    })
end

return M
