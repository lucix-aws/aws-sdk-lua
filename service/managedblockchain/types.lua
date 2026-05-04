local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        ClientRequestToken = {
            type = "string",
            traits = {
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
    error = "server",
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
}

M.TooManyTagsException = {
    type = "structure",
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
    members = {
        Fabric = M.MemberFabricConfiguration,
    },
}

M.LogConfiguration = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.LogConfigurations = {
    type = "structure",
    members = {
        Cloudwatch = M.LogConfiguration,
    },
}

M.MemberFabricLogPublishingConfiguration = {
    type = "structure",
    members = {
        CaLogs = M.LogConfigurations,
    },
}

M.MemberLogPublishingConfiguration = {
    type = "structure",
    members = {
        Fabric = M.MemberFabricLogPublishingConfiguration,
    },
}

M.MemberConfiguration = {
    type = "structure",
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
    members = {
        ClientRequestToken = {
            type = "string",
            traits = {
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
    members = {
        MemberId = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
    members = {
        Fabric = M.NetworkFabricConfiguration,
    },
}

M.VotingPolicy = {
    type = "structure",
    members = {
        ApprovalThresholdPolicy = M.ApprovalThresholdPolicy,
    },
}

M.CreateNetworkInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
            traits = {
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
    members = {
        ChaincodeLogs = M.LogConfigurations,
        PeerLogs = M.LogConfigurations,
    },
}

M.NodeLogPublishingConfiguration = {
    type = "structure",
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
    members = {
        ClientRequestToken = {
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
    members = {
        NodeId = {
            type = "string",
        },
    },
}

M.InviteAction = {
    type = "structure",
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
    members = {
        ClientRequestToken = {
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
    members = {
        ProposalId = {
            type = "string",
        },
    },
}

M.DeleteAccessorInput = {
    type = "structure",
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
}

M.DeleteMemberInput = {
    type = "structure",
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
}

M.DeleteNodeInput = {
    type = "structure",
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
}

M.GetAccessorInput = {
    type = "structure",
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
    members = {
        Accessor = M.Accessor,
    },
}

M.GetMemberInput = {
    type = "structure",
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
    members = {
        Member = M.Member,
    },
}

M.GetNetworkInput = {
    type = "structure",
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
    members = {
        ChainId = {
            type = "string",
        },
    },
}

M.NetworkFabricAttributes = {
    type = "structure",
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
    members = {
        Network = M.Network,
    },
}

M.GetNodeInput = {
    type = "structure",
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
    members = {
        Node = M.Node,
    },
}

M.GetProposalInput = {
    type = "structure",
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
        },
        ExpirationDate = {
            type = "timestamp",
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
    members = {
        Proposal = M.Proposal,
    },
}

M.IllegalActionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NetworkSummary = {
    type = "structure",
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
    members = {
        InvitationId = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        ExpirationDate = {
            type = "timestamp",
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
    members = {
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
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
        },
        ExpirationDate = {
            type = "timestamp",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListProposalsOutput = {
    type = "structure",
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
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateMemberInput = {
    type = "structure",
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
}

M.UpdateNodeInput = {
    type = "structure",
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
}

M.VoteOnProposalInput = {
    type = "structure",
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
}

return M
