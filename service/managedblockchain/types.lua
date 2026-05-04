local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccessorNetworkType = {
    ETHEREUM_GOERLI = "ETHEREUM_GOERLI",
    ETHEREUM_MAINNET = "ETHEREUM_MAINNET",
    ETHEREUM_MAINNET_AND_GOERLI = "ETHEREUM_MAINNET_AND_GOERLI",
    POLYGON_MAINNET = "POLYGON_MAINNET",
    POLYGON_MUMBAI = "POLYGON_MUMBAI",
}

M.AccessorStatus = {
    AVAILABLE = "AVAILABLE",
    PENDING_DELETION = "PENDING_DELETION",
    DELETED = "DELETED",
}

M.AccessorType = {
    BILLING_TOKEN = "BILLING_TOKEN",
}

M.Accessor = {
    type = "structure",
    id = "Accessor",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        BillingToken = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Arn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.AccessorSummary = {
    type = "structure",
    id = "AccessorSummary",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Arn = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.ThresholdComparator = {
    GREATER_THAN = "GREATER_THAN",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
}

M.ApprovalThresholdPolicy = {
    type = "structure",
    id = "ApprovalThresholdPolicy",
    members = {
        ThresholdPercentage = {
            type = "integer",
        },
        ProposalDurationInHours = {
            type = "integer",
        },
        ThresholdComparator = {
            type = "string",
        },
    },
}

M.CreateAccessorInput = {
    type = "structure",
    id = "CreateAccessorInput",
    members = {
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        AccessorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.CreateAccessorOutput = {
    type = "structure",
    id = "CreateAccessorOutput",
    members = {
        AccessorId = {
            type = "string",
        },
        BillingToken = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    id = "InternalServiceErrorException",
    error = "server",
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    id = "ResourceLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.MemberFabricConfiguration = {
    type = "structure",
    id = "MemberFabricConfiguration",
    members = {
        AdminUsername = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdminPassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MemberFrameworkConfiguration = {
    type = "structure",
    id = "MemberFrameworkConfiguration",
    members = {
        Fabric = M.MemberFabricConfiguration,
    },
}

M.LogConfiguration = {
    type = "structure",
    id = "LogConfiguration",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.LogConfigurations = {
    type = "structure",
    id = "LogConfigurations",
    members = {
        Cloudwatch = M.LogConfiguration,
    },
}

M.MemberFabricLogPublishingConfiguration = {
    type = "structure",
    id = "MemberFabricLogPublishingConfiguration",
    members = {
        CaLogs = M.LogConfigurations,
    },
}

M.MemberLogPublishingConfiguration = {
    type = "structure",
    id = "MemberLogPublishingConfiguration",
    members = {
        Fabric = M.MemberFabricLogPublishingConfiguration,
    },
}

M.MemberConfiguration = {
    type = "structure",
    id = "MemberConfiguration",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        FrameworkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemberFrameworkConfiguration }),
        LogPublishingConfiguration = M.MemberLogPublishingConfiguration,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.CreateMemberInput = {
    type = "structure",
    id = "CreateMemberInput",
    members = {
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        InvitationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemberConfiguration }),
    },
}

M.CreateMemberOutput = {
    type = "structure",
    id = "CreateMemberOutput",
    members = {
        MemberId = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.ResourceNotReadyException = {
    type = "structure",
    id = "ResourceNotReadyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Framework = {
    HYPERLEDGER_FABRIC = "HYPERLEDGER_FABRIC",
    ETHEREUM = "ETHEREUM",
}

M.Edition = {
    STARTER = "STARTER",
    STANDARD = "STANDARD",
}

M.NetworkFabricConfiguration = {
    type = "structure",
    id = "NetworkFabricConfiguration",
    members = {
        Edition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkFrameworkConfiguration = {
    type = "structure",
    id = "NetworkFrameworkConfiguration",
    members = {
        Fabric = M.NetworkFabricConfiguration,
    },
}

M.VotingPolicy = {
    type = "structure",
    id = "VotingPolicy",
    members = {
        ApprovalThresholdPolicy = M.ApprovalThresholdPolicy,
    },
}

M.CreateNetworkInput = {
    type = "structure",
    id = "CreateNetworkInput",
    members = {
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Framework = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FrameworkVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FrameworkConfiguration = M.NetworkFrameworkConfiguration,
        VotingPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VotingPolicy }),
        MemberConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemberConfiguration }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateNetworkOutput = {
    type = "structure",
    id = "CreateNetworkOutput",
    members = {
        NetworkId = {
            type = "string",
        },
        MemberId = {
            type = "string",
        },
    },
}

M.NodeFabricLogPublishingConfiguration = {
    type = "structure",
    id = "NodeFabricLogPublishingConfiguration",
    members = {
        ChaincodeLogs = M.LogConfigurations,
        PeerLogs = M.LogConfigurations,
    },
}

M.NodeLogPublishingConfiguration = {
    type = "structure",
    id = "NodeLogPublishingConfiguration",
    members = {
        Fabric = M.NodeFabricLogPublishingConfiguration,
    },
}

M.StateDBType = {
    LevelDB = "LevelDB",
    CouchDB = "CouchDB",
}

M.NodeConfiguration = {
    type = "structure",
    id = "NodeConfiguration",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        LogPublishingConfiguration = M.NodeLogPublishingConfiguration,
        StateDB = {
            type = "string",
        },
    },
}

M.CreateNodeInput = {
    type = "structure",
    id = "CreateNodeInput",
    members = {
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
        },
        NodeConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NodeConfiguration }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateNodeOutput = {
    type = "structure",
    id = "CreateNodeOutput",
    members = {
        NodeId = {
            type = "string",
        },
    },
}

M.InviteAction = {
    type = "structure",
    id = "InviteAction",
    members = {
        Principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveAction = {
    type = "structure",
    id = "RemoveAction",
    members = {
        MemberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProposalActions = {
    type = "structure",
    id = "ProposalActions",
    members = {
        Invitations = {
            type = "list",
            member = M.InviteAction,
        },
        Removals = {
            type = "list",
            member = M.RemoveAction,
        },
    },
}

M.CreateProposalInput = {
    type = "structure",
    id = "CreateProposalInput",
    members = {
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Actions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProposalActions }),
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateProposalOutput = {
    type = "structure",
    id = "CreateProposalOutput",
    members = {
        ProposalId = {
            type = "string",
        },
    },
}

M.DeleteAccessorInput = {
    type = "structure",
    id = "DeleteAccessorInput",
    members = {
        AccessorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessorOutput = {
    type = "structure",
    id = "DeleteAccessorOutput",
}

M.DeleteMemberInput = {
    type = "structure",
    id = "DeleteMemberInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMemberOutput = {
    type = "structure",
    id = "DeleteMemberOutput",
}

M.DeleteNodeInput = {
    type = "structure",
    id = "DeleteNodeInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_query = "memberId",
            },
        },
        NodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNodeOutput = {
    type = "structure",
    id = "DeleteNodeOutput",
}

M.GetAccessorInput = {
    type = "structure",
    id = "GetAccessorInput",
    members = {
        AccessorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessorOutput = {
    type = "structure",
    id = "GetAccessorOutput",
    members = {
        Accessor = M.Accessor,
    },
}

M.GetMemberInput = {
    type = "structure",
    id = "GetMemberInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MemberFabricAttributes = {
    type = "structure",
    id = "MemberFabricAttributes",
    members = {
        AdminUsername = {
            type = "string",
        },
        CaEndpoint = {
            type = "string",
        },
    },
}

M.MemberFrameworkAttributes = {
    type = "structure",
    id = "MemberFrameworkAttributes",
    members = {
        Fabric = M.MemberFabricAttributes,
    },
}

M.MemberStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    INACCESSIBLE_ENCRYPTION_KEY = "INACCESSIBLE_ENCRYPTION_KEY",
}

M.Member = {
    type = "structure",
    id = "Member",
    members = {
        NetworkId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        FrameworkAttributes = M.MemberFrameworkAttributes,
        LogPublishingConfiguration = M.MemberLogPublishingConfiguration,
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Arn = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.GetMemberOutput = {
    type = "structure",
    id = "GetMemberOutput",
    members = {
        Member = M.Member,
    },
}

M.GetNetworkInput = {
    type = "structure",
    id = "GetNetworkInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NetworkEthereumAttributes = {
    type = "structure",
    id = "NetworkEthereumAttributes",
    members = {
        ChainId = {
            type = "string",
        },
    },
}

M.NetworkFabricAttributes = {
    type = "structure",
    id = "NetworkFabricAttributes",
    members = {
        OrderingServiceEndpoint = {
            type = "string",
        },
        Edition = {
            type = "string",
        },
    },
}

M.NetworkFrameworkAttributes = {
    type = "structure",
    id = "NetworkFrameworkAttributes",
    members = {
        Fabric = M.NetworkFabricAttributes,
        Ethereum = M.NetworkEthereumAttributes,
    },
}

M.NetworkStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    CREATE_FAILED = "CREATE_FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.Network = {
    type = "structure",
    id = "Network",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Framework = {
            type = "string",
        },
        FrameworkVersion = {
            type = "string",
        },
        FrameworkAttributes = M.NetworkFrameworkAttributes,
        VpcEndpointServiceName = {
            type = "string",
        },
        VotingPolicy = M.VotingPolicy,
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Arn = {
            type = "string",
        },
    },
}

M.GetNetworkOutput = {
    type = "structure",
    id = "GetNetworkOutput",
    members = {
        Network = M.Network,
    },
}

M.GetNodeInput = {
    type = "structure",
    id = "GetNodeInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_query = "memberId",
            },
        },
        NodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NodeEthereumAttributes = {
    type = "structure",
    id = "NodeEthereumAttributes",
    members = {
        HttpEndpoint = {
            type = "string",
        },
        WebSocketEndpoint = {
            type = "string",
        },
    },
}

M.NodeFabricAttributes = {
    type = "structure",
    id = "NodeFabricAttributes",
    members = {
        PeerEndpoint = {
            type = "string",
        },
        PeerEventEndpoint = {
            type = "string",
        },
    },
}

M.NodeFrameworkAttributes = {
    type = "structure",
    id = "NodeFrameworkAttributes",
    members = {
        Fabric = M.NodeFabricAttributes,
        Ethereum = M.NodeEthereumAttributes,
    },
}

M.NodeStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    UNHEALTHY = "UNHEALTHY",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    FAILED = "FAILED",
    INACCESSIBLE_ENCRYPTION_KEY = "INACCESSIBLE_ENCRYPTION_KEY",
}

M.Node = {
    type = "structure",
    id = "Node",
    members = {
        NetworkId = {
            type = "string",
        },
        MemberId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        FrameworkAttributes = M.NodeFrameworkAttributes,
        LogPublishingConfiguration = M.NodeLogPublishingConfiguration,
        StateDB = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Arn = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.GetNodeOutput = {
    type = "structure",
    id = "GetNodeOutput",
    members = {
        Node = M.Node,
    },
}

M.GetProposalInput = {
    type = "structure",
    id = "GetProposalInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProposalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ProposalStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    EXPIRED = "EXPIRED",
    ACTION_FAILED = "ACTION_FAILED",
}

M.Proposal = {
    type = "structure",
    id = "Proposal",
    members = {
        ProposalId = {
            type = "string",
        },
        NetworkId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Actions = M.ProposalActions,
        ProposedByMemberId = {
            type = "string",
        },
        ProposedByMemberName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpirationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        YesVoteCount = {
            type = "integer",
        },
        NoVoteCount = {
            type = "integer",
        },
        OutstandingVoteCount = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Arn = {
            type = "string",
        },
    },
}

M.GetProposalOutput = {
    type = "structure",
    id = "GetProposalOutput",
    members = {
        Proposal = M.Proposal,
    },
}

M.IllegalActionException = {
    type = "structure",
    id = "IllegalActionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NetworkSummary = {
    type = "structure",
    id = "NetworkSummary",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Framework = {
            type = "string",
        },
        FrameworkVersion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Arn = {
            type = "string",
        },
    },
}

M.InvitationStatus = {
    PENDING = "PENDING",
    ACCEPTED = "ACCEPTED",
    ACCEPTING = "ACCEPTING",
    REJECTED = "REJECTED",
    EXPIRED = "EXPIRED",
}

M.Invitation = {
    type = "structure",
    id = "Invitation",
    members = {
        InvitationId = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpirationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
        },
        NetworkSummary = M.NetworkSummary,
        Arn = {
            type = "string",
        },
    },
}

M.ListAccessorsInput = {
    type = "structure",
    id = "ListAccessorsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        NetworkType = {
            type = "string",
            traits = {
                http_query = "networkType",
            },
        },
    },
}

M.ListAccessorsOutput = {
    type = "structure",
    id = "ListAccessorsOutput",
    members = {
        Accessors = {
            type = "list",
            member = M.AccessorSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInvitationsInput = {
    type = "structure",
    id = "ListInvitationsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListInvitationsOutput = {
    type = "structure",
    id = "ListInvitationsOutput",
    members = {
        Invitations = {
            type = "list",
            member = M.Invitation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMembersInput = {
    type = "structure",
    id = "ListMembersInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        IsOwned = {
            type = "boolean",
            traits = {
                http_query = "isOwned",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.MemberSummary = {
    type = "structure",
    id = "MemberSummary",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        IsOwned = {
            type = "boolean",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListMembersOutput = {
    type = "structure",
    id = "ListMembersOutput",
    members = {
        Members = {
            type = "list",
            member = M.MemberSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListNetworksInput = {
    type = "structure",
    id = "ListNetworksInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        Framework = {
            type = "string",
            traits = {
                http_query = "framework",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListNetworksOutput = {
    type = "structure",
    id = "ListNetworksOutput",
    members = {
        Networks = {
            type = "list",
            member = M.NetworkSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListNodesInput = {
    type = "structure",
    id = "ListNodesInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_query = "memberId",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.NodeSummary = {
    type = "structure",
    id = "NodeSummary",
    members = {
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListNodesOutput = {
    type = "structure",
    id = "ListNodesOutput",
    members = {
        Nodes = {
            type = "list",
            member = M.NodeSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProposalsInput = {
    type = "structure",
    id = "ListProposalsInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ProposalSummary = {
    type = "structure",
    id = "ProposalSummary",
    members = {
        ProposalId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ProposedByMemberId = {
            type = "string",
        },
        ProposedByMemberName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpirationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListProposalsOutput = {
    type = "structure",
    id = "ListProposalsOutput",
    members = {
        Proposals = {
            type = "list",
            member = M.ProposalSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProposalVotesInput = {
    type = "structure",
    id = "ListProposalVotesInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProposalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.VoteValue = {
    YES = "YES",
    NO = "NO",
}

M.VoteSummary = {
    type = "structure",
    id = "VoteSummary",
    members = {
        Vote = {
            type = "string",
        },
        MemberName = {
            type = "string",
        },
        MemberId = {
            type = "string",
        },
    },
}

M.ListProposalVotesOutput = {
    type = "structure",
    id = "ListProposalVotesOutput",
    members = {
        ProposalVotes = {
            type = "list",
            member = M.VoteSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RejectInvitationInput = {
    type = "structure",
    id = "RejectInvitationInput",
    members = {
        InvitationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RejectInvitationOutput = {
    type = "structure",
    id = "RejectInvitationOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateMemberInput = {
    type = "structure",
    id = "UpdateMemberInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LogPublishingConfiguration = M.MemberLogPublishingConfiguration,
    },
}

M.UpdateMemberOutput = {
    type = "structure",
    id = "UpdateMemberOutput",
}

M.UpdateNodeInput = {
    type = "structure",
    id = "UpdateNodeInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
        },
        NodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LogPublishingConfiguration = M.NodeLogPublishingConfiguration,
    },
}

M.UpdateNodeOutput = {
    type = "structure",
    id = "UpdateNodeOutput",
}

M.VoteOnProposalInput = {
    type = "structure",
    id = "VoteOnProposalInput",
    members = {
        NetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProposalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VoterMemberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Vote = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VoteOnProposalOutput = {
    type = "structure",
    id = "VoteOnProposalOutput",
}

return M
