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
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        ProposalDurationInHours = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
        Fabric = {
            type = "structure",
        },
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
        Cloudwatch = {
            type = "structure",
        },
    },
}

M.MemberFabricLogPublishingConfiguration = {
    type = "structure",
    members = {
        CaLogs = {
            type = "structure",
        },
    },
}

M.MemberLogPublishingConfiguration = {
    type = "structure",
    members = {
        Fabric = {
            type = "structure",
        },
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
        FrameworkConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LogPublishingConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        MemberConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Fabric = {
            type = "structure",
        },
    },
}

M.VotingPolicy = {
    type = "structure",
    members = {
        ApprovalThresholdPolicy = {
            type = "structure",
        },
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
        FrameworkConfiguration = {
            type = "structure",
        },
        VotingPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MemberConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        ChaincodeLogs = {
            type = "structure",
        },
        PeerLogs = {
            type = "structure",
        },
    },
}

M.NodeLogPublishingConfiguration = {
    type = "structure",
    members = {
        Fabric = {
            type = "structure",
        },
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
        LogPublishingConfiguration = {
            type = "structure",
        },
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
        NodeConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        Removals = {
            type = "list",
            member_type = "structure",
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
        Actions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        Accessor = {
            type = "structure",
        },
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
        Fabric = {
            type = "structure",
        },
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
        FrameworkAttributes = {
            type = "structure",
        },
        LogPublishingConfiguration = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        Member = {
            type = "structure",
        },
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
        Fabric = {
            type = "structure",
        },
        Ethereum = {
            type = "structure",
        },
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
        FrameworkAttributes = {
            type = "structure",
        },
        VpcEndpointServiceName = {
            type = "string",
        },
        VotingPolicy = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.GetNetworkOutput = {
    type = "structure",
    members = {
        Network = {
            type = "structure",
        },
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
        Fabric = {
            type = "structure",
        },
        Ethereum = {
            type = "structure",
        },
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
        FrameworkAttributes = {
            type = "structure",
        },
        LogPublishingConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        Node = {
            type = "structure",
        },
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
        Actions = {
            type = "structure",
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
        YesVoteCount = {
            type = "number",
        },
        NoVoteCount = {
            type = "number",
        },
        OutstandingVoteCount = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.GetProposalOutput = {
    type = "structure",
    members = {
        Proposal = {
            type = "structure",
        },
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
        NetworkSummary = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListAccessorsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
        LogPublishingConfiguration = {
            type = "structure",
        },
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
        LogPublishingConfiguration = {
            type = "structure",
        },
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
