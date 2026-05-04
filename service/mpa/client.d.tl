local types = require("mpa.types")

local record Client
    cancelSession: function(Client, types.CancelSessionInput): types.CancelSessionOutput, table
    createApprovalTeam: function(Client, types.CreateApprovalTeamInput): types.CreateApprovalTeamOutput, table
    createIdentitySource: function(Client, types.CreateIdentitySourceInput): types.CreateIdentitySourceOutput, table
    deleteIdentitySource: function(Client, types.DeleteIdentitySourceInput): types.DeleteIdentitySourceOutput, table
    deleteInactiveApprovalTeamVersion: function(Client, types.DeleteInactiveApprovalTeamVersionInput): types.DeleteInactiveApprovalTeamVersionOutput, table
    getApprovalTeam: function(Client, types.GetApprovalTeamInput): types.GetApprovalTeamOutput, table
    getIdentitySource: function(Client, types.GetIdentitySourceInput): types.GetIdentitySourceOutput, table
    getPolicyVersion: function(Client, types.GetPolicyVersionInput): types.GetPolicyVersionOutput, table
    getResourcePolicy: function(Client, types.GetResourcePolicyInput): types.GetResourcePolicyOutput, table
    getSession: function(Client, types.GetSessionInput): types.GetSessionOutput, table
    listApprovalTeams: function(Client, types.ListApprovalTeamsInput): types.ListApprovalTeamsOutput, table
    listIdentitySources: function(Client, types.ListIdentitySourcesInput): types.ListIdentitySourcesOutput, table
    listPolicies: function(Client, types.ListPoliciesInput): types.ListPoliciesOutput, table
    listPolicyVersions: function(Client, types.ListPolicyVersionsInput): types.ListPolicyVersionsOutput, table
    listResourcePolicies: function(Client, types.ListResourcePoliciesInput): types.ListResourcePoliciesOutput, table
    listSessions: function(Client, types.ListSessionsInput): types.ListSessionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startActiveApprovalTeamDeletion: function(Client, types.StartActiveApprovalTeamDeletionInput): types.StartActiveApprovalTeamDeletionOutput, table
    startApprovalTeamBaseline: function(Client, types.StartApprovalTeamBaselineInput): types.StartApprovalTeamBaselineOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApprovalTeam: function(Client, types.UpdateApprovalTeamInput): types.UpdateApprovalTeamOutput, table
end

local record M
    new: function(table): Client
end

return M
