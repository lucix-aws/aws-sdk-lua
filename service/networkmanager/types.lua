local M = {}

M.AcceptAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AttachmentType = {
    CONNECT = "CONNECT",
    SITE_TO_SITE_VPN = "SITE_TO_SITE_VPN",
    VPC = "VPC",
    DIRECT_CONNECT_GATEWAY = "DIRECT_CONNECT_GATEWAY",
    TRANSIT_GATEWAY_ROUTE_TABLE = "TRANSIT_GATEWAY_ROUTE_TABLE",
}

M.AttachmentErrorCode = {
    VPC_NOT_FOUND = "VPC_NOT_FOUND",
    SUBNET_NOT_FOUND = "SUBNET_NOT_FOUND",
    SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE = "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE",
    SUBNET_NO_FREE_ADDRESSES = "SUBNET_NO_FREE_ADDRESSES",
    SUBNET_UNSUPPORTED_AVAILABILITY_ZONE = "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE",
    SUBNET_NO_IPV6_CIDRS = "SUBNET_NO_IPV6_CIDRS",
    VPN_CONNECTION_NOT_FOUND = "VPN_CONNECTION_NOT_FOUND",
    MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED = "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED",
    DIRECT_CONNECT_GATEWAY_NOT_FOUND = "DIRECT_CONNECT_GATEWAY_NOT_FOUND",
    DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS = "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS",
    DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF = "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF",
    VPN_EXISTING_ASSOCIATIONS = "VPN_EXISTING_ASSOCIATIONS",
    VPC_UNSUPPORTED_FEATURES = "VPC_UNSUPPORTED_FEATURES",
}

M.AttachmentError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ProposedNetworkFunctionGroupChange = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AttachmentPolicyRuleNumber = {
            type = "integer",
        },
        NetworkFunctionGroupName = {
            type = "string",
        },
    },
}

M.ProposedSegmentChange = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AttachmentPolicyRuleNumber = {
            type = "integer",
        },
        SegmentName = {
            type = "string",
        },
    },
}

M.AttachmentState = {
    REJECTED = "REJECTED",
    PENDING_ATTACHMENT_ACCEPTANCE = "PENDING_ATTACHMENT_ACCEPTANCE",
    CREATING = "CREATING",
    FAILED = "FAILED",
    AVAILABLE = "AVAILABLE",
    UPDATING = "UPDATING",
    PENDING_NETWORK_UPDATE = "PENDING_NETWORK_UPDATE",
    PENDING_TAG_ACCEPTANCE = "PENDING_TAG_ACCEPTANCE",
    DELETING = "DELETING",
}

M.Attachment = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        CoreNetworkArn = {
            type = "string",
        },
        AttachmentId = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        AttachmentType = {
            type = "string",
        },
        State = {
            type = "string",
        },
        EdgeLocation = {
            type = "string",
        },
        EdgeLocations = {
            type = "list",
            member = { type = "string" },
        },
        ResourceArn = {
            type = "string",
        },
        AttachmentPolicyRuleNumber = {
            type = "integer",
        },
        SegmentName = {
            type = "string",
        },
        NetworkFunctionGroupName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ProposedSegmentChange = M.ProposedSegmentChange,
        ProposedNetworkFunctionGroupChange = M.ProposedNetworkFunctionGroupChange,
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        LastModificationErrors = {
            type = "list",
            member = M.AttachmentError,
        },
    },
}

M.AcceptAttachmentOutput = {
    type = "structure",
    members = {
        Attachment = M.Attachment,
    },
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UnknownOperation",
    CANNOT_PARSE = "CannotParse",
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    OTHER = "Other",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
        Fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.AccountStatus = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        SLRDeploymentStatus = {
            type = "string",
        },
    },
}

M.AssociateConnectPeerInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectPeerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinkId = {
            type = "string",
        },
    },
}

M.ConnectPeerAssociationState = {
    pending = "PENDING",
    available = "AVAILABLE",
    deleting = "DELETING",
    deleted = "DELETED",
}

M.ConnectPeerAssociation = {
    type = "structure",
    members = {
        ConnectPeerId = {
            type = "string",
        },
        GlobalNetworkId = {
            type = "string",
        },
        DeviceId = {
            type = "string",
        },
        LinkId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.AssociateConnectPeerOutput = {
    type = "structure",
    members = {
        ConnectPeerAssociation = M.ConnectPeerAssociation,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        LimitCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateCustomerGatewayInput = {
    type = "structure",
    members = {
        CustomerGatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinkId = {
            type = "string",
        },
    },
}

M.CustomerGatewayAssociationState = {
    pending = "PENDING",
    available = "AVAILABLE",
    deleting = "DELETING",
    deleted = "DELETED",
}

M.CustomerGatewayAssociation = {
    type = "structure",
    members = {
        CustomerGatewayArn = {
            type = "string",
        },
        GlobalNetworkId = {
            type = "string",
        },
        DeviceId = {
            type = "string",
        },
        LinkId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.AssociateCustomerGatewayOutput = {
    type = "structure",
    members = {
        CustomerGatewayAssociation = M.CustomerGatewayAssociation,
    },
}

M.AssociateLinkInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LinkAssociationState = {
    pending = "PENDING",
    available = "AVAILABLE",
    deleting = "DELETING",
    deleted = "DELETED",
}

M.LinkAssociation = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
        },
        DeviceId = {
            type = "string",
        },
        LinkId = {
            type = "string",
        },
        LinkAssociationState = {
            type = "string",
        },
    },
}

M.AssociateLinkOutput = {
    type = "structure",
    members = {
        LinkAssociation = M.LinkAssociation,
    },
}

M.AssociateTransitGatewayConnectPeerInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TransitGatewayConnectPeerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinkId = {
            type = "string",
        },
    },
}

M.TransitGatewayConnectPeerAssociationState = {
    pending = "PENDING",
    available = "AVAILABLE",
    deleting = "DELETING",
    deleted = "DELETED",
}

M.TransitGatewayConnectPeerAssociation = {
    type = "structure",
    members = {
        TransitGatewayConnectPeerArn = {
            type = "string",
        },
        GlobalNetworkId = {
            type = "string",
        },
        DeviceId = {
            type = "string",
        },
        LinkId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.AssociateTransitGatewayConnectPeerOutput = {
    type = "structure",
    members = {
        TransitGatewayConnectPeerAssociation = M.TransitGatewayConnectPeerAssociation,
    },
}

M.AttachmentRoutingPolicyAssociationSummary = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
        },
        PendingRoutingPolicies = {
            type = "list",
            member = { type = "string" },
        },
        AssociatedRoutingPolicies = {
            type = "list",
            member = { type = "string" },
        },
        RoutingPolicyLabel = {
            type = "string",
        },
    },
}

M.AWSLocation = {
    type = "structure",
    members = {
        Zone = {
            type = "string",
        },
        SubnetArn = {
            type = "string",
        },
    },
}

M.Bandwidth = {
    type = "structure",
    members = {
        UploadSpeed = {
            type = "integer",
        },
        DownloadSpeed = {
            type = "integer",
        },
    },
}

M.BgpOptions = {
    type = "structure",
    members = {
        PeerAsn = {
            type = "long",
        },
    },
}

M.ChangeAction = {
    ADD = "ADD",
    MODIFY = "MODIFY",
    REMOVE = "REMOVE",
}

M.ChangeSetState = {
    PENDING_GENERATION = "PENDING_GENERATION",
    FAILED_GENERATION = "FAILED_GENERATION",
    READY_TO_EXECUTE = "READY_TO_EXECUTE",
    EXECUTING = "EXECUTING",
    EXECUTION_SUCCEEDED = "EXECUTION_SUCCEEDED",
    OUT_OF_DATE = "OUT_OF_DATE",
}

M.ChangeStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
}

M.ChangeType = {
    CORE_NETWORK_SEGMENT = "CORE_NETWORK_SEGMENT",
    NETWORK_FUNCTION_GROUP = "NETWORK_FUNCTION_GROUP",
    CORE_NETWORK_EDGE = "CORE_NETWORK_EDGE",
    ATTACHMENT_MAPPING = "ATTACHMENT_MAPPING",
    ATTACHMENT_ROUTE_PROPAGATION = "ATTACHMENT_ROUTE_PROPAGATION",
    ATTACHMENT_ROUTE_STATIC = "ATTACHMENT_ROUTE_STATIC",
    ROUTING_POLICY = "ROUTING_POLICY",
    ROUTING_POLICY_SEGMENT_ASSOCIATION = "ROUTING_POLICY_SEGMENT_ASSOCIATION",
    ROUTING_POLICY_EDGE_ASSOCIATION = "ROUTING_POLICY_EDGE_ASSOCIATION",
    ROUTING_POLICY_ATTACHMENT_ASSOCIATION = "ROUTING_POLICY_ATTACHMENT_ASSOCIATION",
    CORE_NETWORK_CONFIGURATION = "CORE_NETWORK_CONFIGURATION",
    SEGMENTS_CONFIGURATION = "SEGMENTS_CONFIGURATION",
    SEGMENT_ACTIONS_CONFIGURATION = "SEGMENT_ACTIONS_CONFIGURATION",
    ATTACHMENT_POLICIES_CONFIGURATION = "ATTACHMENT_POLICIES_CONFIGURATION",
}

M.TunnelProtocol = {
    GRE = "GRE",
    NO_ENCAP = "NO_ENCAP",
}

M.ConnectAttachmentOptions = {
    type = "structure",
    members = {
        Protocol = {
            type = "string",
        },
    },
}

M.ConnectAttachment = {
    type = "structure",
    members = {
        Attachment = M.Attachment,
        TransportAttachmentId = {
            type = "string",
        },
        Options = M.ConnectAttachmentOptions,
    },
}

M.ConnectionState = {
    pending = "PENDING",
    available = "AVAILABLE",
    deleting = "DELETING",
    updating = "UPDATING",
}

M.Connection = {
    type = "structure",
    members = {
        ConnectionId = {
            type = "string",
        },
        ConnectionArn = {
            type = "string",
        },
        GlobalNetworkId = {
            type = "string",
        },
        DeviceId = {
            type = "string",
        },
        ConnectedDeviceId = {
            type = "string",
        },
        LinkId = {
            type = "string",
        },
        ConnectedLinkId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ConnectionStatus = {
    UP = "UP",
    DOWN = "DOWN",
}

M.ConnectionType = {
    BGP = "BGP",
    IPSEC = "IPSEC",
}

M.ConnectionHealth = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.ConnectPeerBgpConfiguration = {
    type = "structure",
    members = {
        CoreNetworkAsn = {
            type = "long",
        },
        PeerAsn = {
            type = "long",
        },
        CoreNetworkAddress = {
            type = "string",
        },
        PeerAddress = {
            type = "string",
        },
    },
}

M.ConnectPeerConfiguration = {
    type = "structure",
    members = {
        CoreNetworkAddress = {
            type = "string",
        },
        PeerAddress = {
            type = "string",
        },
        InsideCidrBlocks = {
            type = "list",
            member = { type = "string" },
        },
        Protocol = {
            type = "string",
        },
        BgpConfigurations = {
            type = "list",
            member = M.ConnectPeerBgpConfiguration,
        },
    },
}

M.ConnectPeerErrorCode = {
    EDGE_LOCATION_NO_FREE_IPS = "EDGE_LOCATION_NO_FREE_IPS",
    EDGE_LOCATION_PEER_DUPLICATE = "EDGE_LOCATION_PEER_DUPLICATE",
    SUBNET_NOT_FOUND = "SUBNET_NOT_FOUND",
    IP_OUTSIDE_SUBNET_CIDR_RANGE = "IP_OUTSIDE_SUBNET_CIDR_RANGE",
    INVALID_INSIDE_CIDR_BLOCK = "INVALID_INSIDE_CIDR_BLOCK",
    NO_ASSOCIATED_CIDR_BLOCK = "NO_ASSOCIATED_CIDR_BLOCK",
}

M.ConnectPeerError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ConnectPeerState = {
    CREATING = "CREATING",
    FAILED = "FAILED",
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
}

M.ConnectPeer = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        ConnectAttachmentId = {
            type = "string",
        },
        ConnectPeerId = {
            type = "string",
        },
        EdgeLocation = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Configuration = M.ConnectPeerConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SubnetArn = {
            type = "string",
        },
        LastModificationErrors = {
            type = "list",
            member = M.ConnectPeerError,
        },
    },
}

M.ConnectPeerSummary = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        ConnectAttachmentId = {
            type = "string",
        },
        ConnectPeerId = {
            type = "string",
        },
        EdgeLocation = {
            type = "string",
        },
        ConnectPeerState = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SubnetArn = {
            type = "string",
        },
    },
}

M.CoreNetworkEdge = {
    type = "structure",
    members = {
        EdgeLocation = {
            type = "string",
        },
        Asn = {
            type = "long",
        },
        InsideCidrBlocks = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ServiceInsertionSegments = {
    type = "structure",
    members = {
        SendVia = {
            type = "list",
            member = { type = "string" },
        },
        SendTo = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CoreNetworkNetworkFunctionGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        EdgeLocations = {
            type = "list",
            member = { type = "string" },
        },
        Segments = M.ServiceInsertionSegments,
    },
}

M.CoreNetworkSegment = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        EdgeLocations = {
            type = "list",
            member = { type = "string" },
        },
        SharedSegments = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CoreNetworkState = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
}

M.CoreNetwork = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
        },
        CoreNetworkId = {
            type = "string",
        },
        CoreNetworkArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        Segments = {
            type = "list",
            member = M.CoreNetworkSegment,
        },
        NetworkFunctionGroups = {
            type = "list",
            member = M.CoreNetworkNetworkFunctionGroup,
        },
        Edges = {
            type = "list",
            member = M.CoreNetworkEdge,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.RoutingPolicyAssociationDetail = {
    type = "structure",
    members = {
        RoutingPolicyNames = {
            type = "list",
            member = { type = "string" },
        },
        SharedSegments = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RoutingPolicyDirection = {
    INBOUND = "inbound",
    OUTBOUND = "outbound",
}

M.SegmentActionServiceInsertion = {
    SEND_VIA = "send-via",
    SEND_TO = "send-to",
}

M.SendViaMode = {
    DUAL_HOP = "dual-hop",
    SINGLE_HOP = "single-hop",
}

M.NetworkFunctionGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.EdgeOverride = {
    type = "structure",
    members = {
        EdgeSets = {
            type = "list",
            member = { type = "list" },
        },
        UseEdge = {
            type = "string",
        },
    },
}

M.Via = {
    type = "structure",
    members = {
        NetworkFunctionGroups = {
            type = "list",
            member = M.NetworkFunctionGroup,
        },
        WithEdgeOverrides = {
            type = "list",
            member = M.EdgeOverride,
        },
    },
}

M.WhenSentTo = {
    type = "structure",
    members = {
        WhenSentToSegmentsList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ServiceInsertionAction = {
    type = "structure",
    members = {
        Action = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        WhenSentTo = M.WhenSentTo,
        Via = M.Via,
    },
}

M.CoreNetworkChangeValues = {
    type = "structure",
    members = {
        SegmentName = {
            type = "string",
        },
        NetworkFunctionGroupName = {
            type = "string",
        },
        EdgeLocations = {
            type = "list",
            member = { type = "string" },
        },
        Asn = {
            type = "long",
        },
        Cidr = {
            type = "string",
        },
        DestinationIdentifier = {
            type = "string",
        },
        InsideCidrBlocks = {
            type = "list",
            member = { type = "string" },
        },
        SharedSegments = {
            type = "list",
            member = { type = "string" },
        },
        ServiceInsertionActions = {
            type = "list",
            member = M.ServiceInsertionAction,
        },
        VpnEcmpSupport = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DnsSupport = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SecurityGroupReferencingSupport = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RoutingPolicyDirection = {
            type = "string",
        },
        RoutingPolicy = {
            type = "string",
        },
        PeerEdgeLocations = {
            type = "list",
            member = { type = "string" },
        },
        AttachmentId = {
            type = "string",
        },
        RoutingPolicyAssociationDetails = {
            type = "list",
            member = M.RoutingPolicyAssociationDetail,
        },
    },
}

M.CoreNetworkChange = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Identifier = {
            type = "string",
        },
        PreviousValues = M.CoreNetworkChangeValues,
        NewValues = M.CoreNetworkChangeValues,
        IdentifierPath = {
            type = "string",
        },
    },
}

M.CoreNetworkChangeEventValues = {
    type = "structure",
    members = {
        EdgeLocation = {
            type = "string",
        },
        PeerEdgeLocation = {
            type = "string",
        },
        RoutingPolicyDirection = {
            type = "string",
        },
        SegmentName = {
            type = "string",
        },
        NetworkFunctionGroupName = {
            type = "string",
        },
        AttachmentId = {
            type = "string",
        },
        Cidr = {
            type = "string",
        },
        RoutingPolicyAssociationDetails = {
            type = "list",
            member = M.RoutingPolicyAssociationDetail,
        },
    },
}

M.CoreNetworkChangeEvent = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        IdentifierPath = {
            type = "string",
        },
        EventTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Values = M.CoreNetworkChangeEventValues,
    },
}

M.CoreNetworkNetworkFunctionGroupIdentifier = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        NetworkFunctionGroupName = {
            type = "string",
        },
        EdgeLocation = {
            type = "string",
        },
    },
}

M.CoreNetworkPolicyAlias = {
    LIVE = "LIVE",
    LATEST = "LATEST",
}

M.CoreNetworkPolicyError = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Path = {
            type = "string",
        },
    },
}

M.CoreNetworkPolicy = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        PolicyVersionId = {
            type = "integer",
        },
        Alias = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ChangeSetState = {
            type = "string",
        },
        PolicyErrors = {
            type = "list",
            member = M.CoreNetworkPolicyError,
        },
        PolicyDocument = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
    },
}

M.CoreNetworkPolicyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member = M.CoreNetworkPolicyError,
        },
    },
}

M.CoreNetworkPolicyVersion = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        PolicyVersionId = {
            type = "integer",
        },
        Alias = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ChangeSetState = {
            type = "string",
        },
    },
}

M.RoutingInformationNextHop = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
        },
        CoreNetworkAttachmentId = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        SegmentName = {
            type = "string",
        },
        EdgeLocation = {
            type = "string",
        },
    },
}

M.CoreNetworkRoutingInformation = {
    type = "structure",
    members = {
        Prefix = {
            type = "string",
        },
        NextHop = M.RoutingInformationNextHop,
        LocalPreference = {
            type = "string",
        },
        Med = {
            type = "string",
        },
        AsPath = {
            type = "list",
            member = { type = "string" },
        },
        Communities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CoreNetworkSegmentEdgeIdentifier = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        SegmentName = {
            type = "string",
        },
        EdgeLocation = {
            type = "string",
        },
    },
}

M.CoreNetworkSummary = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        CoreNetworkArn = {
            type = "string",
        },
        GlobalNetworkId = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateConnectAttachmentInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgeLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransportAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoutingPolicyLabel = {
            type = "string",
        },
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectAttachmentOptions }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateConnectAttachmentOutput = {
    type = "structure",
    members = {
        ConnectAttachment = M.ConnectAttachment,
    },
}

M.CreateConnectionInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectedDeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinkId = {
            type = "string",
        },
        ConnectedLinkId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateConnectionOutput = {
    type = "structure",
    members = {
        Connection = M.Connection,
    },
}

M.CreateConnectPeerInput = {
    type = "structure",
    members = {
        ConnectAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CoreNetworkAddress = {
            type = "string",
        },
        PeerAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BgpOptions = M.BgpOptions,
        InsideCidrBlocks = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        SubnetArn = {
            type = "string",
        },
    },
}

M.CreateConnectPeerOutput = {
    type = "structure",
    members = {
        ConnectPeer = M.ConnectPeer,
    },
}

M.CreateCoreNetworkInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        PolicyDocument = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateCoreNetworkOutput = {
    type = "structure",
    members = {
        CoreNetwork = M.CoreNetwork,
    },
}

M.CreateCoreNetworkPrefixListAssociationInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrefixListArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrefixListAlias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateCoreNetworkPrefixListAssociationOutput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        PrefixListArn = {
            type = "string",
        },
        PrefixListAlias = {
            type = "string",
        },
    },
}

M.Location = {
    type = "structure",
    members = {
        Address = {
            type = "string",
        },
        Latitude = {
            type = "string",
        },
        Longitude = {
            type = "string",
        },
    },
}

M.CreateDeviceInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AWSLocation = M.AWSLocation,
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Vendor = {
            type = "string",
        },
        Model = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        Location = M.Location,
        SiteId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DeviceState = {
    pending = "PENDING",
    available = "AVAILABLE",
    deleting = "DELETING",
    updating = "UPDATING",
}

M.Device = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
        },
        DeviceArn = {
            type = "string",
        },
        GlobalNetworkId = {
            type = "string",
        },
        AWSLocation = M.AWSLocation,
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Vendor = {
            type = "string",
        },
        Model = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        Location = M.Location,
        SiteId = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDeviceOutput = {
    type = "structure",
    members = {
        Device = M.Device,
    },
}

M.CreateDirectConnectGatewayAttachmentInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DirectConnectGatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoutingPolicyLabel = {
            type = "string",
        },
        EdgeLocations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DirectConnectGatewayAttachment = {
    type = "structure",
    members = {
        Attachment = M.Attachment,
        DirectConnectGatewayArn = {
            type = "string",
        },
    },
}

M.CreateDirectConnectGatewayAttachmentOutput = {
    type = "structure",
    members = {
        DirectConnectGatewayAttachment = M.DirectConnectGatewayAttachment,
    },
}

M.CreateGlobalNetworkInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GlobalNetworkState = {
    pending = "PENDING",
    available = "AVAILABLE",
    deleting = "DELETING",
    updating = "UPDATING",
}

M.GlobalNetwork = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
        },
        GlobalNetworkArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateGlobalNetworkOutput = {
    type = "structure",
    members = {
        GlobalNetwork = M.GlobalNetwork,
    },
}

M.CreateLinkInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Bandwidth = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Bandwidth }),
        Provider = {
            type = "string",
        },
        SiteId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.LinkState = {
    pending = "PENDING",
    available = "AVAILABLE",
    deleting = "DELETING",
    updating = "UPDATING",
}

M.Link = {
    type = "structure",
    members = {
        LinkId = {
            type = "string",
        },
        LinkArn = {
            type = "string",
        },
        GlobalNetworkId = {
            type = "string",
        },
        SiteId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Bandwidth = M.Bandwidth,
        Provider = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateLinkOutput = {
    type = "structure",
    members = {
        Link = M.Link,
    },
}

M.CreateSiteInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Location = M.Location,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.SiteState = {
    pending = "PENDING",
    available = "AVAILABLE",
    deleting = "DELETING",
    updating = "UPDATING",
}

M.Site = {
    type = "structure",
    members = {
        SiteId = {
            type = "string",
        },
        SiteArn = {
            type = "string",
        },
        GlobalNetworkId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Location = M.Location,
        CreatedAt = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateSiteOutput = {
    type = "structure",
    members = {
        Site = M.Site,
    },
}

M.CreateSiteToSiteVpnAttachmentInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpnConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoutingPolicyLabel = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.SiteToSiteVpnAttachment = {
    type = "structure",
    members = {
        Attachment = M.Attachment,
        VpnConnectionArn = {
            type = "string",
        },
    },
}

M.CreateSiteToSiteVpnAttachmentOutput = {
    type = "structure",
    members = {
        SiteToSiteVpnAttachment = M.SiteToSiteVpnAttachment,
    },
}

M.CreateTransitGatewayPeeringInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransitGatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.PeeringErrorCode = {
    TRANSIT_GATEWAY_NOT_FOUND = "TRANSIT_GATEWAY_NOT_FOUND",
    TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED = "TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED",
    MISSING_REQUIRED_PERMISSIONS = "MISSING_PERMISSIONS",
    INTERNAL_ERROR = "INTERNAL_ERROR",
    EDGE_LOCATION_PEER_DUPLICATE = "EDGE_LOCATION_PEER_DUPLICATE",
    INVALID_TRANSIT_GATEWAY_STATE = "INVALID_TRANSIT_GATEWAY_STATE",
}

M.PermissionsErrorContext = {
    type = "structure",
    members = {
        MissingPermission = {
            type = "string",
        },
    },
}

M.PeeringError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        MissingPermissionsContext = M.PermissionsErrorContext,
    },
}

M.PeeringType = {
    TRANSIT_GATEWAY = "TRANSIT_GATEWAY",
}

M.PeeringState = {
    CREATING = "CREATING",
    FAILED = "FAILED",
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
}

M.Peering = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        CoreNetworkArn = {
            type = "string",
        },
        PeeringId = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        PeeringType = {
            type = "string",
        },
        State = {
            type = "string",
        },
        EdgeLocation = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastModificationErrors = {
            type = "list",
            member = M.PeeringError,
        },
    },
}

M.TransitGatewayPeering = {
    type = "structure",
    members = {
        Peering = M.Peering,
        TransitGatewayArn = {
            type = "string",
        },
        TransitGatewayPeeringAttachmentId = {
            type = "string",
        },
    },
}

M.CreateTransitGatewayPeeringOutput = {
    type = "structure",
    members = {
        TransitGatewayPeering = M.TransitGatewayPeering,
    },
}

M.CreateTransitGatewayRouteTableAttachmentInput = {
    type = "structure",
    members = {
        PeeringId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransitGatewayRouteTableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoutingPolicyLabel = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.TransitGatewayRouteTableAttachment = {
    type = "structure",
    members = {
        Attachment = M.Attachment,
        PeeringId = {
            type = "string",
        },
        TransitGatewayRouteTableArn = {
            type = "string",
        },
    },
}

M.CreateTransitGatewayRouteTableAttachmentOutput = {
    type = "structure",
    members = {
        TransitGatewayRouteTableAttachment = M.TransitGatewayRouteTableAttachment,
    },
}

M.VpcOptions = {
    type = "structure",
    members = {
        Ipv6Support = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ApplianceModeSupport = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DnsSupport = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SecurityGroupReferencingSupport = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateVpcAttachmentInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Options = M.VpcOptions,
        RoutingPolicyLabel = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.VpcAttachment = {
    type = "structure",
    members = {
        Attachment = M.Attachment,
        SubnetArns = {
            type = "list",
            member = { type = "string" },
        },
        Options = M.VpcOptions,
    },
}

M.CreateVpcAttachmentOutput = {
    type = "structure",
    members = {
        VpcAttachment = M.VpcAttachment,
    },
}

M.DeleteAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAttachmentOutput = {
    type = "structure",
    members = {
        Attachment = M.Attachment,
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
    members = {
        Connection = M.Connection,
    },
}

M.DeleteConnectPeerInput = {
    type = "structure",
    members = {
        ConnectPeerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConnectPeerOutput = {
    type = "structure",
    members = {
        ConnectPeer = M.ConnectPeer,
    },
}

M.DeleteCoreNetworkInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCoreNetworkOutput = {
    type = "structure",
    members = {
        CoreNetwork = M.CoreNetwork,
    },
}

M.DeleteCoreNetworkPolicyVersionInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyVersionId = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCoreNetworkPolicyVersionOutput = {
    type = "structure",
    members = {
        CoreNetworkPolicy = M.CoreNetworkPolicy,
    },
}

M.DeleteCoreNetworkPrefixListAssociationInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PrefixListArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCoreNetworkPrefixListAssociationOutput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        PrefixListArn = {
            type = "string",
        },
    },
}

M.DeleteDeviceInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDeviceOutput = {
    type = "structure",
    members = {
        Device = M.Device,
    },
}

M.DeleteGlobalNetworkInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGlobalNetworkOutput = {
    type = "structure",
    members = {
        GlobalNetwork = M.GlobalNetwork,
    },
}

M.DeleteLinkInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LinkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLinkOutput = {
    type = "structure",
    members = {
        Link = M.Link,
    },
}

M.DeletePeeringInput = {
    type = "structure",
    members = {
        PeeringId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePeeringOutput = {
    type = "structure",
    members = {
        Peering = M.Peering,
    },
}

M.DeleteResourcePolicyInput = {
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

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.DeleteSiteInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SiteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSiteOutput = {
    type = "structure",
    members = {
        Site = M.Site,
    },
}

M.DeregisterTransitGatewayInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TransitGatewayArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TransitGatewayRegistrationState = {
    pending = "PENDING",
    available = "AVAILABLE",
    deleting = "DELETING",
    deleted = "DELETED",
    failed = "FAILED",
}

M.TransitGatewayRegistrationStateReason = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.TransitGatewayRegistration = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
        },
        TransitGatewayArn = {
            type = "string",
        },
        State = M.TransitGatewayRegistrationStateReason,
    },
}

M.DeregisterTransitGatewayOutput = {
    type = "structure",
    members = {
        TransitGatewayRegistration = M.TransitGatewayRegistration,
    },
}

M.DescribeGlobalNetworksInput = {
    type = "structure",
    members = {
        GlobalNetworkIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "globalNetworkIds",
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

M.DescribeGlobalNetworksOutput = {
    type = "structure",
    members = {
        GlobalNetworks = {
            type = "list",
            member = M.GlobalNetwork,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisassociateConnectPeerInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectPeerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateConnectPeerOutput = {
    type = "structure",
    members = {
        ConnectPeerAssociation = M.ConnectPeerAssociation,
    },
}

M.DisassociateCustomerGatewayInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CustomerGatewayArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateCustomerGatewayOutput = {
    type = "structure",
    members = {
        CustomerGatewayAssociation = M.CustomerGatewayAssociation,
    },
}

M.DisassociateLinkInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                http_query = "deviceId",
                required = true,
            },
        },
        LinkId = {
            type = "string",
            traits = {
                http_query = "linkId",
                required = true,
            },
        },
    },
}

M.DisassociateLinkOutput = {
    type = "structure",
    members = {
        LinkAssociation = M.LinkAssociation,
    },
}

M.DisassociateTransitGatewayConnectPeerInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TransitGatewayConnectPeerArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateTransitGatewayConnectPeerOutput = {
    type = "structure",
    members = {
        TransitGatewayConnectPeerAssociation = M.TransitGatewayConnectPeerAssociation,
    },
}

M.ExecuteCoreNetworkChangeSetInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyVersionId = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ExecuteCoreNetworkChangeSetOutput = {
    type = "structure",
}

M.GetConnectAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectAttachmentOutput = {
    type = "structure",
    members = {
        ConnectAttachment = M.ConnectAttachment,
    },
}

M.GetConnectionsInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectionIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "connectionIds",
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                http_query = "deviceId",
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

M.GetConnectionsOutput = {
    type = "structure",
    members = {
        Connections = {
            type = "list",
            member = M.Connection,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetConnectPeerInput = {
    type = "structure",
    members = {
        ConnectPeerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectPeerOutput = {
    type = "structure",
    members = {
        ConnectPeer = M.ConnectPeer,
    },
}

M.GetConnectPeerAssociationsInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectPeerIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "connectPeerIds",
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

M.GetConnectPeerAssociationsOutput = {
    type = "structure",
    members = {
        ConnectPeerAssociations = {
            type = "list",
            member = M.ConnectPeerAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCoreNetworkInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCoreNetworkOutput = {
    type = "structure",
    members = {
        CoreNetwork = M.CoreNetwork,
    },
}

M.GetCoreNetworkChangeEventsInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyVersionId = {
            type = "integer",
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

M.GetCoreNetworkChangeEventsOutput = {
    type = "structure",
    members = {
        CoreNetworkChangeEvents = {
            type = "list",
            member = M.CoreNetworkChangeEvent,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCoreNetworkChangeSetInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyVersionId = {
            type = "integer",
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

M.GetCoreNetworkChangeSetOutput = {
    type = "structure",
    members = {
        CoreNetworkChanges = {
            type = "list",
            member = M.CoreNetworkChange,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCoreNetworkPolicyInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyVersionId = {
            type = "integer",
            traits = {
                http_query = "policyVersionId",
            },
        },
        Alias = {
            type = "string",
            traits = {
                http_query = "alias",
            },
        },
    },
}

M.GetCoreNetworkPolicyOutput = {
    type = "structure",
    members = {
        CoreNetworkPolicy = M.CoreNetworkPolicy,
    },
}

M.GetCustomerGatewayAssociationsInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CustomerGatewayArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "customerGatewayArns",
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

M.GetCustomerGatewayAssociationsOutput = {
    type = "structure",
    members = {
        CustomerGatewayAssociations = {
            type = "list",
            member = M.CustomerGatewayAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetDevicesInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "deviceIds",
            },
        },
        SiteId = {
            type = "string",
            traits = {
                http_query = "siteId",
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

M.GetDevicesOutput = {
    type = "structure",
    members = {
        Devices = {
            type = "list",
            member = M.Device,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetDirectConnectGatewayAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDirectConnectGatewayAttachmentOutput = {
    type = "structure",
    members = {
        DirectConnectGatewayAttachment = M.DirectConnectGatewayAttachment,
    },
}

M.GetLinkAssociationsInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                http_query = "deviceId",
            },
        },
        LinkId = {
            type = "string",
            traits = {
                http_query = "linkId",
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

M.GetLinkAssociationsOutput = {
    type = "structure",
    members = {
        LinkAssociations = {
            type = "list",
            member = M.LinkAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetLinksInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LinkIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "linkIds",
            },
        },
        SiteId = {
            type = "string",
            traits = {
                http_query = "siteId",
            },
        },
        Type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        Provider = {
            type = "string",
            traits = {
                http_query = "provider",
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

M.GetLinksOutput = {
    type = "structure",
    members = {
        Links = {
            type = "list",
            member = M.Link,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetNetworkResourceCountsInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
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

M.NetworkResourceCount = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        Count = {
            type = "integer",
        },
    },
}

M.GetNetworkResourceCountsOutput = {
    type = "structure",
    members = {
        NetworkResourceCounts = {
            type = "list",
            member = M.NetworkResourceCount,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetNetworkResourceRelationshipsInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CoreNetworkId = {
            type = "string",
            traits = {
                http_query = "coreNetworkId",
            },
        },
        RegisteredGatewayArn = {
            type = "string",
            traits = {
                http_query = "registeredGatewayArn",
            },
        },
        AwsRegion = {
            type = "string",
            traits = {
                http_query = "awsRegion",
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_query = "accountId",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
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

M.Relationship = {
    type = "structure",
    members = {
        From = {
            type = "string",
        },
        To = {
            type = "string",
        },
    },
}

M.GetNetworkResourceRelationshipsOutput = {
    type = "structure",
    members = {
        Relationships = {
            type = "list",
            member = M.Relationship,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetNetworkResourcesInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CoreNetworkId = {
            type = "string",
            traits = {
                http_query = "coreNetworkId",
            },
        },
        RegisteredGatewayArn = {
            type = "string",
            traits = {
                http_query = "registeredGatewayArn",
            },
        },
        AwsRegion = {
            type = "string",
            traits = {
                http_query = "awsRegion",
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_query = "accountId",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
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

M.NetworkResource = {
    type = "structure",
    members = {
        RegisteredGatewayArn = {
            type = "string",
        },
        CoreNetworkId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Definition = {
            type = "string",
        },
        DefinitionTimestamp = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetNetworkResourcesOutput = {
    type = "structure",
    members = {
        NetworkResources = {
            type = "list",
            member = M.NetworkResource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RouteTableIdentifier = {
    type = "structure",
    members = {
        TransitGatewayRouteTableArn = {
            type = "string",
        },
        CoreNetworkSegmentEdge = M.CoreNetworkSegmentEdgeIdentifier,
        CoreNetworkNetworkFunctionGroup = M.CoreNetworkNetworkFunctionGroupIdentifier,
    },
}

M.RouteState = {
    ACTIVE = "ACTIVE",
    BLACKHOLE = "BLACKHOLE",
}

M.RouteType = {
    PROPAGATED = "PROPAGATED",
    STATIC = "STATIC",
}

M.GetNetworkRoutesInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteTableIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteTableIdentifier }),
        ExactCidrMatches = {
            type = "list",
            member = { type = "string" },
        },
        LongestPrefixMatches = {
            type = "list",
            member = { type = "string" },
        },
        SubnetOfMatches = {
            type = "list",
            member = { type = "string" },
        },
        SupernetOfMatches = {
            type = "list",
            member = { type = "string" },
        },
        PrefixListIds = {
            type = "list",
            member = { type = "string" },
        },
        States = {
            type = "list",
            member = { type = "string" },
        },
        Types = {
            type = "list",
            member = { type = "string" },
        },
        DestinationFilters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.NetworkRouteDestination = {
    type = "structure",
    members = {
        CoreNetworkAttachmentId = {
            type = "string",
        },
        TransitGatewayAttachmentId = {
            type = "string",
        },
        SegmentName = {
            type = "string",
        },
        NetworkFunctionGroupName = {
            type = "string",
        },
        EdgeLocation = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.NetworkRoute = {
    type = "structure",
    members = {
        DestinationCidrBlock = {
            type = "string",
        },
        Destinations = {
            type = "list",
            member = M.NetworkRouteDestination,
        },
        PrefixListId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.RouteTableType = {
    TRANSIT_GATEWAY_ROUTE_TABLE = "TRANSIT_GATEWAY_ROUTE_TABLE",
    CORE_NETWORK_SEGMENT = "CORE_NETWORK_SEGMENT",
    NETWORK_FUNCTION_GROUP = "NETWORK_FUNCTION_GROUP",
}

M.GetNetworkRoutesOutput = {
    type = "structure",
    members = {
        RouteTableArn = {
            type = "string",
        },
        CoreNetworkSegmentEdge = M.CoreNetworkSegmentEdgeIdentifier,
        RouteTableType = {
            type = "string",
        },
        RouteTableTimestamp = {
            type = "timestamp",
        },
        NetworkRoutes = {
            type = "list",
            member = M.NetworkRoute,
        },
    },
}

M.GetNetworkTelemetryInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CoreNetworkId = {
            type = "string",
            traits = {
                http_query = "coreNetworkId",
            },
        },
        RegisteredGatewayArn = {
            type = "string",
            traits = {
                http_query = "registeredGatewayArn",
            },
        },
        AwsRegion = {
            type = "string",
            traits = {
                http_query = "awsRegion",
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_query = "accountId",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
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

M.NetworkTelemetry = {
    type = "structure",
    members = {
        RegisteredGatewayArn = {
            type = "string",
        },
        CoreNetworkId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Address = {
            type = "string",
        },
        Health = M.ConnectionHealth,
    },
}

M.GetNetworkTelemetryOutput = {
    type = "structure",
    members = {
        NetworkTelemetry = {
            type = "list",
            member = M.NetworkTelemetry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
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

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        PolicyDocument = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
    },
}

M.GetRouteAnalysisInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteAnalysisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RouteAnalysisEndpointOptions = {
    type = "structure",
    members = {
        TransitGatewayAttachmentArn = {
            type = "string",
        },
        TransitGatewayArn = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
    },
}

M.RouteAnalysisCompletionReasonCode = {
    TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND = "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND",
    TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY = "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY",
    CYCLIC_PATH_DETECTED = "CYCLIC_PATH_DETECTED",
    TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND = "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND",
    ROUTE_NOT_FOUND = "ROUTE_NOT_FOUND",
    BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND = "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND",
    INACTIVE_ROUTE_FOR_DESTINATION_FOUND = "INACTIVE_ROUTE_FOR_DESTINATION_FOUND",
    TRANSIT_GATEWAY_ATTACHMENT = "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH",
    MAX_HOPS_EXCEEDED = "MAX_HOPS_EXCEEDED",
    POSSIBLE_MIDDLEBOX = "POSSIBLE_MIDDLEBOX",
    NO_DESTINATION_ARN_PROVIDED = "NO_DESTINATION_ARN_PROVIDED",
}

M.RouteAnalysisCompletionResultCode = {
    CONNECTED = "CONNECTED",
    NOT_CONNECTED = "NOT_CONNECTED",
}

M.RouteAnalysisCompletion = {
    type = "structure",
    members = {
        ResultCode = {
            type = "string",
        },
        ReasonCode = {
            type = "string",
        },
        ReasonContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.NetworkResourceSummary = {
    type = "structure",
    members = {
        RegisteredGatewayArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Definition = {
            type = "string",
        },
        NameTag = {
            type = "string",
        },
        IsMiddlebox = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PathComponent = {
    type = "structure",
    members = {
        Sequence = {
            type = "integer",
        },
        Resource = M.NetworkResourceSummary,
        DestinationCidrBlock = {
            type = "string",
        },
    },
}

M.RouteAnalysisPath = {
    type = "structure",
    members = {
        CompletionStatus = M.RouteAnalysisCompletion,
        Path = {
            type = "list",
            member = M.PathComponent,
        },
    },
}

M.RouteAnalysisStatus = {
    running = "RUNNING",
    completed = "COMPLETED",
    failed = "FAILED",
}

M.RouteAnalysis = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        RouteAnalysisId = {
            type = "string",
        },
        StartTimestamp = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Source = M.RouteAnalysisEndpointOptions,
        Destination = M.RouteAnalysisEndpointOptions,
        IncludeReturnPath = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UseMiddleboxes = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ForwardPath = M.RouteAnalysisPath,
        ReturnPath = M.RouteAnalysisPath,
    },
}

M.GetRouteAnalysisOutput = {
    type = "structure",
    members = {
        RouteAnalysis = M.RouteAnalysis,
    },
}

M.GetSitesInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SiteIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "siteIds",
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

M.GetSitesOutput = {
    type = "structure",
    members = {
        Sites = {
            type = "list",
            member = M.Site,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetSiteToSiteVpnAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSiteToSiteVpnAttachmentOutput = {
    type = "structure",
    members = {
        SiteToSiteVpnAttachment = M.SiteToSiteVpnAttachment,
    },
}

M.GetTransitGatewayConnectPeerAssociationsInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TransitGatewayConnectPeerArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "transitGatewayConnectPeerArns",
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

M.GetTransitGatewayConnectPeerAssociationsOutput = {
    type = "structure",
    members = {
        TransitGatewayConnectPeerAssociations = {
            type = "list",
            member = M.TransitGatewayConnectPeerAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetTransitGatewayPeeringInput = {
    type = "structure",
    members = {
        PeeringId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTransitGatewayPeeringOutput = {
    type = "structure",
    members = {
        TransitGatewayPeering = M.TransitGatewayPeering,
    },
}

M.GetTransitGatewayRegistrationsInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TransitGatewayArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "transitGatewayArns",
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

M.GetTransitGatewayRegistrationsOutput = {
    type = "structure",
    members = {
        TransitGatewayRegistrations = {
            type = "list",
            member = M.TransitGatewayRegistration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetTransitGatewayRouteTableAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTransitGatewayRouteTableAttachmentOutput = {
    type = "structure",
    members = {
        TransitGatewayRouteTableAttachment = M.TransitGatewayRouteTableAttachment,
    },
}

M.GetVpcAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVpcAttachmentOutput = {
    type = "structure",
    members = {
        VpcAttachment = M.VpcAttachment,
    },
}

M.ListAttachmentRoutingPolicyAssociationsInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttachmentId = {
            type = "string",
            traits = {
                http_query = "attachmentId",
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

M.ListAttachmentRoutingPolicyAssociationsOutput = {
    type = "structure",
    members = {
        AttachmentRoutingPolicyAssociations = {
            type = "list",
            member = M.AttachmentRoutingPolicyAssociationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAttachmentsInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_query = "coreNetworkId",
            },
        },
        AttachmentType = {
            type = "string",
            traits = {
                http_query = "attachmentType",
            },
        },
        EdgeLocation = {
            type = "string",
            traits = {
                http_query = "edgeLocation",
            },
        },
        State = {
            type = "string",
            traits = {
                http_query = "state",
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

M.ListAttachmentsOutput = {
    type = "structure",
    members = {
        Attachments = {
            type = "list",
            member = M.Attachment,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectPeersInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_query = "coreNetworkId",
            },
        },
        ConnectAttachmentId = {
            type = "string",
            traits = {
                http_query = "connectAttachmentId",
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

M.ListConnectPeersOutput = {
    type = "structure",
    members = {
        ConnectPeers = {
            type = "list",
            member = M.ConnectPeerSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCoreNetworkPolicyVersionsInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
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

M.ListCoreNetworkPolicyVersionsOutput = {
    type = "structure",
    members = {
        CoreNetworkPolicyVersions = {
            type = "list",
            member = M.CoreNetworkPolicyVersion,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCoreNetworkPrefixListAssociationsInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PrefixListArn = {
            type = "string",
            traits = {
                http_query = "prefixListArn",
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

M.PrefixListAssociation = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        PrefixListArn = {
            type = "string",
        },
        PrefixListAlias = {
            type = "string",
        },
    },
}

M.ListCoreNetworkPrefixListAssociationsOutput = {
    type = "structure",
    members = {
        PrefixListAssociations = {
            type = "list",
            member = M.PrefixListAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCoreNetworkRoutingInformationInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EdgeLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextHopFilters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        LocalPreferenceMatches = {
            type = "list",
            member = { type = "string" },
        },
        ExactAsPathMatches = {
            type = "list",
            member = { type = "string" },
        },
        MedMatches = {
            type = "list",
            member = { type = "string" },
        },
        CommunityMatches = {
            type = "list",
            member = { type = "string" },
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

M.ListCoreNetworkRoutingInformationOutput = {
    type = "structure",
    members = {
        CoreNetworkRoutingInformation = {
            type = "list",
            member = M.CoreNetworkRoutingInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCoreNetworksInput = {
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

M.ListCoreNetworksOutput = {
    type = "structure",
    members = {
        CoreNetworks = {
            type = "list",
            member = M.CoreNetworkSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOrganizationServiceAccessStatusInput = {
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

M.OrganizationStatus = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
        },
        OrganizationAwsServiceAccessStatus = {
            type = "string",
        },
        SLRDeploymentStatus = {
            type = "string",
        },
        AccountStatusList = {
            type = "list",
            member = M.AccountStatus,
            traits = {
                xml_name = "OrganizationStatus",
            },
        },
    },
}

M.ListOrganizationServiceAccessStatusOutput = {
    type = "structure",
    members = {
        OrganizationStatus = M.OrganizationStatus,
        NextToken = {
            type = "string",
        },
    },
}

M.ListPeeringsInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_query = "coreNetworkId",
            },
        },
        PeeringType = {
            type = "string",
            traits = {
                http_query = "peeringType",
            },
        },
        EdgeLocation = {
            type = "string",
            traits = {
                http_query = "edgeLocation",
            },
        },
        State = {
            type = "string",
            traits = {
                http_query = "state",
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

M.ListPeeringsOutput = {
    type = "structure",
    members = {
        Peerings = {
            type = "list",
            member = M.Peering,
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
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAttachmentRoutingPolicyLabelInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoutingPolicyLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.PutAttachmentRoutingPolicyLabelOutput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        AttachmentId = {
            type = "string",
        },
        RoutingPolicyLabel = {
            type = "string",
        },
    },
}

M.PutCoreNetworkPolicyInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                media_type = "application/json",
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        LatestVersionId = {
            type = "integer",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.PutCoreNetworkPolicyOutput = {
    type = "structure",
    members = {
        CoreNetworkPolicy = M.CoreNetworkPolicy,
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        PolicyDocument = {
            type = "string",
            traits = {
                media_type = "application/json",
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
}

M.RegisterTransitGatewayInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TransitGatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterTransitGatewayOutput = {
    type = "structure",
    members = {
        TransitGatewayRegistration = M.TransitGatewayRegistration,
    },
}

M.RejectAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RejectAttachmentOutput = {
    type = "structure",
    members = {
        Attachment = M.Attachment,
    },
}

M.RemoveAttachmentRoutingPolicyLabelInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveAttachmentRoutingPolicyLabelOutput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
        },
        AttachmentId = {
            type = "string",
        },
        RoutingPolicyLabel = {
            type = "string",
        },
    },
}

M.RestoreCoreNetworkPolicyVersionInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyVersionId = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RestoreCoreNetworkPolicyVersionOutput = {
    type = "structure",
    members = {
        CoreNetworkPolicy = M.CoreNetworkPolicy,
    },
}

M.StartOrganizationServiceAccessUpdateInput = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartOrganizationServiceAccessUpdateOutput = {
    type = "structure",
    members = {
        OrganizationStatus = M.OrganizationStatus,
    },
}

M.RouteAnalysisEndpointOptionsSpecification = {
    type = "structure",
    members = {
        TransitGatewayAttachmentArn = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
    },
}

M.StartRouteAnalysisInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteAnalysisEndpointOptionsSpecification }),
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteAnalysisEndpointOptionsSpecification }),
        IncludeReturnPath = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UseMiddleboxes = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.StartRouteAnalysisOutput = {
    type = "structure",
    members = {
        RouteAnalysis = M.RouteAnalysis,
    },
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
            type = "list",
            member = M.Tag,
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

M.UpdateConnectionInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LinkId = {
            type = "string",
        },
        ConnectedLinkId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateConnectionOutput = {
    type = "structure",
    members = {
        Connection = M.Connection,
    },
}

M.UpdateCoreNetworkInput = {
    type = "structure",
    members = {
        CoreNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateCoreNetworkOutput = {
    type = "structure",
    members = {
        CoreNetwork = M.CoreNetwork,
    },
}

M.UpdateDeviceInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AWSLocation = M.AWSLocation,
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Vendor = {
            type = "string",
        },
        Model = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        Location = M.Location,
        SiteId = {
            type = "string",
        },
    },
}

M.UpdateDeviceOutput = {
    type = "structure",
    members = {
        Device = M.Device,
    },
}

M.UpdateDirectConnectGatewayAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EdgeLocations = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateDirectConnectGatewayAttachmentOutput = {
    type = "structure",
    members = {
        DirectConnectGatewayAttachment = M.DirectConnectGatewayAttachment,
    },
}

M.UpdateGlobalNetworkInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateGlobalNetworkOutput = {
    type = "structure",
    members = {
        GlobalNetwork = M.GlobalNetwork,
    },
}

M.UpdateLinkInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LinkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Bandwidth = M.Bandwidth,
        Provider = {
            type = "string",
        },
    },
}

M.UpdateLinkOutput = {
    type = "structure",
    members = {
        Link = M.Link,
    },
}

M.UpdateNetworkResourceMetadataInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNetworkResourceMetadataOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateSiteInput = {
    type = "structure",
    members = {
        GlobalNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SiteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Location = M.Location,
    },
}

M.UpdateSiteOutput = {
    type = "structure",
    members = {
        Site = M.Site,
    },
}

M.UpdateVpcAttachmentInput = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AddSubnetArns = {
            type = "list",
            member = { type = "string" },
        },
        RemoveSubnetArns = {
            type = "list",
            member = { type = "string" },
        },
        Options = M.VpcOptions,
    },
}

M.UpdateVpcAttachmentOutput = {
    type = "structure",
    members = {
        VpcAttachment = M.VpcAttachment,
    },
}

return M
