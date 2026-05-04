local types = require("managedblockchain.types")

local record Client
    createAccessor: function(Client, types.CreateAccessorInput): types.CreateAccessorOutput, table
    createMember: function(Client, types.CreateMemberInput): types.CreateMemberOutput, table
    createNetwork: function(Client, types.CreateNetworkInput): types.CreateNetworkOutput, table
    createNode: function(Client, types.CreateNodeInput): types.CreateNodeOutput, table
    createProposal: function(Client, types.CreateProposalInput): types.CreateProposalOutput, table
    deleteAccessor: function(Client, types.DeleteAccessorInput): types.DeleteAccessorOutput, table
    deleteMember: function(Client, types.DeleteMemberInput): types.DeleteMemberOutput, table
    deleteNode: function(Client, types.DeleteNodeInput): types.DeleteNodeOutput, table
    getAccessor: function(Client, types.GetAccessorInput): types.GetAccessorOutput, table
    getMember: function(Client, types.GetMemberInput): types.GetMemberOutput, table
    getNetwork: function(Client, types.GetNetworkInput): types.GetNetworkOutput, table
    getNode: function(Client, types.GetNodeInput): types.GetNodeOutput, table
    getProposal: function(Client, types.GetProposalInput): types.GetProposalOutput, table
    listAccessors: function(Client, types.ListAccessorsInput): types.ListAccessorsOutput, table
    listInvitations: function(Client, types.ListInvitationsInput): types.ListInvitationsOutput, table
    listMembers: function(Client, types.ListMembersInput): types.ListMembersOutput, table
    listNetworks: function(Client, types.ListNetworksInput): types.ListNetworksOutput, table
    listNodes: function(Client, types.ListNodesInput): types.ListNodesOutput, table
    listProposals: function(Client, types.ListProposalsInput): types.ListProposalsOutput, table
    listProposalVotes: function(Client, types.ListProposalVotesInput): types.ListProposalVotesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    rejectInvitation: function(Client, types.RejectInvitationInput): types.RejectInvitationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateMember: function(Client, types.UpdateMemberInput): types.UpdateMemberOutput, table
    updateNode: function(Client, types.UpdateNodeInput): types.UpdateNodeOutput, table
    voteOnProposal: function(Client, types.VoteOnProposalInput): types.VoteOnProposalOutput, table
end

local record M
    new: function(table): Client
end

return M
