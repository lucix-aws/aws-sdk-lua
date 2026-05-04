local M = {}

M.AcceleratorEvent = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.IpAddressType = {
    IPV4 = "IPV4",
    DUAL_STACK = "DUAL_STACK",
}

M.IpAddressFamily = {
    IPv4 = "IPv4",
    IPv6 = "IPv6",
}

M.IpSet = {
    type = "structure",
    members = {
        IpFamily = {
            type = "string",
        },
        IpAddresses = {
            type = "list",
            member_type = "string",
        },
        IpAddressFamily = {
            type = "string",
        },
    },
}

M.AcceleratorStatus = {
    DEPLOYED = "DEPLOYED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.Accelerator = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        IpSets = {
            type = "list",
            member_type = "structure",
        },
        DnsName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        DualStackDnsName = {
            type = "string",
        },
        Events = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AcceleratorAttributes = {
    type = "structure",
    members = {
        FlowLogsEnabled = {
            type = "boolean",
        },
        FlowLogsS3Bucket = {
            type = "string",
        },
        FlowLogsS3Prefix = {
            type = "string",
        },
    },
}

M.AcceleratorNotDisabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AcceleratorNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CustomRoutingEndpointConfiguration = {
    type = "structure",
    members = {
        EndpointId = {
            type = "string",
        },
        AttachmentArn = {
            type = "string",
        },
    },
}

M.AddCustomRoutingEndpointsInput = {
    type = "structure",
    members = {
        EndpointConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomRoutingEndpointDescription = {
    type = "structure",
    members = {
        EndpointId = {
            type = "string",
        },
    },
}

M.AddCustomRoutingEndpointsOutput = {
    type = "structure",
    members = {
        EndpointDescriptions = {
            type = "list",
            member_type = "structure",
        },
        EndpointGroupArn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EndpointAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EndpointGroupNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EndpointConfiguration = {
    type = "structure",
    members = {
        EndpointId = {
            type = "string",
        },
        Weight = {
            type = "number",
        },
        ClientIPPreservationEnabled = {
            type = "boolean",
        },
        AttachmentArn = {
            type = "string",
        },
    },
}

M.AddEndpointsInput = {
    type = "structure",
    members = {
        EndpointConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HealthState = {
    INITIAL = "INITIAL",
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.EndpointDescription = {
    type = "structure",
    members = {
        EndpointId = {
            type = "string",
        },
        Weight = {
            type = "number",
        },
        HealthState = {
            type = "string",
        },
        HealthReason = {
            type = "string",
        },
        ClientIPPreservationEnabled = {
            type = "boolean",
        },
    },
}

M.AddEndpointsOutput = {
    type = "structure",
    members = {
        EndpointDescriptions = {
            type = "list",
            member_type = "structure",
        },
        EndpointGroupArn = {
            type = "string",
        },
    },
}

M.TransactionInProgressException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AdvertiseByoipCidrInput = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ByoipCidrEvent = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.ByoipCidrState = {
    PENDING_PROVISIONING = "PENDING_PROVISIONING",
    READY = "READY",
    PENDING_ADVERTISING = "PENDING_ADVERTISING",
    ADVERTISING = "ADVERTISING",
    PENDING_WITHDRAWING = "PENDING_WITHDRAWING",
    PENDING_DEPROVISIONING = "PENDING_DEPROVISIONING",
    DEPROVISIONED = "DEPROVISIONED",
    FAILED_PROVISION = "FAILED_PROVISION",
    FAILED_ADVERTISING = "FAILED_ADVERTISING",
    FAILED_WITHDRAW = "FAILED_WITHDRAW",
    FAILED_DEPROVISION = "FAILED_DEPROVISION",
}

M.ByoipCidr = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Events = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AdvertiseByoipCidrOutput = {
    type = "structure",
    members = {
        ByoipCidr = {
            type = "structure",
        },
    },
}

M.ByoipCidrNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IncorrectCidrStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AllowCustomRoutingTrafficInput = {
    type = "structure",
    members = {
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationAddresses = {
            type = "list",
            member_type = "string",
        },
        DestinationPorts = {
            type = "list",
            member_type = "number",
        },
        AllowAllTrafficToEndpoint = {
            type = "boolean",
        },
    },
}

M.AllowCustomRoutingTrafficOutput = {
    type = "structure",
}

M.AssociatedEndpointGroupFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociatedListenerFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        EndpointId = {
            type = "string",
        },
        Cidr = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.Attachment = {
    type = "structure",
    members = {
        AttachmentArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Principals = {
            type = "list",
            member_type = "string",
        },
        Resources = {
            type = "list",
            member_type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.AttachmentNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CidrAuthorizationContext = {
    type = "structure",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Signature = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClientAffinity = {
    NONE = "NONE",
    SOURCE_IP = "SOURCE_IP",
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAcceleratorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddressType = {
            type = "string",
        },
        IpAddresses = {
            type = "list",
            member_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateAcceleratorOutput = {
    type = "structure",
    members = {
        Accelerator = {
            type = "structure",
        },
    },
}

M.CreateCrossAccountAttachmentInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Principals = {
            type = "list",
            member_type = "string",
        },
        Resources = {
            type = "list",
            member_type = "structure",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateCrossAccountAttachmentOutput = {
    type = "structure",
    members = {
        CrossAccountAttachment = {
            type = "structure",
        },
    },
}

M.CreateCustomRoutingAcceleratorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddressType = {
            type = "string",
        },
        IpAddresses = {
            type = "list",
            member_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CustomRoutingAcceleratorStatus = {
    DEPLOYED = "DEPLOYED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.CustomRoutingAccelerator = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        IpSets = {
            type = "list",
            member_type = "structure",
        },
        DnsName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.CreateCustomRoutingAcceleratorOutput = {
    type = "structure",
    members = {
        Accelerator = {
            type = "structure",
        },
    },
}

M.CustomRoutingProtocol = {
    TCP = "TCP",
    UDP = "UDP",
}

M.CustomRoutingDestinationConfiguration = {
    type = "structure",
    members = {
        FromPort = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ToPort = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Protocols = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomRoutingEndpointGroupInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointGroupRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Protocol = {
    TCP = "TCP",
    UDP = "UDP",
}

M.CustomRoutingDestinationDescription = {
    type = "structure",
    members = {
        FromPort = {
            type = "number",
        },
        ToPort = {
            type = "number",
        },
        Protocols = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CustomRoutingEndpointGroup = {
    type = "structure",
    members = {
        EndpointGroupArn = {
            type = "string",
        },
        EndpointGroupRegion = {
            type = "string",
        },
        DestinationDescriptions = {
            type = "list",
            member_type = "structure",
        },
        EndpointDescriptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateCustomRoutingEndpointGroupOutput = {
    type = "structure",
    members = {
        EndpointGroup = {
            type = "structure",
        },
    },
}

M.EndpointGroupAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidPortRangeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListenerNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PortRange = {
    type = "structure",
    members = {
        FromPort = {
            type = "number",
        },
        ToPort = {
            type = "number",
        },
    },
}

M.CreateCustomRoutingListenerInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortRanges = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomRoutingListener = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
        },
        PortRanges = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateCustomRoutingListenerOutput = {
    type = "structure",
    members = {
        Listener = {
            type = "structure",
        },
    },
}

M.HealthCheckProtocol = {
    TCP = "TCP",
    HTTP = "HTTP",
    HTTPS = "HTTPS",
}

M.PortOverride = {
    type = "structure",
    members = {
        ListenerPort = {
            type = "number",
        },
        EndpointPort = {
            type = "number",
        },
    },
}

M.CreateEndpointGroupInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointGroupRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfigurations = {
            type = "list",
            member_type = "structure",
        },
        TrafficDialPercentage = {
            type = "number",
        },
        HealthCheckPort = {
            type = "number",
        },
        HealthCheckProtocol = {
            type = "string",
        },
        HealthCheckPath = {
            type = "string",
        },
        HealthCheckIntervalSeconds = {
            type = "number",
        },
        ThresholdCount = {
            type = "number",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortOverrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EndpointGroup = {
    type = "structure",
    members = {
        EndpointGroupArn = {
            type = "string",
        },
        EndpointGroupRegion = {
            type = "string",
        },
        EndpointDescriptions = {
            type = "list",
            member_type = "structure",
        },
        TrafficDialPercentage = {
            type = "number",
        },
        HealthCheckPort = {
            type = "number",
        },
        HealthCheckProtocol = {
            type = "string",
        },
        HealthCheckPath = {
            type = "string",
        },
        HealthCheckIntervalSeconds = {
            type = "number",
        },
        ThresholdCount = {
            type = "number",
        },
        PortOverrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateEndpointGroupOutput = {
    type = "structure",
    members = {
        EndpointGroup = {
            type = "structure",
        },
    },
}

M.CreateListenerInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortRanges = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientAffinity = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Listener = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
        },
        PortRanges = {
            type = "list",
            member_type = "structure",
        },
        Protocol = {
            type = "string",
        },
        ClientAffinity = {
            type = "string",
        },
    },
}

M.CreateListenerOutput = {
    type = "structure",
    members = {
        Listener = {
            type = "structure",
        },
    },
}

M.CrossAccountResource = {
    type = "structure",
    members = {
        EndpointId = {
            type = "string",
        },
        Cidr = {
            type = "string",
        },
        AttachmentArn = {
            type = "string",
        },
    },
}

M.CustomRoutingAcceleratorAttributes = {
    type = "structure",
    members = {
        FlowLogsEnabled = {
            type = "boolean",
        },
        FlowLogsS3Bucket = {
            type = "string",
        },
        FlowLogsS3Prefix = {
            type = "string",
        },
    },
}

M.CustomRoutingDestinationTrafficState = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.DeleteAcceleratorInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAcceleratorOutput = {
    type = "structure",
}

M.DeleteCrossAccountAttachmentInput = {
    type = "structure",
    members = {
        AttachmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCrossAccountAttachmentOutput = {
    type = "structure",
}

M.DeleteCustomRoutingAcceleratorInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomRoutingAcceleratorOutput = {
    type = "structure",
}

M.DeleteCustomRoutingEndpointGroupInput = {
    type = "structure",
    members = {
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomRoutingEndpointGroupOutput = {
    type = "structure",
}

M.DeleteCustomRoutingListenerInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomRoutingListenerOutput = {
    type = "structure",
}

M.DeleteEndpointGroupInput = {
    type = "structure",
    members = {
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEndpointGroupOutput = {
    type = "structure",
}

M.DeleteListenerInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteListenerOutput = {
    type = "structure",
}

M.DenyCustomRoutingTrafficInput = {
    type = "structure",
    members = {
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationAddresses = {
            type = "list",
            member_type = "string",
        },
        DestinationPorts = {
            type = "list",
            member_type = "number",
        },
        DenyAllTrafficToEndpoint = {
            type = "boolean",
        },
    },
}

M.DenyCustomRoutingTrafficOutput = {
    type = "structure",
}

M.DeprovisionByoipCidrInput = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeprovisionByoipCidrOutput = {
    type = "structure",
    members = {
        ByoipCidr = {
            type = "structure",
        },
    },
}

M.DescribeAcceleratorInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAcceleratorOutput = {
    type = "structure",
    members = {
        Accelerator = {
            type = "structure",
        },
    },
}

M.DescribeAcceleratorAttributesInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAcceleratorAttributesOutput = {
    type = "structure",
    members = {
        AcceleratorAttributes = {
            type = "structure",
        },
    },
}

M.DescribeCrossAccountAttachmentInput = {
    type = "structure",
    members = {
        AttachmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCrossAccountAttachmentOutput = {
    type = "structure",
    members = {
        CrossAccountAttachment = {
            type = "structure",
        },
    },
}

M.DescribeCustomRoutingAcceleratorInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCustomRoutingAcceleratorOutput = {
    type = "structure",
    members = {
        Accelerator = {
            type = "structure",
        },
    },
}

M.DescribeCustomRoutingAcceleratorAttributesInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCustomRoutingAcceleratorAttributesOutput = {
    type = "structure",
    members = {
        AcceleratorAttributes = {
            type = "structure",
        },
    },
}

M.DescribeCustomRoutingEndpointGroupInput = {
    type = "structure",
    members = {
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCustomRoutingEndpointGroupOutput = {
    type = "structure",
    members = {
        EndpointGroup = {
            type = "structure",
        },
    },
}

M.DescribeCustomRoutingListenerInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCustomRoutingListenerOutput = {
    type = "structure",
    members = {
        Listener = {
            type = "structure",
        },
    },
}

M.DescribeEndpointGroupInput = {
    type = "structure",
    members = {
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeEndpointGroupOutput = {
    type = "structure",
    members = {
        EndpointGroup = {
            type = "structure",
        },
    },
}

M.DescribeListenerInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeListenerOutput = {
    type = "structure",
    members = {
        Listener = {
            type = "structure",
        },
    },
}

M.SocketAddress = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
        },
        Port = {
            type = "number",
        },
    },
}

M.DestinationPortMapping = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
        },
        AcceleratorSocketAddresses = {
            type = "list",
            member_type = "structure",
        },
        EndpointGroupArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        EndpointGroupRegion = {
            type = "string",
        },
        DestinationSocketAddress = {
            type = "structure",
        },
        IpAddressType = {
            type = "string",
        },
        DestinationTrafficState = {
            type = "string",
        },
    },
}

M.EndpointIdentifier = {
    type = "structure",
    members = {
        EndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientIPPreservationEnabled = {
            type = "boolean",
        },
    },
}

M.EndpointNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAcceleratorsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAcceleratorsOutput = {
    type = "structure",
    members = {
        Accelerators = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListByoipCidrsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListByoipCidrsOutput = {
    type = "structure",
    members = {
        ByoipCidrs = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCrossAccountAttachmentsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCrossAccountAttachmentsOutput = {
    type = "structure",
    members = {
        CrossAccountAttachments = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCrossAccountResourceAccountsInput = {
    type = "structure",
}

M.ListCrossAccountResourceAccountsOutput = {
    type = "structure",
    members = {
        ResourceOwnerAwsAccountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListCrossAccountResourcesInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
        },
        ResourceOwnerAwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCrossAccountResourcesOutput = {
    type = "structure",
    members = {
        CrossAccountResources = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomRoutingAcceleratorsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomRoutingAcceleratorsOutput = {
    type = "structure",
    members = {
        Accelerators = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomRoutingEndpointGroupsInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomRoutingEndpointGroupsOutput = {
    type = "structure",
    members = {
        EndpointGroups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomRoutingListenersInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomRoutingListenersOutput = {
    type = "structure",
    members = {
        Listeners = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomRoutingPortMappingsInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointGroupArn = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PortMapping = {
    type = "structure",
    members = {
        AcceleratorPort = {
            type = "number",
        },
        EndpointGroupArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        DestinationSocketAddress = {
            type = "structure",
        },
        Protocols = {
            type = "list",
            member_type = "string",
        },
        DestinationTrafficState = {
            type = "string",
        },
    },
}

M.ListCustomRoutingPortMappingsOutput = {
    type = "structure",
    members = {
        PortMappings = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomRoutingPortMappingsByDestinationInput = {
    type = "structure",
    members = {
        EndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomRoutingPortMappingsByDestinationOutput = {
    type = "structure",
    members = {
        DestinationPortMappings = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEndpointGroupsInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEndpointGroupsOutput = {
    type = "structure",
    members = {
        EndpointGroups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListListenersInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListListenersOutput = {
    type = "structure",
    members = {
        Listeners = {
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
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProvisionByoipCidrInput = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CidrAuthorizationContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ProvisionByoipCidrOutput = {
    type = "structure",
    members = {
        ByoipCidr = {
            type = "structure",
        },
    },
}

M.RemoveCustomRoutingEndpointsInput = {
    type = "structure",
    members = {
        EndpointIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveCustomRoutingEndpointsOutput = {
    type = "structure",
}

M.RemoveEndpointsInput = {
    type = "structure",
    members = {
        EndpointIdentifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveEndpointsOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAcceleratorInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        IpAddresses = {
            type = "list",
            member_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateAcceleratorOutput = {
    type = "structure",
    members = {
        Accelerator = {
            type = "structure",
        },
    },
}

M.UpdateAcceleratorAttributesInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowLogsEnabled = {
            type = "boolean",
        },
        FlowLogsS3Bucket = {
            type = "string",
        },
        FlowLogsS3Prefix = {
            type = "string",
        },
    },
}

M.UpdateAcceleratorAttributesOutput = {
    type = "structure",
    members = {
        AcceleratorAttributes = {
            type = "structure",
        },
    },
}

M.UpdateCrossAccountAttachmentInput = {
    type = "structure",
    members = {
        AttachmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        AddPrincipals = {
            type = "list",
            member_type = "string",
        },
        RemovePrincipals = {
            type = "list",
            member_type = "string",
        },
        AddResources = {
            type = "list",
            member_type = "structure",
        },
        RemoveResources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateCrossAccountAttachmentOutput = {
    type = "structure",
    members = {
        CrossAccountAttachment = {
            type = "structure",
        },
    },
}

M.UpdateCustomRoutingAcceleratorInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        IpAddresses = {
            type = "list",
            member_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateCustomRoutingAcceleratorOutput = {
    type = "structure",
    members = {
        Accelerator = {
            type = "structure",
        },
    },
}

M.UpdateCustomRoutingAcceleratorAttributesInput = {
    type = "structure",
    members = {
        AcceleratorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowLogsEnabled = {
            type = "boolean",
        },
        FlowLogsS3Bucket = {
            type = "string",
        },
        FlowLogsS3Prefix = {
            type = "string",
        },
    },
}

M.UpdateCustomRoutingAcceleratorAttributesOutput = {
    type = "structure",
    members = {
        AcceleratorAttributes = {
            type = "structure",
        },
    },
}

M.UpdateCustomRoutingListenerInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortRanges = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCustomRoutingListenerOutput = {
    type = "structure",
    members = {
        Listener = {
            type = "structure",
        },
    },
}

M.UpdateEndpointGroupInput = {
    type = "structure",
    members = {
        EndpointGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointConfigurations = {
            type = "list",
            member_type = "structure",
        },
        TrafficDialPercentage = {
            type = "number",
        },
        HealthCheckPort = {
            type = "number",
        },
        HealthCheckProtocol = {
            type = "string",
        },
        HealthCheckPath = {
            type = "string",
        },
        HealthCheckIntervalSeconds = {
            type = "number",
        },
        ThresholdCount = {
            type = "number",
        },
        PortOverrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateEndpointGroupOutput = {
    type = "structure",
    members = {
        EndpointGroup = {
            type = "structure",
        },
    },
}

M.UpdateListenerInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortRanges = {
            type = "list",
            member_type = "structure",
        },
        Protocol = {
            type = "string",
        },
        ClientAffinity = {
            type = "string",
        },
    },
}

M.UpdateListenerOutput = {
    type = "structure",
    members = {
        Listener = {
            type = "structure",
        },
    },
}

M.WithdrawByoipCidrInput = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WithdrawByoipCidrOutput = {
    type = "structure",
    members = {
        ByoipCidr = {
            type = "structure",
        },
    },
}

return M
