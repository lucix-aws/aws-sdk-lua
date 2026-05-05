local record CreateAccessorInput
    ClientRequestToken: string
    AccessorType: string
    Tags: {string : string}
    NetworkType: string
end

local record CreateAccessorOutput
    AccessorId: string
    BillingToken: string
    NetworkType: string
end

local record CreateMemberInput
    ClientRequestToken: string
    InvitationId: string
    NetworkId: string
    MemberConfiguration: MemberConfiguration
end

local record CreateMemberOutput
    MemberId: string
end

local record CreateNetworkInput
    ClientRequestToken: string
    Name: string
    Description: string
    Framework: string
    FrameworkVersion: string
    FrameworkConfiguration: NetworkFrameworkConfiguration
    VotingPolicy: VotingPolicy
    MemberConfiguration: MemberConfiguration
    Tags: {string : string}
end

local record CreateNetworkOutput
    NetworkId: string
    MemberId: string
end

local record CreateNodeInput
    ClientRequestToken: string
    NetworkId: string
    MemberId: string
    NodeConfiguration: NodeConfiguration
    Tags: {string : string}
end

local record CreateNodeOutput
    NodeId: string
end

local record CreateProposalInput
    ClientRequestToken: string
    NetworkId: string
    MemberId: string
    Actions: ProposalActions
    Description: string
    Tags: {string : string}
end

local record CreateProposalOutput
    ProposalId: string
end

local record DeleteAccessorInput
    AccessorId: string
end

local record DeleteAccessorOutput
end

local record DeleteMemberInput
    NetworkId: string
    MemberId: string
end

local record DeleteMemberOutput
end

local record DeleteNodeInput
    NetworkId: string
    MemberId: string
    NodeId: string
end

local record DeleteNodeOutput
end

local record GetAccessorInput
    AccessorId: string
end

local record GetAccessorOutput
    Accessor: Accessor
end

local record GetMemberInput
    NetworkId: string
    MemberId: string
end

local record GetMemberOutput
    Member: Member
end

local record GetNetworkInput
    NetworkId: string
end

local record GetNetworkOutput
    Network: Network
end

local record GetNodeInput
    NetworkId: string
    MemberId: string
    NodeId: string
end

local record GetNodeOutput
    Node: Node
end

local record GetProposalInput
    NetworkId: string
    ProposalId: string
end

local record GetProposalOutput
    Proposal: Proposal
end

local record ListAccessorsInput
    MaxResults: number
    NextToken: string
    NetworkType: string
end

local record ListAccessorsOutput
    Accessors: {AccessorSummary}
    NextToken: string
end

local record ListInvitationsInput
    MaxResults: number
    NextToken: string
end

local record ListInvitationsOutput
    Invitations: {Invitation}
    NextToken: string
end

local record ListMembersInput
    NetworkId: string
    Name: string
    Status: string
    IsOwned: boolean
    MaxResults: number
    NextToken: string
end

local record ListMembersOutput
    Members: {MemberSummary}
    NextToken: string
end

local record ListNetworksInput
    Name: string
    Framework: string
    Status: string
    MaxResults: number
    NextToken: string
end

local record ListNetworksOutput
    Networks: {NetworkSummary}
    NextToken: string
end

local record ListNodesInput
    NetworkId: string
    MemberId: string
    Status: string
    MaxResults: number
    NextToken: string
end

local record ListNodesOutput
    Nodes: {NodeSummary}
    NextToken: string
end

local record ListProposalsInput
    NetworkId: string
    MaxResults: number
    NextToken: string
end

local record ListProposalsOutput
    Proposals: {ProposalSummary}
    NextToken: string
end

local record ListProposalVotesInput
    NetworkId: string
    ProposalId: string
    MaxResults: number
    NextToken: string
end

local record ListProposalVotesOutput
    ProposalVotes: {VoteSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record RejectInvitationInput
    InvitationId: string
end

local record RejectInvitationOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateMemberInput
    NetworkId: string
    MemberId: string
    LogPublishingConfiguration: MemberLogPublishingConfiguration
end

local record UpdateMemberOutput
end

local record UpdateNodeInput
    NetworkId: string
    MemberId: string
    NodeId: string
    LogPublishingConfiguration: NodeLogPublishingConfiguration
end

local record UpdateNodeOutput
end

local record VoteOnProposalInput
    NetworkId: string
    ProposalId: string
    VoterMemberId: string
    Vote: string
end

local record VoteOnProposalOutput
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ThrottlingException
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ResourceNotReadyException
    Message: string
end

local record ThrottlingException
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ThrottlingException
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ResourceNotReadyException
    Message: string
end

local record ThrottlingException
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ResourceNotReadyException
    Message: string
end

local record ThrottlingException
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ResourceNotReadyException
    Message: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ResourceNotReadyException
    Message: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceLimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ResourceNotReadyException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalActionException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ResourceNotReadyException
    Message: string
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ResourceNotReadyException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local record AccessDeniedException
    Message: string
end

local record IllegalActionException
    Message: string
end

local record InternalServiceErrorException
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottlingException
end

local type VoteValue = "YES" | "NO"

local type MemberStatus = "CREATING" | "AVAILABLE" | "CREATE_FAILED" | "UPDATING" | "DELETING" | "DELETED" | "INACCESSIBLE_ENCRYPTION_KEY"

local type Framework = "HYPERLEDGER_FABRIC" | "ETHEREUM"

local type AccessorNetworkType = "ETHEREUM_GOERLI" | "ETHEREUM_MAINNET" | "ETHEREUM_MAINNET_AND_GOERLI" | "POLYGON_MAINNET" | "POLYGON_MUMBAI"

local type AccessorType = "BILLING_TOKEN"

local type NodeStatus = "CREATING" | "AVAILABLE" | "UNHEALTHY" | "CREATE_FAILED" | "UPDATING" | "DELETING" | "DELETED" | "FAILED" | "INACCESSIBLE_ENCRYPTION_KEY"

local type NetworkStatus = "CREATING" | "AVAILABLE" | "CREATE_FAILED" | "DELETING" | "DELETED"

local record M
    CreateAccessorInput: CreateAccessorInput
    CreateAccessorOutput: CreateAccessorOutput
    CreateMemberInput: CreateMemberInput
    CreateMemberOutput: CreateMemberOutput
    CreateNetworkInput: CreateNetworkInput
    CreateNetworkOutput: CreateNetworkOutput
    CreateNodeInput: CreateNodeInput
    CreateNodeOutput: CreateNodeOutput
    CreateProposalInput: CreateProposalInput
    CreateProposalOutput: CreateProposalOutput
    DeleteAccessorInput: DeleteAccessorInput
    DeleteAccessorOutput: DeleteAccessorOutput
    DeleteMemberInput: DeleteMemberInput
    DeleteMemberOutput: DeleteMemberOutput
    DeleteNodeInput: DeleteNodeInput
    DeleteNodeOutput: DeleteNodeOutput
    GetAccessorInput: GetAccessorInput
    GetAccessorOutput: GetAccessorOutput
    GetMemberInput: GetMemberInput
    GetMemberOutput: GetMemberOutput
    GetNetworkInput: GetNetworkInput
    GetNetworkOutput: GetNetworkOutput
    GetNodeInput: GetNodeInput
    GetNodeOutput: GetNodeOutput
    GetProposalInput: GetProposalInput
    GetProposalOutput: GetProposalOutput
    ListAccessorsInput: ListAccessorsInput
    ListAccessorsOutput: ListAccessorsOutput
    ListInvitationsInput: ListInvitationsInput
    ListInvitationsOutput: ListInvitationsOutput
    ListMembersInput: ListMembersInput
    ListMembersOutput: ListMembersOutput
    ListNetworksInput: ListNetworksInput
    ListNetworksOutput: ListNetworksOutput
    ListNodesInput: ListNodesInput
    ListNodesOutput: ListNodesOutput
    ListProposalsInput: ListProposalsInput
    ListProposalsOutput: ListProposalsOutput
    ListProposalVotesInput: ListProposalVotesInput
    ListProposalVotesOutput: ListProposalVotesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RejectInvitationInput: RejectInvitationInput
    RejectInvitationOutput: RejectInvitationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateMemberInput: UpdateMemberInput
    UpdateMemberOutput: UpdateMemberOutput
    UpdateNodeInput: UpdateNodeInput
    UpdateNodeOutput: UpdateNodeOutput
    VoteOnProposalInput: VoteOnProposalInput
    VoteOnProposalOutput: VoteOnProposalOutput
end

return M
