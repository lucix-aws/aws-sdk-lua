local M = {}

M.AcceptAttachmentInput = {
    type = "structure",
    id = "AcceptAttachmentInput",
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
    id = "AttachmentError",
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
    id = "Tag",
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
    id = "ProposedNetworkFunctionGroupChange",
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
    id = "ProposedSegmentChange",
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
    id = "Attachment",
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
    id = "AcceptAttachmentOutput",
    members = {
        Attachment = M.Attachment,
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "ConflictException",
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
    id = "InternalServerException",
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
    id = "ResourceNotFoundException",
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
    id = "ThrottlingException",
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
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
    id = "AccountStatus",
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
    id = "AssociateConnectPeerInput",
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
    id = "ConnectPeerAssociation",
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
    id = "AssociateConnectPeerOutput",
    members = {
        ConnectPeerAssociation = M.ConnectPeerAssociation,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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
    id = "AssociateCustomerGatewayInput",
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
    id = "CustomerGatewayAssociation",
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
    id = "AssociateCustomerGatewayOutput",
    members = {
        CustomerGatewayAssociation = M.CustomerGatewayAssociation,
    },
}

M.AssociateLinkInput = {
    type = "structure",
    id = "AssociateLinkInput",
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
    id = "LinkAssociation",
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
    id = "AssociateLinkOutput",
    members = {
        LinkAssociation = M.LinkAssociation,
    },
}

M.AssociateTransitGatewayConnectPeerInput = {
    type = "structure",
    id = "AssociateTransitGatewayConnectPeerInput",
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
    id = "TransitGatewayConnectPeerAssociation",
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
    id = "AssociateTransitGatewayConnectPeerOutput",
    members = {
        TransitGatewayConnectPeerAssociation = M.TransitGatewayConnectPeerAssociation,
    },
}

M.AttachmentRoutingPolicyAssociationSummary = {
    type = "structure",
    id = "AttachmentRoutingPolicyAssociationSummary",
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
    id = "AWSLocation",
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
    id = "Bandwidth",
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
    id = "BgpOptions",
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
    id = "ConnectAttachmentOptions",
    members = {
        Protocol = {
            type = "string",
        },
    },
}

M.ConnectAttachment = {
    type = "structure",
    id = "ConnectAttachment",
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
    id = "Connection",
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
    id = "ConnectionHealth",
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
    id = "ConnectPeerBgpConfiguration",
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
    id = "ConnectPeerConfiguration",
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
    id = "ConnectPeerError",
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
    id = "ConnectPeer",
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
    id = "ConnectPeerSummary",
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
    id = "CoreNetworkEdge",
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
    id = "ServiceInsertionSegments",
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
    id = "CoreNetworkNetworkFunctionGroup",
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
    id = "CoreNetworkSegment",
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
    id = "CoreNetwork",
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
    id = "RoutingPolicyAssociationDetail",
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
    id = "NetworkFunctionGroup",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.EdgeOverride = {
    type = "structure",
    id = "EdgeOverride",
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
    id = "Via",
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
    id = "WhenSentTo",
    members = {
        WhenSentToSegmentsList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ServiceInsertionAction = {
    type = "structure",
    id = "ServiceInsertionAction",
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
    id = "CoreNetworkChangeValues",
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
    id = "CoreNetworkChange",
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
    id = "CoreNetworkChangeEventValues",
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
    id = "CoreNetworkChangeEvent",
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
    id = "CoreNetworkNetworkFunctionGroupIdentifier",
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
    id = "CoreNetworkPolicyError",
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
    id = "CoreNetworkPolicy",
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
    id = "CoreNetworkPolicyException",
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
    id = "CoreNetworkPolicyVersion",
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
    id = "RoutingInformationNextHop",
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
    id = "CoreNetworkRoutingInformation",
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
    id = "CoreNetworkSegmentEdgeIdentifier",
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
    id = "CoreNetworkSummary",
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
    id = "CreateConnectAttachmentInput",
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
    id = "CreateConnectAttachmentOutput",
    members = {
        ConnectAttachment = M.ConnectAttachment,
    },
}

M.CreateConnectionInput = {
    type = "structure",
    id = "CreateConnectionInput",
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
    id = "CreateConnectionOutput",
    members = {
        Connection = M.Connection,
    },
}

M.CreateConnectPeerInput = {
    type = "structure",
    id = "CreateConnectPeerInput",
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
    id = "CreateConnectPeerOutput",
    members = {
        ConnectPeer = M.ConnectPeer,
    },
}

M.CreateCoreNetworkInput = {
    type = "structure",
    id = "CreateCoreNetworkInput",
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
    id = "CreateCoreNetworkOutput",
    members = {
        CoreNetwork = M.CoreNetwork,
    },
}

M.CreateCoreNetworkPrefixListAssociationInput = {
    type = "structure",
    id = "CreateCoreNetworkPrefixListAssociationInput",
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
    id = "CreateCoreNetworkPrefixListAssociationOutput",
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
    id = "Location",
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
    id = "CreateDeviceInput",
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
    id = "Device",
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
    id = "CreateDeviceOutput",
    members = {
        Device = M.Device,
    },
}

M.CreateDirectConnectGatewayAttachmentInput = {
    type = "structure",
    id = "CreateDirectConnectGatewayAttachmentInput",
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
    id = "DirectConnectGatewayAttachment",
    members = {
        Attachment = M.Attachment,
        DirectConnectGatewayArn = {
            type = "string",
        },
    },
}

M.CreateDirectConnectGatewayAttachmentOutput = {
    type = "structure",
    id = "CreateDirectConnectGatewayAttachmentOutput",
    members = {
        DirectConnectGatewayAttachment = M.DirectConnectGatewayAttachment,
    },
}

M.CreateGlobalNetworkInput = {
    type = "structure",
    id = "CreateGlobalNetworkInput",
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
    id = "GlobalNetwork",
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
    id = "CreateGlobalNetworkOutput",
    members = {
        GlobalNetwork = M.GlobalNetwork,
    },
}

M.CreateLinkInput = {
    type = "structure",
    id = "CreateLinkInput",
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
    id = "Link",
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
    id = "CreateLinkOutput",
    members = {
        Link = M.Link,
    },
}

M.CreateSiteInput = {
    type = "structure",
    id = "CreateSiteInput",
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
    id = "Site",
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
    id = "CreateSiteOutput",
    members = {
        Site = M.Site,
    },
}

M.CreateSiteToSiteVpnAttachmentInput = {
    type = "structure",
    id = "CreateSiteToSiteVpnAttachmentInput",
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
    id = "SiteToSiteVpnAttachment",
    members = {
        Attachment = M.Attachment,
        VpnConnectionArn = {
            type = "string",
        },
    },
}

M.CreateSiteToSiteVpnAttachmentOutput = {
    type = "structure",
    id = "CreateSiteToSiteVpnAttachmentOutput",
    members = {
        SiteToSiteVpnAttachment = M.SiteToSiteVpnAttachment,
    },
}

M.CreateTransitGatewayPeeringInput = {
    type = "structure",
    id = "CreateTransitGatewayPeeringInput",
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
    id = "PermissionsErrorContext",
    members = {
        MissingPermission = {
            type = "string",
        },
    },
}

M.PeeringError = {
    type = "structure",
    id = "PeeringError",
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
    id = "Peering",
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
    id = "TransitGatewayPeering",
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
    id = "CreateTransitGatewayPeeringOutput",
    members = {
        TransitGatewayPeering = M.TransitGatewayPeering,
    },
}

M.CreateTransitGatewayRouteTableAttachmentInput = {
    type = "structure",
    id = "CreateTransitGatewayRouteTableAttachmentInput",
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
    id = "TransitGatewayRouteTableAttachment",
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
    id = "CreateTransitGatewayRouteTableAttachmentOutput",
    members = {
        TransitGatewayRouteTableAttachment = M.TransitGatewayRouteTableAttachment,
    },
}

M.VpcOptions = {
    type = "structure",
    id = "VpcOptions",
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
    id = "CreateVpcAttachmentInput",
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
    id = "VpcAttachment",
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
    id = "CreateVpcAttachmentOutput",
    members = {
        VpcAttachment = M.VpcAttachment,
    },
}

M.DeleteAttachmentInput = {
    type = "structure",
    id = "DeleteAttachmentInput",
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
    id = "DeleteAttachmentOutput",
    members = {
        Attachment = M.Attachment,
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    id = "DeleteConnectionInput",
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
    id = "DeleteConnectionOutput",
    members = {
        Connection = M.Connection,
    },
}

M.DeleteConnectPeerInput = {
    type = "structure",
    id = "DeleteConnectPeerInput",
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
    id = "DeleteConnectPeerOutput",
    members = {
        ConnectPeer = M.ConnectPeer,
    },
}

M.DeleteCoreNetworkInput = {
    type = "structure",
    id = "DeleteCoreNetworkInput",
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
    id = "DeleteCoreNetworkOutput",
    members = {
        CoreNetwork = M.CoreNetwork,
    },
}

M.DeleteCoreNetworkPolicyVersionInput = {
    type = "structure",
    id = "DeleteCoreNetworkPolicyVersionInput",
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
    id = "DeleteCoreNetworkPolicyVersionOutput",
    members = {
        CoreNetworkPolicy = M.CoreNetworkPolicy,
    },
}

M.DeleteCoreNetworkPrefixListAssociationInput = {
    type = "structure",
    id = "DeleteCoreNetworkPrefixListAssociationInput",
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
    id = "DeleteCoreNetworkPrefixListAssociationOutput",
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
    id = "DeleteDeviceInput",
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
    id = "DeleteDeviceOutput",
    members = {
        Device = M.Device,
    },
}

M.DeleteGlobalNetworkInput = {
    type = "structure",
    id = "DeleteGlobalNetworkInput",
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
    id = "DeleteGlobalNetworkOutput",
    members = {
        GlobalNetwork = M.GlobalNetwork,
    },
}

M.DeleteLinkInput = {
    type = "structure",
    id = "DeleteLinkInput",
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
    id = "DeleteLinkOutput",
    members = {
        Link = M.Link,
    },
}

M.DeletePeeringInput = {
    type = "structure",
    id = "DeletePeeringInput",
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
    id = "DeletePeeringOutput",
    members = {
        Peering = M.Peering,
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
}

M.DeleteSiteInput = {
    type = "structure",
    id = "DeleteSiteInput",
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
    id = "DeleteSiteOutput",
    members = {
        Site = M.Site,
    },
}

M.DeregisterTransitGatewayInput = {
    type = "structure",
    id = "DeregisterTransitGatewayInput",
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
    id = "TransitGatewayRegistrationStateReason",
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
    id = "TransitGatewayRegistration",
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
    id = "DeregisterTransitGatewayOutput",
    members = {
        TransitGatewayRegistration = M.TransitGatewayRegistration,
    },
}

M.DescribeGlobalNetworksInput = {
    type = "structure",
    id = "DescribeGlobalNetworksInput",
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
    id = "DescribeGlobalNetworksOutput",
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
    id = "DisassociateConnectPeerInput",
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
    id = "DisassociateConnectPeerOutput",
    members = {
        ConnectPeerAssociation = M.ConnectPeerAssociation,
    },
}

M.DisassociateCustomerGatewayInput = {
    type = "structure",
    id = "DisassociateCustomerGatewayInput",
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
    id = "DisassociateCustomerGatewayOutput",
    members = {
        CustomerGatewayAssociation = M.CustomerGatewayAssociation,
    },
}

M.DisassociateLinkInput = {
    type = "structure",
    id = "DisassociateLinkInput",
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
    id = "DisassociateLinkOutput",
    members = {
        LinkAssociation = M.LinkAssociation,
    },
}

M.DisassociateTransitGatewayConnectPeerInput = {
    type = "structure",
    id = "DisassociateTransitGatewayConnectPeerInput",
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
    id = "DisassociateTransitGatewayConnectPeerOutput",
    members = {
        TransitGatewayConnectPeerAssociation = M.TransitGatewayConnectPeerAssociation,
    },
}

M.ExecuteCoreNetworkChangeSetInput = {
    type = "structure",
    id = "ExecuteCoreNetworkChangeSetInput",
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
    id = "ExecuteCoreNetworkChangeSetOutput",
}

M.GetConnectAttachmentInput = {
    type = "structure",
    id = "GetConnectAttachmentInput",
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
    id = "GetConnectAttachmentOutput",
    members = {
        ConnectAttachment = M.ConnectAttachment,
    },
}

M.GetConnectionsInput = {
    type = "structure",
    id = "GetConnectionsInput",
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
    id = "GetConnectionsOutput",
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
    id = "GetConnectPeerInput",
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
    id = "GetConnectPeerOutput",
    members = {
        ConnectPeer = M.ConnectPeer,
    },
}

M.GetConnectPeerAssociationsInput = {
    type = "structure",
    id = "GetConnectPeerAssociationsInput",
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
    id = "GetConnectPeerAssociationsOutput",
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
    id = "GetCoreNetworkInput",
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
    id = "GetCoreNetworkOutput",
    members = {
        CoreNetwork = M.CoreNetwork,
    },
}

M.GetCoreNetworkChangeEventsInput = {
    type = "structure",
    id = "GetCoreNetworkChangeEventsInput",
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
    id = "GetCoreNetworkChangeEventsOutput",
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
    id = "GetCoreNetworkChangeSetInput",
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
    id = "GetCoreNetworkChangeSetOutput",
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
    id = "GetCoreNetworkPolicyInput",
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
    id = "GetCoreNetworkPolicyOutput",
    members = {
        CoreNetworkPolicy = M.CoreNetworkPolicy,
    },
}

M.GetCustomerGatewayAssociationsInput = {
    type = "structure",
    id = "GetCustomerGatewayAssociationsInput",
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
    id = "GetCustomerGatewayAssociationsOutput",
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
    id = "GetDevicesInput",
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
    id = "GetDevicesOutput",
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
    id = "GetDirectConnectGatewayAttachmentInput",
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
    id = "GetDirectConnectGatewayAttachmentOutput",
    members = {
        DirectConnectGatewayAttachment = M.DirectConnectGatewayAttachment,
    },
}

M.GetLinkAssociationsInput = {
    type = "structure",
    id = "GetLinkAssociationsInput",
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
    id = "GetLinkAssociationsOutput",
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
    id = "GetLinksInput",
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
    id = "GetLinksOutput",
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
    id = "GetNetworkResourceCountsInput",
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
    id = "NetworkResourceCount",
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
    id = "GetNetworkResourceCountsOutput",
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
    id = "GetNetworkResourceRelationshipsInput",
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
    id = "Relationship",
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
    id = "GetNetworkResourceRelationshipsOutput",
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
    id = "GetNetworkResourcesInput",
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
    id = "NetworkResource",
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
    id = "GetNetworkResourcesOutput",
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
    id = "RouteTableIdentifier",
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
    id = "GetNetworkRoutesInput",
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
    id = "NetworkRouteDestination",
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
    id = "NetworkRoute",
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
    id = "GetNetworkRoutesOutput",
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
    id = "GetNetworkTelemetryInput",
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
    id = "NetworkTelemetry",
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
    id = "GetNetworkTelemetryOutput",
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
    id = "GetResourcePolicyInput",
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
    id = "GetResourcePolicyOutput",
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
    id = "GetRouteAnalysisInput",
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
    id = "RouteAnalysisEndpointOptions",
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
    id = "RouteAnalysisCompletion",
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
    id = "NetworkResourceSummary",
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
    id = "PathComponent",
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
    id = "RouteAnalysisPath",
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
    id = "RouteAnalysis",
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
    id = "GetRouteAnalysisOutput",
    members = {
        RouteAnalysis = M.RouteAnalysis,
    },
}

M.GetSitesInput = {
    type = "structure",
    id = "GetSitesInput",
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
    id = "GetSitesOutput",
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
    id = "GetSiteToSiteVpnAttachmentInput",
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
    id = "GetSiteToSiteVpnAttachmentOutput",
    members = {
        SiteToSiteVpnAttachment = M.SiteToSiteVpnAttachment,
    },
}

M.GetTransitGatewayConnectPeerAssociationsInput = {
    type = "structure",
    id = "GetTransitGatewayConnectPeerAssociationsInput",
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
    id = "GetTransitGatewayConnectPeerAssociationsOutput",
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
    id = "GetTransitGatewayPeeringInput",
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
    id = "GetTransitGatewayPeeringOutput",
    members = {
        TransitGatewayPeering = M.TransitGatewayPeering,
    },
}

M.GetTransitGatewayRegistrationsInput = {
    type = "structure",
    id = "GetTransitGatewayRegistrationsInput",
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
    id = "GetTransitGatewayRegistrationsOutput",
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
    id = "GetTransitGatewayRouteTableAttachmentInput",
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
    id = "GetTransitGatewayRouteTableAttachmentOutput",
    members = {
        TransitGatewayRouteTableAttachment = M.TransitGatewayRouteTableAttachment,
    },
}

M.GetVpcAttachmentInput = {
    type = "structure",
    id = "GetVpcAttachmentInput",
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
    id = "GetVpcAttachmentOutput",
    members = {
        VpcAttachment = M.VpcAttachment,
    },
}

M.ListAttachmentRoutingPolicyAssociationsInput = {
    type = "structure",
    id = "ListAttachmentRoutingPolicyAssociationsInput",
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
    id = "ListAttachmentRoutingPolicyAssociationsOutput",
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
    id = "ListAttachmentsInput",
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
    id = "ListAttachmentsOutput",
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
    id = "ListConnectPeersInput",
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
    id = "ListConnectPeersOutput",
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
    id = "ListCoreNetworkPolicyVersionsInput",
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
    id = "ListCoreNetworkPolicyVersionsOutput",
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
    id = "ListCoreNetworkPrefixListAssociationsInput",
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
    id = "PrefixListAssociation",
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
    id = "ListCoreNetworkPrefixListAssociationsOutput",
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
    id = "ListCoreNetworkRoutingInformationInput",
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
    id = "ListCoreNetworkRoutingInformationOutput",
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
    id = "ListCoreNetworksInput",
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
    id = "ListCoreNetworksOutput",
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
    id = "ListOrganizationServiceAccessStatusInput",
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
    id = "OrganizationStatus",
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
    id = "ListOrganizationServiceAccessStatusOutput",
    members = {
        OrganizationStatus = M.OrganizationStatus,
        NextToken = {
            type = "string",
        },
    },
}

M.ListPeeringsInput = {
    type = "structure",
    id = "ListPeeringsInput",
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
    id = "ListPeeringsOutput",
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
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAttachmentRoutingPolicyLabelInput = {
    type = "structure",
    id = "PutAttachmentRoutingPolicyLabelInput",
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
    id = "PutAttachmentRoutingPolicyLabelOutput",
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
    id = "PutCoreNetworkPolicyInput",
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
    id = "PutCoreNetworkPolicyOutput",
    members = {
        CoreNetworkPolicy = M.CoreNetworkPolicy,
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
}

M.RegisterTransitGatewayInput = {
    type = "structure",
    id = "RegisterTransitGatewayInput",
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
    id = "RegisterTransitGatewayOutput",
    members = {
        TransitGatewayRegistration = M.TransitGatewayRegistration,
    },
}

M.RejectAttachmentInput = {
    type = "structure",
    id = "RejectAttachmentInput",
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
    id = "RejectAttachmentOutput",
    members = {
        Attachment = M.Attachment,
    },
}

M.RemoveAttachmentRoutingPolicyLabelInput = {
    type = "structure",
    id = "RemoveAttachmentRoutingPolicyLabelInput",
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
    id = "RemoveAttachmentRoutingPolicyLabelOutput",
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
    id = "RestoreCoreNetworkPolicyVersionInput",
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
    id = "RestoreCoreNetworkPolicyVersionOutput",
    members = {
        CoreNetworkPolicy = M.CoreNetworkPolicy,
    },
}

M.StartOrganizationServiceAccessUpdateInput = {
    type = "structure",
    id = "StartOrganizationServiceAccessUpdateInput",
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
    id = "StartOrganizationServiceAccessUpdateOutput",
    members = {
        OrganizationStatus = M.OrganizationStatus,
    },
}

M.RouteAnalysisEndpointOptionsSpecification = {
    type = "structure",
    id = "RouteAnalysisEndpointOptionsSpecification",
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
    id = "StartRouteAnalysisInput",
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
    id = "StartRouteAnalysisOutput",
    members = {
        RouteAnalysis = M.RouteAnalysis,
    },
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

M.UpdateConnectionInput = {
    type = "structure",
    id = "UpdateConnectionInput",
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
    id = "UpdateConnectionOutput",
    members = {
        Connection = M.Connection,
    },
}

M.UpdateCoreNetworkInput = {
    type = "structure",
    id = "UpdateCoreNetworkInput",
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
    id = "UpdateCoreNetworkOutput",
    members = {
        CoreNetwork = M.CoreNetwork,
    },
}

M.UpdateDeviceInput = {
    type = "structure",
    id = "UpdateDeviceInput",
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
    id = "UpdateDeviceOutput",
    members = {
        Device = M.Device,
    },
}

M.UpdateDirectConnectGatewayAttachmentInput = {
    type = "structure",
    id = "UpdateDirectConnectGatewayAttachmentInput",
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
    id = "UpdateDirectConnectGatewayAttachmentOutput",
    members = {
        DirectConnectGatewayAttachment = M.DirectConnectGatewayAttachment,
    },
}

M.UpdateGlobalNetworkInput = {
    type = "structure",
    id = "UpdateGlobalNetworkInput",
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
    id = "UpdateGlobalNetworkOutput",
    members = {
        GlobalNetwork = M.GlobalNetwork,
    },
}

M.UpdateLinkInput = {
    type = "structure",
    id = "UpdateLinkInput",
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
    id = "UpdateLinkOutput",
    members = {
        Link = M.Link,
    },
}

M.UpdateNetworkResourceMetadataInput = {
    type = "structure",
    id = "UpdateNetworkResourceMetadataInput",
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
    id = "UpdateNetworkResourceMetadataOutput",
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
    id = "UpdateSiteInput",
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
    id = "UpdateSiteOutput",
    members = {
        Site = M.Site,
    },
}

M.UpdateVpcAttachmentInput = {
    type = "structure",
    id = "UpdateVpcAttachmentInput",
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
    id = "UpdateVpcAttachmentOutput",
    members = {
        VpcAttachment = M.VpcAttachment,
    },
}

return M
