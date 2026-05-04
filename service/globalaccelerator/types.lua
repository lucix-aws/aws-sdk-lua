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
            member = { type = "string" },
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
            member = M.IpSet,
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
            member = M.AcceleratorEvent,
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
            member = M.CustomRoutingEndpointConfiguration,
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
            member = M.CustomRoutingEndpointDescription,
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
            type = "integer",
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
            member = M.EndpointConfiguration,
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
            type = "integer",
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
            member = M.EndpointDescription,
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
            member = M.ByoipCidrEvent,
        },
    },
}

M.AdvertiseByoipCidrOutput = {
    type = "structure",
    members = {
        ByoipCidr = M.ByoipCidr,
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
            member = { type = "string" },
        },
        DestinationPorts = {
            type = "list",
            member = { type = "integer" },
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
            traits = {
                default = "",
            },
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
            member = { type = "string" },
        },
        Resources = {
            type = "list",
            member = M.Resource,
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
            member = { type = "string" },
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
            member = M.Tag,
        },
    },
}

M.CreateAcceleratorOutput = {
    type = "structure",
    members = {
        Accelerator = M.Accelerator,
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
            member = { type = "string" },
        },
        Resources = {
            type = "list",
            member = M.Resource,
        },
        IdempotencyToken = {
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

M.CreateCrossAccountAttachmentOutput = {
    type = "structure",
    members = {
        CrossAccountAttachment = M.Attachment,
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
            member = { type = "string" },
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
            member = M.Tag,
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
            member = M.IpSet,
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
        Accelerator = M.CustomRoutingAccelerator,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        ToPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Protocols = {
            type = "list",
            member = { type = "string" },
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
            member = M.CustomRoutingDestinationConfiguration,
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
            type = "integer",
        },
        ToPort = {
            type = "integer",
        },
        Protocols = {
            type = "list",
            member = { type = "string" },
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
            member = M.CustomRoutingDestinationDescription,
        },
        EndpointDescriptions = {
            type = "list",
            member = M.CustomRoutingEndpointDescription,
        },
    },
}

M.CreateCustomRoutingEndpointGroupOutput = {
    type = "structure",
    members = {
        EndpointGroup = M.CustomRoutingEndpointGroup,
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
            type = "integer",
        },
        ToPort = {
            type = "integer",
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
            member = M.PortRange,
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
            member = M.PortRange,
        },
    },
}

M.CreateCustomRoutingListenerOutput = {
    type = "structure",
    members = {
        Listener = M.CustomRoutingListener,
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
            type = "integer",
        },
        EndpointPort = {
            type = "integer",
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
            member = M.EndpointConfiguration,
        },
        TrafficDialPercentage = {
            type = "float",
        },
        HealthCheckPort = {
            type = "integer",
        },
        HealthCheckProtocol = {
            type = "string",
        },
        HealthCheckPath = {
            type = "string",
        },
        HealthCheckIntervalSeconds = {
            type = "integer",
        },
        ThresholdCount = {
            type = "integer",
        },
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortOverrides = {
            type = "list",
            member = M.PortOverride,
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
            member = M.EndpointDescription,
        },
        TrafficDialPercentage = {
            type = "float",
        },
        HealthCheckPort = {
            type = "integer",
        },
        HealthCheckProtocol = {
            type = "string",
        },
        HealthCheckPath = {
            type = "string",
        },
        HealthCheckIntervalSeconds = {
            type = "integer",
        },
        ThresholdCount = {
            type = "integer",
        },
        PortOverrides = {
            type = "list",
            member = M.PortOverride,
        },
    },
}

M.CreateEndpointGroupOutput = {
    type = "structure",
    members = {
        EndpointGroup = M.EndpointGroup,
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
            member = M.PortRange,
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
            member = M.PortRange,
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
        Listener = M.Listener,
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
            member = { type = "string" },
        },
        DestinationPorts = {
            type = "list",
            member = { type = "integer" },
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
        ByoipCidr = M.ByoipCidr,
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
        Accelerator = M.Accelerator,
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
        AcceleratorAttributes = M.AcceleratorAttributes,
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
        CrossAccountAttachment = M.Attachment,
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
        Accelerator = M.CustomRoutingAccelerator,
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
        AcceleratorAttributes = M.CustomRoutingAcceleratorAttributes,
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
        EndpointGroup = M.CustomRoutingEndpointGroup,
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
        Listener = M.CustomRoutingListener,
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
        EndpointGroup = M.EndpointGroup,
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
        Listener = M.Listener,
    },
}

M.SocketAddress = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
        },
        Port = {
            type = "integer",
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
            member = M.SocketAddress,
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
        DestinationSocketAddress = M.SocketAddress,
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
            type = "integer",
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
            member = M.Accelerator,
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
            type = "integer",
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
            member = M.ByoipCidr,
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
            type = "integer",
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
            member = M.Attachment,
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
            member = { type = "string" },
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
            type = "integer",
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
            member = M.CrossAccountResource,
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
            type = "integer",
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
            member = M.CustomRoutingAccelerator,
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
            type = "integer",
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
            member = M.CustomRoutingEndpointGroup,
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
            type = "integer",
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
            member = M.CustomRoutingListener,
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
            type = "integer",
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
            type = "integer",
        },
        EndpointGroupArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        DestinationSocketAddress = M.SocketAddress,
        Protocols = {
            type = "list",
            member = { type = "string" },
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
            member = M.PortMapping,
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
            type = "integer",
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
            member = M.DestinationPortMapping,
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
            type = "integer",
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
            member = M.EndpointGroup,
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
            type = "integer",
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
            member = M.Listener,
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
            member = M.Tag,
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
        CidrAuthorizationContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CidrAuthorizationContext }),
    },
}

M.ProvisionByoipCidrOutput = {
    type = "structure",
    members = {
        ByoipCidr = M.ByoipCidr,
    },
}

M.RemoveCustomRoutingEndpointsInput = {
    type = "structure",
    members = {
        EndpointIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.EndpointIdentifier,
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
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateAcceleratorOutput = {
    type = "structure",
    members = {
        Accelerator = M.Accelerator,
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
        AcceleratorAttributes = M.AcceleratorAttributes,
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
            member = { type = "string" },
        },
        RemovePrincipals = {
            type = "list",
            member = { type = "string" },
        },
        AddResources = {
            type = "list",
            member = M.Resource,
        },
        RemoveResources = {
            type = "list",
            member = M.Resource,
        },
    },
}

M.UpdateCrossAccountAttachmentOutput = {
    type = "structure",
    members = {
        CrossAccountAttachment = M.Attachment,
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
            member = { type = "string" },
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateCustomRoutingAcceleratorOutput = {
    type = "structure",
    members = {
        Accelerator = M.CustomRoutingAccelerator,
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
        AcceleratorAttributes = M.CustomRoutingAcceleratorAttributes,
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
            member = M.PortRange,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCustomRoutingListenerOutput = {
    type = "structure",
    members = {
        Listener = M.CustomRoutingListener,
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
            member = M.EndpointConfiguration,
        },
        TrafficDialPercentage = {
            type = "float",
        },
        HealthCheckPort = {
            type = "integer",
        },
        HealthCheckProtocol = {
            type = "string",
        },
        HealthCheckPath = {
            type = "string",
        },
        HealthCheckIntervalSeconds = {
            type = "integer",
        },
        ThresholdCount = {
            type = "integer",
        },
        PortOverrides = {
            type = "list",
            member = M.PortOverride,
        },
    },
}

M.UpdateEndpointGroupOutput = {
    type = "structure",
    members = {
        EndpointGroup = M.EndpointGroup,
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
            member = M.PortRange,
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
        Listener = M.Listener,
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
        ByoipCidr = M.ByoipCidr,
    },
}

return M
