local M = {}

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

M.CreateHttpNamespaceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateHttpNamespaceOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.DuplicateRequest = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        DuplicateOperationId = {
            type = "string",
        },
    },
}

M.InvalidInput = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NamespaceAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        NamespaceId = {
            type = "string",
        },
    },
}

M.ResourceLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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

M.SOA = {
    type = "structure",
    members = {
        TTL = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivateDnsPropertiesMutable = {
    type = "structure",
    members = {
        SOA = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivateDnsNamespaceProperties = {
    type = "structure",
    members = {
        DnsProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePrivateDnsNamespaceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Vpc = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Properties = {
            type = "structure",
        },
    },
}

M.CreatePrivateDnsNamespaceOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.PublicDnsPropertiesMutable = {
    type = "structure",
    members = {
        SOA = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PublicDnsNamespaceProperties = {
    type = "structure",
    members = {
        DnsProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePublicDnsNamespaceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Properties = {
            type = "structure",
        },
    },
}

M.CreatePublicDnsNamespaceOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.RecordType = {
    SRV = "SRV",
    A = "A",
    AAAA = "AAAA",
    CNAME = "CNAME",
}

M.DnsRecord = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TTL = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RoutingPolicy = {
    MULTIVALUE = "MULTIVALUE",
    WEIGHTED = "WEIGHTED",
}

M.DnsConfig = {
    type = "structure",
    members = {
        NamespaceId = {
            type = "string",
        },
        RoutingPolicy = {
            type = "string",
        },
        DnsRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.HealthCheckType = {
    HTTP = "HTTP",
    HTTPS = "HTTPS",
    TCP = "TCP",
}

M.HealthCheckConfig = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourcePath = {
            type = "string",
        },
        FailureThreshold = {
            type = "number",
        },
    },
}

M.HealthCheckCustomConfig = {
    type = "structure",
    members = {
        FailureThreshold = {
            type = "number",
        },
    },
}

M.ServiceTypeOption = {
    HTTP = "HTTP",
}

M.CreateServiceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NamespaceId = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DnsConfig = {
            type = "structure",
        },
        HealthCheckConfig = {
            type = "structure",
        },
        HealthCheckCustomConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Type = {
            type = "string",
        },
    },
}

M.ServiceType = {
    HTTP = "HTTP",
    DNS_HTTP = "DNS_HTTP",
    DNS = "DNS",
}

M.Service = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        NamespaceId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        InstanceCount = {
            type = "number",
        },
        DnsConfig = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        HealthCheckConfig = {
            type = "structure",
        },
        HealthCheckCustomConfig = {
            type = "structure",
        },
        CreateDate = {
            type = "timestamp",
        },
        CreatorRequestId = {
            type = "string",
        },
        CreatedByAccount = {
            type = "string",
        },
    },
}

M.CreateServiceOutput = {
    type = "structure",
    members = {
        Service = {
            type = "structure",
        },
    },
}

M.NamespaceNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        ServiceId = {
            type = "string",
        },
        ServiceArn = {
            type = "string",
        },
    },
}

M.CustomHealthNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CustomHealthStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.DeleteNamespaceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNamespaceOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.ResourceInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteServiceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceOutput = {
    type = "structure",
}

M.ServiceNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteServiceAttributesInput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceAttributesOutput = {
    type = "structure",
}

M.DeregisterInstanceInput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterInstanceOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.InstanceNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HealthStatusFilter = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
    ALL = "ALL",
    HEALTHY_OR_ELSE_ALL = "HEALTHY_OR_ELSE_ALL",
}

M.DiscoverInstancesInput = {
    type = "structure",
    members = {
        NamespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        QueryParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OptionalParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        OwnerAccount = {
            type = "string",
        },
    },
}

M.HealthStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
    UNKNOWN = "UNKNOWN",
}

M.HttpInstanceSummary = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
        },
        NamespaceName = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DiscoverInstancesOutput = {
    type = "structure",
    members = {
        Instances = {
            type = "list",
            member_type = "structure",
        },
        InstancesRevision = {
            type = "number",
        },
    },
}

M.RequestLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DiscoverInstancesRevisionInput = {
    type = "structure",
    members = {
        NamespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OwnerAccount = {
            type = "string",
        },
    },
}

M.DiscoverInstancesRevisionOutput = {
    type = "structure",
    members = {
        InstancesRevision = {
            type = "number",
        },
    },
}

M.DnsConfigChange = {
    type = "structure",
    members = {
        DnsRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DnsProperties = {
    type = "structure",
    members = {
        HostedZoneId = {
            type = "string",
        },
        SOA = {
            type = "structure",
        },
    },
}

M.FilterCondition = {
    EQ = "EQ",
    IN = "IN",
    BETWEEN = "BETWEEN",
    BEGINS_WITH = "BEGINS_WITH",
}

M.GetInstanceInput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Instance = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreatedByAccount = {
            type = "string",
        },
    },
}

M.GetInstanceOutput = {
    type = "structure",
    members = {
        ResourceOwner = {
            type = "string",
        },
        Instance = {
            type = "structure",
        },
    },
}

M.GetInstancesHealthStatusInput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Instances = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetInstancesHealthStatusOutput = {
    type = "structure",
    members = {
        Status = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetNamespaceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HttpProperties = {
    type = "structure",
    members = {
        HttpName = {
            type = "string",
        },
    },
}

M.NamespaceProperties = {
    type = "structure",
    members = {
        DnsProperties = {
            type = "structure",
        },
        HttpProperties = {
            type = "structure",
        },
    },
}

M.NamespaceType = {
    DNS_PUBLIC = "DNS_PUBLIC",
    DNS_PRIVATE = "DNS_PRIVATE",
    HTTP = "HTTP",
}

M.Namespace = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ServiceCount = {
            type = "number",
        },
        Properties = {
            type = "structure",
        },
        CreateDate = {
            type = "timestamp",
        },
        CreatorRequestId = {
            type = "string",
        },
    },
}

M.GetNamespaceOutput = {
    type = "structure",
    members = {
        Namespace = {
            type = "structure",
        },
    },
}

M.GetOperationInput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OwnerAccount = {
            type = "string",
        },
    },
}

M.OperationStatus = {
    SUBMITTED = "SUBMITTED",
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    FAIL = "FAIL",
}

M.OperationTargetType = {
    NAMESPACE = "NAMESPACE",
    SERVICE = "SERVICE",
    INSTANCE = "INSTANCE",
}

M.OperationType = {
    CREATE_NAMESPACE = "CREATE_NAMESPACE",
    DELETE_NAMESPACE = "DELETE_NAMESPACE",
    UPDATE_NAMESPACE = "UPDATE_NAMESPACE",
    UPDATE_SERVICE = "UPDATE_SERVICE",
    REGISTER_INSTANCE = "REGISTER_INSTANCE",
    DEREGISTER_INSTANCE = "DEREGISTER_INSTANCE",
}

M.Operation = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        OwnerAccount = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        UpdateDate = {
            type = "timestamp",
        },
        Targets = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetOperationOutput = {
    type = "structure",
    members = {
        Operation = {
            type = "structure",
        },
    },
}

M.OperationNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetServiceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetServiceOutput = {
    type = "structure",
    members = {
        Service = {
            type = "structure",
        },
    },
}

M.GetServiceAttributesInput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceAttributes = {
    type = "structure",
    members = {
        ServiceArn = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetServiceAttributesOutput = {
    type = "structure",
    members = {
        ServiceAttributes = {
            type = "structure",
        },
    },
}

M.HttpNamespaceChange = {
    type = "structure",
    members = {
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreatedByAccount = {
            type = "string",
        },
    },
}

M.ListInstancesInput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListInstancesOutput = {
    type = "structure",
    members = {
        ResourceOwner = {
            type = "string",
        },
        Instances = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.NamespaceFilterName = {
    TYPE = "TYPE",
    NAME = "NAME",
    HTTP_NAME = "HTTP_NAME",
    RESOURCE_OWNER = "RESOURCE_OWNER",
}

M.NamespaceFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Condition = {
            type = "string",
        },
    },
}

M.ListNamespacesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NamespaceSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ServiceCount = {
            type = "number",
        },
        Properties = {
            type = "structure",
        },
        CreateDate = {
            type = "timestamp",
        },
    },
}

M.ListNamespacesOutput = {
    type = "structure",
    members = {
        Namespaces = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OperationFilterName = {
    NAMESPACE_ID = "NAMESPACE_ID",
    SERVICE_ID = "SERVICE_ID",
    STATUS = "STATUS",
    TYPE = "TYPE",
    UPDATE_DATE = "UPDATE_DATE",
}

M.OperationFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Condition = {
            type = "string",
        },
    },
}

M.ListOperationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.OperationSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListOperationsOutput = {
    type = "structure",
    members = {
        Operations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ServiceFilterName = {
    NAMESPACE_ID = "NAMESPACE_ID",
    RESOURCE_OWNER = "RESOURCE_OWNER",
}

M.ServiceFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Condition = {
            type = "string",
        },
    },
}

M.ListServicesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        InstanceCount = {
            type = "number",
        },
        DnsConfig = {
            type = "structure",
        },
        HealthCheckConfig = {
            type = "structure",
        },
        HealthCheckCustomConfig = {
            type = "structure",
        },
        CreateDate = {
            type = "timestamp",
        },
        CreatedByAccount = {
            type = "string",
        },
    },
}

M.ListServicesOutput = {
    type = "structure",
    members = {
        Services = {
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
        ResourceARN = {
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

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SOAChange = {
    type = "structure",
    members = {
        TTL = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivateDnsPropertiesMutableChange = {
    type = "structure",
    members = {
        SOA = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivateDnsNamespacePropertiesChange = {
    type = "structure",
    members = {
        DnsProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivateDnsNamespaceChange = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Properties = {
            type = "structure",
        },
    },
}

M.PublicDnsPropertiesMutableChange = {
    type = "structure",
    members = {
        SOA = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PublicDnsNamespacePropertiesChange = {
    type = "structure",
    members = {
        DnsProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PublicDnsNamespaceChange = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Properties = {
            type = "structure",
        },
    },
}

M.RegisterInstanceInput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterInstanceOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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
        ResourceARN = {
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

M.UpdateHttpNamespaceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdaterRequestId = {
            type = "string",
        },
        Namespace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateHttpNamespaceOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.UpdateInstanceCustomHealthStatusInput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateInstanceCustomHealthStatusOutput = {
    type = "structure",
}

M.UpdatePrivateDnsNamespaceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdaterRequestId = {
            type = "string",
        },
        Namespace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePrivateDnsNamespaceOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.UpdatePublicDnsNamespaceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdaterRequestId = {
            type = "string",
        },
        Namespace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePublicDnsNamespaceOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.ServiceChange = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        DnsConfig = {
            type = "structure",
        },
        HealthCheckConfig = {
            type = "structure",
        },
    },
}

M.UpdateServiceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Service = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.ServiceAttributesLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateServiceAttributesInput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceAttributesOutput = {
    type = "structure",
}

return M
