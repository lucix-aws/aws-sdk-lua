local M = {}

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

M.CreateHttpNamespaceInput = {
    type = "structure",
    id = "CreateHttpNamespaceInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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

M.CreateHttpNamespaceOutput = {
    type = "structure",
    id = "CreateHttpNamespaceOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.DuplicateRequest = {
    type = "structure",
    id = "DuplicateRequest",
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
    id = "InvalidInput",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NamespaceAlreadyExists = {
    type = "structure",
    id = "NamespaceAlreadyExists",
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
    id = "ResourceLimitExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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

M.SOA = {
    type = "structure",
    id = "SOA",
    members = {
        TTL = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivateDnsPropertiesMutable = {
    type = "structure",
    id = "PrivateDnsPropertiesMutable",
    members = {
        SOA = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SOA }),
    },
}

M.PrivateDnsNamespaceProperties = {
    type = "structure",
    id = "PrivateDnsNamespaceProperties",
    members = {
        DnsProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivateDnsPropertiesMutable }),
    },
}

M.CreatePrivateDnsNamespaceInput = {
    type = "structure",
    id = "CreatePrivateDnsNamespaceInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
            member = M.Tag,
        },
        Properties = M.PrivateDnsNamespaceProperties,
    },
}

M.CreatePrivateDnsNamespaceOutput = {
    type = "structure",
    id = "CreatePrivateDnsNamespaceOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.PublicDnsPropertiesMutable = {
    type = "structure",
    id = "PublicDnsPropertiesMutable",
    members = {
        SOA = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SOA }),
    },
}

M.PublicDnsNamespaceProperties = {
    type = "structure",
    id = "PublicDnsNamespaceProperties",
    members = {
        DnsProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PublicDnsPropertiesMutable }),
    },
}

M.CreatePublicDnsNamespaceInput = {
    type = "structure",
    id = "CreatePublicDnsNamespaceInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Properties = M.PublicDnsNamespaceProperties,
    },
}

M.CreatePublicDnsNamespaceOutput = {
    type = "structure",
    id = "CreatePublicDnsNamespaceOutput",
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
    id = "DnsRecord",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TTL = {
            type = "long",
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
    id = "DnsConfig",
    members = {
        NamespaceId = {
            type = "string",
        },
        RoutingPolicy = {
            type = "string",
        },
        DnsRecords = {
            type = "list",
            member = M.DnsRecord,
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
    id = "HealthCheckConfig",
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
            type = "integer",
        },
    },
}

M.HealthCheckCustomConfig = {
    type = "structure",
    id = "HealthCheckCustomConfig",
    members = {
        FailureThreshold = {
            type = "integer",
        },
    },
}

M.ServiceTypeOption = {
    HTTP = "HTTP",
}

M.CreateServiceInput = {
    type = "structure",
    id = "CreateServiceInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        Description = {
            type = "string",
        },
        DnsConfig = M.DnsConfig,
        HealthCheckConfig = M.HealthCheckConfig,
        HealthCheckCustomConfig = M.HealthCheckCustomConfig,
        Tags = {
            type = "list",
            member = M.Tag,
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
    id = "Service",
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
            type = "integer",
        },
        DnsConfig = M.DnsConfig,
        Type = {
            type = "string",
        },
        HealthCheckConfig = M.HealthCheckConfig,
        HealthCheckCustomConfig = M.HealthCheckCustomConfig,
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
    id = "CreateServiceOutput",
    members = {
        Service = M.Service,
    },
}

M.NamespaceNotFound = {
    type = "structure",
    id = "NamespaceNotFound",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceAlreadyExists = {
    type = "structure",
    id = "ServiceAlreadyExists",
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
    id = "CustomHealthNotFound",
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
    id = "DeleteNamespaceInput",
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
    id = "DeleteNamespaceOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.ResourceInUse = {
    type = "structure",
    id = "ResourceInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteServiceInput = {
    type = "structure",
    id = "DeleteServiceInput",
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
    id = "DeleteServiceOutput",
}

M.ServiceNotFound = {
    type = "structure",
    id = "ServiceNotFound",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteServiceAttributesInput = {
    type = "structure",
    id = "DeleteServiceAttributesInput",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceAttributesOutput = {
    type = "structure",
    id = "DeleteServiceAttributesOutput",
}

M.DeregisterInstanceInput = {
    type = "structure",
    id = "DeregisterInstanceInput",
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
    id = "DeregisterInstanceOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.InstanceNotFound = {
    type = "structure",
    id = "InstanceNotFound",
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
    id = "DiscoverInstancesInput",
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
            type = "integer",
        },
        QueryParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        OptionalParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "HttpInstanceSummary",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DiscoverInstancesOutput = {
    type = "structure",
    id = "DiscoverInstancesOutput",
    members = {
        Instances = {
            type = "list",
            member = M.HttpInstanceSummary,
        },
        InstancesRevision = {
            type = "long",
        },
    },
}

M.RequestLimitExceeded = {
    type = "structure",
    id = "RequestLimitExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DiscoverInstancesRevisionInput = {
    type = "structure",
    id = "DiscoverInstancesRevisionInput",
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
    id = "DiscoverInstancesRevisionOutput",
    members = {
        InstancesRevision = {
            type = "long",
        },
    },
}

M.DnsConfigChange = {
    type = "structure",
    id = "DnsConfigChange",
    members = {
        DnsRecords = {
            type = "list",
            member = M.DnsRecord,
            traits = {
                required = true,
            },
        },
    },
}

M.DnsProperties = {
    type = "structure",
    id = "DnsProperties",
    members = {
        HostedZoneId = {
            type = "string",
        },
        SOA = M.SOA,
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
    id = "GetInstanceInput",
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
    id = "Instance",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatedByAccount = {
            type = "string",
        },
    },
}

M.GetInstanceOutput = {
    type = "structure",
    id = "GetInstanceOutput",
    members = {
        ResourceOwner = {
            type = "string",
        },
        Instance = M.Instance,
    },
}

M.GetInstancesHealthStatusInput = {
    type = "structure",
    id = "GetInstancesHealthStatusInput",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Instances = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetInstancesHealthStatusOutput = {
    type = "structure",
    id = "GetInstancesHealthStatusOutput",
    members = {
        Status = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetNamespaceInput = {
    type = "structure",
    id = "GetNamespaceInput",
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
    id = "HttpProperties",
    members = {
        HttpName = {
            type = "string",
        },
    },
}

M.NamespaceProperties = {
    type = "structure",
    id = "NamespaceProperties",
    members = {
        DnsProperties = M.DnsProperties,
        HttpProperties = M.HttpProperties,
    },
}

M.NamespaceType = {
    DNS_PUBLIC = "DNS_PUBLIC",
    DNS_PRIVATE = "DNS_PRIVATE",
    HTTP = "HTTP",
}

M.Namespace = {
    type = "structure",
    id = "Namespace",
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
            type = "integer",
        },
        Properties = M.NamespaceProperties,
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
    id = "GetNamespaceOutput",
    members = {
        Namespace = M.Namespace,
    },
}

M.GetOperationInput = {
    type = "structure",
    id = "GetOperationInput",
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
    id = "Operation",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetOperationOutput = {
    type = "structure",
    id = "GetOperationOutput",
    members = {
        Operation = M.Operation,
    },
}

M.OperationNotFound = {
    type = "structure",
    id = "OperationNotFound",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetServiceInput = {
    type = "structure",
    id = "GetServiceInput",
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
    id = "GetServiceOutput",
    members = {
        Service = M.Service,
    },
}

M.GetServiceAttributesInput = {
    type = "structure",
    id = "GetServiceAttributesInput",
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
    id = "ServiceAttributes",
    members = {
        ServiceArn = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetServiceAttributesOutput = {
    type = "structure",
    id = "GetServiceAttributesOutput",
    members = {
        ServiceAttributes = M.ServiceAttributes,
    },
}

M.HttpNamespaceChange = {
    type = "structure",
    id = "HttpNamespaceChange",
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
    id = "InstanceSummary",
    members = {
        Id = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatedByAccount = {
            type = "string",
        },
    },
}

M.ListInstancesInput = {
    type = "structure",
    id = "ListInstancesInput",
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
            type = "integer",
        },
    },
}

M.ListInstancesOutput = {
    type = "structure",
    id = "ListInstancesOutput",
    members = {
        ResourceOwner = {
            type = "string",
        },
        Instances = {
            type = "list",
            member = M.InstanceSummary,
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
    id = "NamespaceFilter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
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
    id = "ListNamespacesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.NamespaceFilter,
        },
    },
}

M.NamespaceSummary = {
    type = "structure",
    id = "NamespaceSummary",
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
            type = "integer",
        },
        Properties = M.NamespaceProperties,
        CreateDate = {
            type = "timestamp",
        },
    },
}

M.ListNamespacesOutput = {
    type = "structure",
    id = "ListNamespacesOutput",
    members = {
        Namespaces = {
            type = "list",
            member = M.NamespaceSummary,
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
    id = "OperationFilter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
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
    id = "ListOperationsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.OperationFilter,
        },
    },
}

M.OperationSummary = {
    type = "structure",
    id = "OperationSummary",
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
    id = "ListOperationsOutput",
    members = {
        Operations = {
            type = "list",
            member = M.OperationSummary,
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
    id = "ServiceFilter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
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
    id = "ListServicesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.ServiceFilter,
        },
    },
}

M.ServiceSummary = {
    type = "structure",
    id = "ServiceSummary",
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
            type = "integer",
        },
        DnsConfig = M.DnsConfig,
        HealthCheckConfig = M.HealthCheckConfig,
        HealthCheckCustomConfig = M.HealthCheckCustomConfig,
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
    id = "ListServicesOutput",
    members = {
        Services = {
            type = "list",
            member = M.ServiceSummary,
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
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
    },
}

M.SOAChange = {
    type = "structure",
    id = "SOAChange",
    members = {
        TTL = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivateDnsPropertiesMutableChange = {
    type = "structure",
    id = "PrivateDnsPropertiesMutableChange",
    members = {
        SOA = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SOAChange }),
    },
}

M.PrivateDnsNamespacePropertiesChange = {
    type = "structure",
    id = "PrivateDnsNamespacePropertiesChange",
    members = {
        DnsProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivateDnsPropertiesMutableChange }),
    },
}

M.PrivateDnsNamespaceChange = {
    type = "structure",
    id = "PrivateDnsNamespaceChange",
    members = {
        Description = {
            type = "string",
        },
        Properties = M.PrivateDnsNamespacePropertiesChange,
    },
}

M.PublicDnsPropertiesMutableChange = {
    type = "structure",
    id = "PublicDnsPropertiesMutableChange",
    members = {
        SOA = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SOAChange }),
    },
}

M.PublicDnsNamespacePropertiesChange = {
    type = "structure",
    id = "PublicDnsNamespacePropertiesChange",
    members = {
        DnsProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PublicDnsPropertiesMutableChange }),
    },
}

M.PublicDnsNamespaceChange = {
    type = "structure",
    id = "PublicDnsNamespaceChange",
    members = {
        Description = {
            type = "string",
        },
        Properties = M.PublicDnsNamespacePropertiesChange,
    },
}

M.RegisterInstanceInput = {
    type = "structure",
    id = "RegisterInstanceInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterInstanceOutput = {
    type = "structure",
    id = "RegisterInstanceOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
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
        ResourceARN = {
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

M.UpdateHttpNamespaceInput = {
    type = "structure",
    id = "UpdateHttpNamespaceInput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdaterRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HttpNamespaceChange }),
    },
}

M.UpdateHttpNamespaceOutput = {
    type = "structure",
    id = "UpdateHttpNamespaceOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.UpdateInstanceCustomHealthStatusInput = {
    type = "structure",
    id = "UpdateInstanceCustomHealthStatusInput",
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
    id = "UpdateInstanceCustomHealthStatusOutput",
}

M.UpdatePrivateDnsNamespaceInput = {
    type = "structure",
    id = "UpdatePrivateDnsNamespaceInput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdaterRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivateDnsNamespaceChange }),
    },
}

M.UpdatePrivateDnsNamespaceOutput = {
    type = "structure",
    id = "UpdatePrivateDnsNamespaceOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.UpdatePublicDnsNamespaceInput = {
    type = "structure",
    id = "UpdatePublicDnsNamespaceInput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdaterRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PublicDnsNamespaceChange }),
    },
}

M.UpdatePublicDnsNamespaceOutput = {
    type = "structure",
    id = "UpdatePublicDnsNamespaceOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.ServiceChange = {
    type = "structure",
    id = "ServiceChange",
    members = {
        Description = {
            type = "string",
        },
        DnsConfig = M.DnsConfigChange,
        HealthCheckConfig = M.HealthCheckConfig,
    },
}

M.UpdateServiceInput = {
    type = "structure",
    id = "UpdateServiceInput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceChange }),
    },
}

M.UpdateServiceOutput = {
    type = "structure",
    id = "UpdateServiceOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.ServiceAttributesLimitExceededException = {
    type = "structure",
    id = "ServiceAttributesLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateServiceAttributesInput = {
    type = "structure",
    id = "UpdateServiceAttributesInput",
    members = {
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceAttributesOutput = {
    type = "structure",
    id = "UpdateServiceAttributesOutput",
}

return M
