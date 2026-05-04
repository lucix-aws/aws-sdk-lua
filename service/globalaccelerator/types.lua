local M = {}

M.AcceleratorEvent = {
    type = "structure",
    id = "AcceleratorEvent",
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
    id = "IpSet",
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
    id = "Accelerator",
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
    id = "AcceleratorAttributes",
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
    id = "AcceleratorNotDisabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AcceleratorNotFoundException = {
    type = "structure",
    id = "AcceleratorNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

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

M.CustomRoutingEndpointConfiguration = {
    type = "structure",
    id = "CustomRoutingEndpointConfiguration",
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
    id = "AddCustomRoutingEndpointsInput",
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
    id = "CustomRoutingEndpointDescription",
    members = {
        EndpointId = {
            type = "string",
        },
    },
}

M.AddCustomRoutingEndpointsOutput = {
    type = "structure",
    id = "AddCustomRoutingEndpointsOutput",
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
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EndpointAlreadyExistsException = {
    type = "structure",
    id = "EndpointAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EndpointGroupNotFoundException = {
    type = "structure",
    id = "EndpointGroupNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    id = "InternalServiceErrorException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    id = "InvalidArgumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EndpointConfiguration = {
    type = "structure",
    id = "EndpointConfiguration",
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
    id = "AddEndpointsInput",
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
    id = "EndpointDescription",
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
    id = "AddEndpointsOutput",
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
    id = "TransactionInProgressException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AdvertiseByoipCidrInput = {
    type = "structure",
    id = "AdvertiseByoipCidrInput",
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
    id = "ByoipCidrEvent",
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
    id = "ByoipCidr",
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
    id = "AdvertiseByoipCidrOutput",
    members = {
        ByoipCidr = M.ByoipCidr,
    },
}

M.ByoipCidrNotFoundException = {
    type = "structure",
    id = "ByoipCidrNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IncorrectCidrStateException = {
    type = "structure",
    id = "IncorrectCidrStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AllowCustomRoutingTrafficInput = {
    type = "structure",
    id = "AllowCustomRoutingTrafficInput",
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
    id = "AllowCustomRoutingTrafficOutput",
}

M.AssociatedEndpointGroupFoundException = {
    type = "structure",
    id = "AssociatedEndpointGroupFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociatedListenerFoundException = {
    type = "structure",
    id = "AssociatedListenerFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Resource = {
    type = "structure",
    id = "Resource",
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
    id = "Attachment",
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
    id = "AttachmentNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CidrAuthorizationContext = {
    type = "structure",
    id = "CidrAuthorizationContext",
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
    id = "Tag",
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
    id = "CreateAcceleratorInput",
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
                idempotency_token = true,
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
    id = "CreateAcceleratorOutput",
    members = {
        Accelerator = M.Accelerator,
    },
}

M.CreateCrossAccountAttachmentInput = {
    type = "structure",
    id = "CreateCrossAccountAttachmentInput",
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
                idempotency_token = true,
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
    id = "CreateCrossAccountAttachmentOutput",
    members = {
        CrossAccountAttachment = M.Attachment,
    },
}

M.CreateCustomRoutingAcceleratorInput = {
    type = "structure",
    id = "CreateCustomRoutingAcceleratorInput",
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
                idempotency_token = true,
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
    id = "CustomRoutingAccelerator",
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
    id = "CreateCustomRoutingAcceleratorOutput",
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
    id = "CustomRoutingDestinationConfiguration",
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
    id = "CreateCustomRoutingEndpointGroupInput",
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
                idempotency_token = true,
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
    id = "CustomRoutingDestinationDescription",
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
    id = "CustomRoutingEndpointGroup",
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
    id = "CreateCustomRoutingEndpointGroupOutput",
    members = {
        EndpointGroup = M.CustomRoutingEndpointGroup,
    },
}

M.EndpointGroupAlreadyExistsException = {
    type = "structure",
    id = "EndpointGroupAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidPortRangeException = {
    type = "structure",
    id = "InvalidPortRangeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListenerNotFoundException = {
    type = "structure",
    id = "ListenerNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PortRange = {
    type = "structure",
    id = "PortRange",
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
    id = "CreateCustomRoutingListenerInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CustomRoutingListener = {
    type = "structure",
    id = "CustomRoutingListener",
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
    id = "CreateCustomRoutingListenerOutput",
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
    id = "PortOverride",
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
    id = "CreateEndpointGroupInput",
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
                idempotency_token = true,
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
    id = "EndpointGroup",
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
    id = "CreateEndpointGroupOutput",
    members = {
        EndpointGroup = M.EndpointGroup,
    },
}

M.CreateListenerInput = {
    type = "structure",
    id = "CreateListenerInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.Listener = {
    type = "structure",
    id = "Listener",
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
    id = "CreateListenerOutput",
    members = {
        Listener = M.Listener,
    },
}

M.CrossAccountResource = {
    type = "structure",
    id = "CrossAccountResource",
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
    id = "CustomRoutingAcceleratorAttributes",
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
    id = "DeleteAcceleratorInput",
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
    id = "DeleteAcceleratorOutput",
}

M.DeleteCrossAccountAttachmentInput = {
    type = "structure",
    id = "DeleteCrossAccountAttachmentInput",
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
    id = "DeleteCrossAccountAttachmentOutput",
}

M.DeleteCustomRoutingAcceleratorInput = {
    type = "structure",
    id = "DeleteCustomRoutingAcceleratorInput",
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
    id = "DeleteCustomRoutingAcceleratorOutput",
}

M.DeleteCustomRoutingEndpointGroupInput = {
    type = "structure",
    id = "DeleteCustomRoutingEndpointGroupInput",
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
    id = "DeleteCustomRoutingEndpointGroupOutput",
}

M.DeleteCustomRoutingListenerInput = {
    type = "structure",
    id = "DeleteCustomRoutingListenerInput",
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
    id = "DeleteCustomRoutingListenerOutput",
}

M.DeleteEndpointGroupInput = {
    type = "structure",
    id = "DeleteEndpointGroupInput",
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
    id = "DeleteEndpointGroupOutput",
}

M.DeleteListenerInput = {
    type = "structure",
    id = "DeleteListenerInput",
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
    id = "DeleteListenerOutput",
}

M.DenyCustomRoutingTrafficInput = {
    type = "structure",
    id = "DenyCustomRoutingTrafficInput",
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
    id = "DenyCustomRoutingTrafficOutput",
}

M.DeprovisionByoipCidrInput = {
    type = "structure",
    id = "DeprovisionByoipCidrInput",
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
    id = "DeprovisionByoipCidrOutput",
    members = {
        ByoipCidr = M.ByoipCidr,
    },
}

M.DescribeAcceleratorInput = {
    type = "structure",
    id = "DescribeAcceleratorInput",
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
    id = "DescribeAcceleratorOutput",
    members = {
        Accelerator = M.Accelerator,
    },
}

M.DescribeAcceleratorAttributesInput = {
    type = "structure",
    id = "DescribeAcceleratorAttributesInput",
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
    id = "DescribeAcceleratorAttributesOutput",
    members = {
        AcceleratorAttributes = M.AcceleratorAttributes,
    },
}

M.DescribeCrossAccountAttachmentInput = {
    type = "structure",
    id = "DescribeCrossAccountAttachmentInput",
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
    id = "DescribeCrossAccountAttachmentOutput",
    members = {
        CrossAccountAttachment = M.Attachment,
    },
}

M.DescribeCustomRoutingAcceleratorInput = {
    type = "structure",
    id = "DescribeCustomRoutingAcceleratorInput",
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
    id = "DescribeCustomRoutingAcceleratorOutput",
    members = {
        Accelerator = M.CustomRoutingAccelerator,
    },
}

M.DescribeCustomRoutingAcceleratorAttributesInput = {
    type = "structure",
    id = "DescribeCustomRoutingAcceleratorAttributesInput",
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
    id = "DescribeCustomRoutingAcceleratorAttributesOutput",
    members = {
        AcceleratorAttributes = M.CustomRoutingAcceleratorAttributes,
    },
}

M.DescribeCustomRoutingEndpointGroupInput = {
    type = "structure",
    id = "DescribeCustomRoutingEndpointGroupInput",
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
    id = "DescribeCustomRoutingEndpointGroupOutput",
    members = {
        EndpointGroup = M.CustomRoutingEndpointGroup,
    },
}

M.DescribeCustomRoutingListenerInput = {
    type = "structure",
    id = "DescribeCustomRoutingListenerInput",
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
    id = "DescribeCustomRoutingListenerOutput",
    members = {
        Listener = M.CustomRoutingListener,
    },
}

M.DescribeEndpointGroupInput = {
    type = "structure",
    id = "DescribeEndpointGroupInput",
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
    id = "DescribeEndpointGroupOutput",
    members = {
        EndpointGroup = M.EndpointGroup,
    },
}

M.DescribeListenerInput = {
    type = "structure",
    id = "DescribeListenerInput",
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
    id = "DescribeListenerOutput",
    members = {
        Listener = M.Listener,
    },
}

M.SocketAddress = {
    type = "structure",
    id = "SocketAddress",
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
    id = "DestinationPortMapping",
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
    id = "EndpointIdentifier",
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
    id = "EndpointNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAcceleratorsInput = {
    type = "structure",
    id = "ListAcceleratorsInput",
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
    id = "ListAcceleratorsOutput",
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
    id = "ListByoipCidrsInput",
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
    id = "ListByoipCidrsOutput",
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
    id = "ListCrossAccountAttachmentsInput",
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
    id = "ListCrossAccountAttachmentsOutput",
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
    id = "ListCrossAccountResourceAccountsInput",
}

M.ListCrossAccountResourceAccountsOutput = {
    type = "structure",
    id = "ListCrossAccountResourceAccountsOutput",
    members = {
        ResourceOwnerAwsAccountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListCrossAccountResourcesInput = {
    type = "structure",
    id = "ListCrossAccountResourcesInput",
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
    id = "ListCrossAccountResourcesOutput",
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
    id = "ListCustomRoutingAcceleratorsInput",
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
    id = "ListCustomRoutingAcceleratorsOutput",
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
    id = "ListCustomRoutingEndpointGroupsInput",
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
    id = "ListCustomRoutingEndpointGroupsOutput",
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
    id = "ListCustomRoutingListenersInput",
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
    id = "ListCustomRoutingListenersOutput",
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
    id = "ListCustomRoutingPortMappingsInput",
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
    id = "PortMapping",
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
    id = "ListCustomRoutingPortMappingsOutput",
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
    id = "ListCustomRoutingPortMappingsByDestinationInput",
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
    id = "ListCustomRoutingPortMappingsByDestinationOutput",
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
    id = "ListEndpointGroupsInput",
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
    id = "ListEndpointGroupsOutput",
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
    id = "ListListenersInput",
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
    id = "ListListenersOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ProvisionByoipCidrInput = {
    type = "structure",
    id = "ProvisionByoipCidrInput",
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
    id = "ProvisionByoipCidrOutput",
    members = {
        ByoipCidr = M.ByoipCidr,
    },
}

M.RemoveCustomRoutingEndpointsInput = {
    type = "structure",
    id = "RemoveCustomRoutingEndpointsInput",
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
    id = "RemoveCustomRoutingEndpointsOutput",
}

M.RemoveEndpointsInput = {
    type = "structure",
    id = "RemoveEndpointsInput",
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
    id = "RemoveEndpointsOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateAcceleratorInput = {
    type = "structure",
    id = "UpdateAcceleratorInput",
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
    id = "UpdateAcceleratorOutput",
    members = {
        Accelerator = M.Accelerator,
    },
}

M.UpdateAcceleratorAttributesInput = {
    type = "structure",
    id = "UpdateAcceleratorAttributesInput",
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
    id = "UpdateAcceleratorAttributesOutput",
    members = {
        AcceleratorAttributes = M.AcceleratorAttributes,
    },
}

M.UpdateCrossAccountAttachmentInput = {
    type = "structure",
    id = "UpdateCrossAccountAttachmentInput",
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
    id = "UpdateCrossAccountAttachmentOutput",
    members = {
        CrossAccountAttachment = M.Attachment,
    },
}

M.UpdateCustomRoutingAcceleratorInput = {
    type = "structure",
    id = "UpdateCustomRoutingAcceleratorInput",
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
    id = "UpdateCustomRoutingAcceleratorOutput",
    members = {
        Accelerator = M.CustomRoutingAccelerator,
    },
}

M.UpdateCustomRoutingAcceleratorAttributesInput = {
    type = "structure",
    id = "UpdateCustomRoutingAcceleratorAttributesInput",
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
    id = "UpdateCustomRoutingAcceleratorAttributesOutput",
    members = {
        AcceleratorAttributes = M.CustomRoutingAcceleratorAttributes,
    },
}

M.UpdateCustomRoutingListenerInput = {
    type = "structure",
    id = "UpdateCustomRoutingListenerInput",
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
    id = "UpdateCustomRoutingListenerOutput",
    members = {
        Listener = M.CustomRoutingListener,
    },
}

M.UpdateEndpointGroupInput = {
    type = "structure",
    id = "UpdateEndpointGroupInput",
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
    id = "UpdateEndpointGroupOutput",
    members = {
        EndpointGroup = M.EndpointGroup,
    },
}

M.UpdateListenerInput = {
    type = "structure",
    id = "UpdateListenerInput",
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
    id = "UpdateListenerOutput",
    members = {
        Listener = M.Listener,
    },
}

M.WithdrawByoipCidrInput = {
    type = "structure",
    id = "WithdrawByoipCidrInput",
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
    id = "WithdrawByoipCidrOutput",
    members = {
        ByoipCidr = M.ByoipCidr,
    },
}

return M
