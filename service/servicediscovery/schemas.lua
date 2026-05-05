local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.servicediscovery"

local M = {}

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateHttpNamespaceInput = schema.new({
    id = id.from(_N, "CreateHttpNamespaceRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateHttpNamespaceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreateHttpNamespaceInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateHttpNamespaceInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateHttpNamespaceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateHttpNamespaceOutput = schema.new({
    id = id.from(_N, "CreateHttpNamespaceResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "CreateHttpNamespaceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.DuplicateRequest = schema.new({
    id = id.from(_N, "DuplicateRequest"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DuplicateRequest", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        DuplicateOperationId = schema.new({
            id = id.from(_N, "DuplicateRequest", "DuplicateOperationId"),
            type = "string",
            name = "DuplicateOperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInput = schema.new({
    id = id.from(_N, "InvalidInput"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidInput", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NamespaceAlreadyExists = schema.new({
    id = id.from(_N, "NamespaceAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NamespaceAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "NamespaceAlreadyExists", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        NamespaceId = schema.new({
            id = id.from(_N, "NamespaceAlreadyExists", "NamespaceId"),
            type = "string",
            name = "NamespaceId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceLimitExceeded = schema.new({
    id = id.from(_N, "ResourceLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyTagsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceName = schema.new({
            id = id.from(_N, "TooManyTagsException", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.SOA = schema.new({
    id = id.from(_N, "SOA"),
    type = "structure",
    members = {
        TTL = schema.new({
            id = id.from(_N, "SOA", "TTL"),
            type = "long",
            name = "TTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PrivateDnsPropertiesMutable = schema.new({
    id = id.from(_N, "PrivateDnsPropertiesMutable"),
    type = "structure",
    members = {
        SOA = schema.new({
            id = id.from(_N, "PrivateDnsPropertiesMutable", "SOA"),
            type = "structure",
            name = "SOA",
            target_id = id.from(_N, "SOA"),
            target = M.SOA,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PrivateDnsNamespaceProperties = schema.new({
    id = id.from(_N, "PrivateDnsNamespaceProperties"),
    type = "structure",
    members = {
        DnsProperties = schema.new({
            id = id.from(_N, "PrivateDnsNamespaceProperties", "DnsProperties"),
            type = "structure",
            name = "DnsProperties",
            target_id = id.from(_N, "PrivateDnsPropertiesMutable"),
            target = M.PrivateDnsPropertiesMutable,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePrivateDnsNamespaceInput = schema.new({
    id = id.from(_N, "CreatePrivateDnsNamespaceRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreatePrivateDnsNamespaceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreatePrivateDnsNamespaceInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreatePrivateDnsNamespaceInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Vpc = schema.new({
            id = id.from(_N, "CreatePrivateDnsNamespaceInput", "Vpc"),
            type = "string",
            name = "Vpc",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePrivateDnsNamespaceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Properties = schema.new({
            id = id.from(_N, "CreatePrivateDnsNamespaceInput", "Properties"),
            type = "structure",
            name = "Properties",
            target_id = id.from(_N, "PrivateDnsNamespaceProperties"),
            target = M.PrivateDnsNamespaceProperties,
        }),
    },
})

M.CreatePrivateDnsNamespaceOutput = schema.new({
    id = id.from(_N, "CreatePrivateDnsNamespaceResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "CreatePrivateDnsNamespaceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.PublicDnsPropertiesMutable = schema.new({
    id = id.from(_N, "PublicDnsPropertiesMutable"),
    type = "structure",
    members = {
        SOA = schema.new({
            id = id.from(_N, "PublicDnsPropertiesMutable", "SOA"),
            type = "structure",
            name = "SOA",
            target_id = id.from(_N, "SOA"),
            target = M.SOA,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PublicDnsNamespaceProperties = schema.new({
    id = id.from(_N, "PublicDnsNamespaceProperties"),
    type = "structure",
    members = {
        DnsProperties = schema.new({
            id = id.from(_N, "PublicDnsNamespaceProperties", "DnsProperties"),
            type = "structure",
            name = "DnsProperties",
            target_id = id.from(_N, "PublicDnsPropertiesMutable"),
            target = M.PublicDnsPropertiesMutable,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePublicDnsNamespaceInput = schema.new({
    id = id.from(_N, "CreatePublicDnsNamespaceRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreatePublicDnsNamespaceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreatePublicDnsNamespaceInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreatePublicDnsNamespaceInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePublicDnsNamespaceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Properties = schema.new({
            id = id.from(_N, "CreatePublicDnsNamespaceInput", "Properties"),
            type = "structure",
            name = "Properties",
            target_id = id.from(_N, "PublicDnsNamespaceProperties"),
            target = M.PublicDnsNamespaceProperties,
        }),
    },
})

M.CreatePublicDnsNamespaceOutput = schema.new({
    id = id.from(_N, "CreatePublicDnsNamespaceResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "CreatePublicDnsNamespaceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.DnsRecord = schema.new({
    id = id.from(_N, "DnsRecord"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "DnsRecord", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TTL = schema.new({
            id = id.from(_N, "DnsRecord", "TTL"),
            type = "long",
            name = "TTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DnsConfig = schema.new({
    id = id.from(_N, "DnsConfig"),
    type = "structure",
    members = {
        NamespaceId = schema.new({
            id = id.from(_N, "DnsConfig", "NamespaceId"),
            type = "string",
            name = "NamespaceId",
            target_id = prelude.String.id,
        }),
        RoutingPolicy = schema.new({
            id = id.from(_N, "DnsConfig", "RoutingPolicy"),
            type = "string",
            name = "RoutingPolicy",
            target_id = prelude.String.id,
        }),
        DnsRecords = schema.new({
            id = id.from(_N, "DnsConfig", "DnsRecords"),
            type = "list",
            name = "DnsRecords",
            target_id = prelude.Document.id,
            list_member = M.DnsRecord,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HealthCheckConfig = schema.new({
    id = id.from(_N, "HealthCheckConfig"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "HealthCheckConfig", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourcePath = schema.new({
            id = id.from(_N, "HealthCheckConfig", "ResourcePath"),
            type = "string",
            name = "ResourcePath",
            target_id = prelude.String.id,
        }),
        FailureThreshold = schema.new({
            id = id.from(_N, "HealthCheckConfig", "FailureThreshold"),
            type = "integer",
            name = "FailureThreshold",
            target_id = prelude.Integer.id,
        }),
    },
})

M.HealthCheckCustomConfig = schema.new({
    id = id.from(_N, "HealthCheckCustomConfig"),
    type = "structure",
    members = {
        FailureThreshold = schema.new({
            id = id.from(_N, "HealthCheckCustomConfig", "FailureThreshold"),
            type = "integer",
            name = "FailureThreshold",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateServiceInput = schema.new({
    id = id.from(_N, "CreateServiceRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateServiceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NamespaceId = schema.new({
            id = id.from(_N, "CreateServiceInput", "NamespaceId"),
            type = "string",
            name = "NamespaceId",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreateServiceInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateServiceInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DnsConfig = schema.new({
            id = id.from(_N, "CreateServiceInput", "DnsConfig"),
            type = "structure",
            name = "DnsConfig",
            target_id = id.from(_N, "DnsConfig"),
            target = M.DnsConfig,
        }),
        HealthCheckConfig = schema.new({
            id = id.from(_N, "CreateServiceInput", "HealthCheckConfig"),
            type = "structure",
            name = "HealthCheckConfig",
            target_id = id.from(_N, "HealthCheckConfig"),
            target = M.HealthCheckConfig,
        }),
        HealthCheckCustomConfig = schema.new({
            id = id.from(_N, "CreateServiceInput", "HealthCheckCustomConfig"),
            type = "structure",
            name = "HealthCheckCustomConfig",
            target_id = id.from(_N, "HealthCheckCustomConfig"),
            target = M.HealthCheckCustomConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateServiceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Type = schema.new({
            id = id.from(_N, "CreateServiceInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.Service = schema.new({
    id = id.from(_N, "Service"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Service", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "Service", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ResourceOwner = schema.new({
            id = id.from(_N, "Service", "ResourceOwner"),
            type = "string",
            name = "ResourceOwner",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Service", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        NamespaceId = schema.new({
            id = id.from(_N, "Service", "NamespaceId"),
            type = "string",
            name = "NamespaceId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Service", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        InstanceCount = schema.new({
            id = id.from(_N, "Service", "InstanceCount"),
            type = "integer",
            name = "InstanceCount",
            target_id = prelude.Integer.id,
        }),
        DnsConfig = schema.new({
            id = id.from(_N, "Service", "DnsConfig"),
            type = "structure",
            name = "DnsConfig",
            target_id = id.from(_N, "DnsConfig"),
            target = M.DnsConfig,
        }),
        Type = schema.new({
            id = id.from(_N, "Service", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        HealthCheckConfig = schema.new({
            id = id.from(_N, "Service", "HealthCheckConfig"),
            type = "structure",
            name = "HealthCheckConfig",
            target_id = id.from(_N, "HealthCheckConfig"),
            target = M.HealthCheckConfig,
        }),
        HealthCheckCustomConfig = schema.new({
            id = id.from(_N, "Service", "HealthCheckCustomConfig"),
            type = "structure",
            name = "HealthCheckCustomConfig",
            target_id = id.from(_N, "HealthCheckCustomConfig"),
            target = M.HealthCheckCustomConfig,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Service", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "Service", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        CreatedByAccount = schema.new({
            id = id.from(_N, "Service", "CreatedByAccount"),
            type = "string",
            name = "CreatedByAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateServiceOutput = schema.new({
    id = id.from(_N, "CreateServiceResponse"),
    type = "structure",
    members = {
        Service = schema.new({
            id = id.from(_N, "CreateServiceOutput", "Service"),
            type = "structure",
            name = "Service",
            target_id = id.from(_N, "Service"),
            target = M.Service,
        }),
    },
})

M.NamespaceNotFound = schema.new({
    id = id.from(_N, "NamespaceNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NamespaceNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceAlreadyExists = schema.new({
    id = id.from(_N, "ServiceAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "ServiceAlreadyExists", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        ServiceId = schema.new({
            id = id.from(_N, "ServiceAlreadyExists", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
        }),
        ServiceArn = schema.new({
            id = id.from(_N, "ServiceAlreadyExists", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomHealthNotFound = schema.new({
    id = id.from(_N, "CustomHealthNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CustomHealthNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteNamespaceInput = schema.new({
    id = id.from(_N, "DeleteNamespaceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteNamespaceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteNamespaceOutput = schema.new({
    id = id.from(_N, "DeleteNamespaceResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "DeleteNamespaceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceInUse = schema.new({
    id = id.from(_N, "ResourceInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteServiceInput = schema.new({
    id = id.from(_N, "DeleteServiceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteServiceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteServiceOutput = schema.new({
    id = id.from(_N, "DeleteServiceResponse"),
    type = "structure",
})

M.ServiceNotFound = schema.new({
    id = id.from(_N, "ServiceNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteServiceAttributesInput = schema.new({
    id = id.from(_N, "DeleteServiceAttributesRequest"),
    type = "structure",
    members = {
        ServiceId = schema.new({
            id = id.from(_N, "DeleteServiceAttributesInput", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Attributes = schema.new({
            id = id.from(_N, "DeleteServiceAttributesInput", "Attributes"),
            type = "list",
            name = "Attributes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteServiceAttributesOutput = schema.new({
    id = id.from(_N, "DeleteServiceAttributesResponse"),
    type = "structure",
})

M.DeregisterInstanceInput = schema.new({
    id = id.from(_N, "DeregisterInstanceRequest"),
    type = "structure",
    members = {
        ServiceId = schema.new({
            id = id.from(_N, "DeregisterInstanceInput", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceId = schema.new({
            id = id.from(_N, "DeregisterInstanceInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterInstanceOutput = schema.new({
    id = id.from(_N, "DeregisterInstanceResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "DeregisterInstanceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceNotFound = schema.new({
    id = id.from(_N, "InstanceNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InstanceNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DiscoverInstancesInput = schema.new({
    id = id.from(_N, "DiscoverInstancesRequest"),
    type = "structure",
    members = {
        NamespaceName = schema.new({
            id = id.from(_N, "DiscoverInstancesInput", "NamespaceName"),
            type = "string",
            name = "NamespaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceName = schema.new({
            id = id.from(_N, "DiscoverInstancesInput", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DiscoverInstancesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        QueryParameters = schema.new({
            id = id.from(_N, "DiscoverInstancesInput", "QueryParameters"),
            type = "map",
            name = "QueryParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        OptionalParameters = schema.new({
            id = id.from(_N, "DiscoverInstancesInput", "OptionalParameters"),
            type = "map",
            name = "OptionalParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        HealthStatus = schema.new({
            id = id.from(_N, "DiscoverInstancesInput", "HealthStatus"),
            type = "string",
            name = "HealthStatus",
            target_id = prelude.String.id,
        }),
        OwnerAccount = schema.new({
            id = id.from(_N, "DiscoverInstancesInput", "OwnerAccount"),
            type = "string",
            name = "OwnerAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.HttpInstanceSummary = schema.new({
    id = id.from(_N, "HttpInstanceSummary"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "HttpInstanceSummary", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        NamespaceName = schema.new({
            id = id.from(_N, "HttpInstanceSummary", "NamespaceName"),
            type = "string",
            name = "NamespaceName",
            target_id = prelude.String.id,
        }),
        ServiceName = schema.new({
            id = id.from(_N, "HttpInstanceSummary", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        HealthStatus = schema.new({
            id = id.from(_N, "HttpInstanceSummary", "HealthStatus"),
            type = "string",
            name = "HealthStatus",
            target_id = prelude.String.id,
        }),
        Attributes = schema.new({
            id = id.from(_N, "HttpInstanceSummary", "Attributes"),
            type = "map",
            name = "Attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DiscoverInstancesOutput = schema.new({
    id = id.from(_N, "DiscoverInstancesResponse"),
    type = "structure",
    members = {
        Instances = schema.new({
            id = id.from(_N, "DiscoverInstancesOutput", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = M.HttpInstanceSummary,
        }),
        InstancesRevision = schema.new({
            id = id.from(_N, "DiscoverInstancesOutput", "InstancesRevision"),
            type = "long",
            name = "InstancesRevision",
            target_id = prelude.Long.id,
        }),
    },
})

M.RequestLimitExceeded = schema.new({
    id = id.from(_N, "RequestLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RequestLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DiscoverInstancesRevisionInput = schema.new({
    id = id.from(_N, "DiscoverInstancesRevisionRequest"),
    type = "structure",
    members = {
        NamespaceName = schema.new({
            id = id.from(_N, "DiscoverInstancesRevisionInput", "NamespaceName"),
            type = "string",
            name = "NamespaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceName = schema.new({
            id = id.from(_N, "DiscoverInstancesRevisionInput", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OwnerAccount = schema.new({
            id = id.from(_N, "DiscoverInstancesRevisionInput", "OwnerAccount"),
            type = "string",
            name = "OwnerAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.DiscoverInstancesRevisionOutput = schema.new({
    id = id.from(_N, "DiscoverInstancesRevisionResponse"),
    type = "structure",
    members = {
        InstancesRevision = schema.new({
            id = id.from(_N, "DiscoverInstancesRevisionOutput", "InstancesRevision"),
            type = "long",
            name = "InstancesRevision",
            target_id = prelude.Long.id,
        }),
    },
})

M.DnsConfigChange = schema.new({
    id = id.from(_N, "DnsConfigChange"),
    type = "structure",
    members = {
        DnsRecords = schema.new({
            id = id.from(_N, "DnsConfigChange", "DnsRecords"),
            type = "list",
            name = "DnsRecords",
            target_id = prelude.Document.id,
            list_member = M.DnsRecord,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DnsProperties = schema.new({
    id = id.from(_N, "DnsProperties"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "DnsProperties", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
        }),
        SOA = schema.new({
            id = id.from(_N, "DnsProperties", "SOA"),
            type = "structure",
            name = "SOA",
            target_id = id.from(_N, "SOA"),
            target = M.SOA,
        }),
    },
})

M.GetInstanceInput = schema.new({
    id = id.from(_N, "GetInstanceRequest"),
    type = "structure",
    members = {
        ServiceId = schema.new({
            id = id.from(_N, "GetInstanceInput", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceId = schema.new({
            id = id.from(_N, "GetInstanceInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Instance = schema.new({
    id = id.from(_N, "Instance"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Instance", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "Instance", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        Attributes = schema.new({
            id = id.from(_N, "Instance", "Attributes"),
            type = "map",
            name = "Attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        CreatedByAccount = schema.new({
            id = id.from(_N, "Instance", "CreatedByAccount"),
            type = "string",
            name = "CreatedByAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInstanceOutput = schema.new({
    id = id.from(_N, "GetInstanceResponse"),
    type = "structure",
    members = {
        ResourceOwner = schema.new({
            id = id.from(_N, "GetInstanceOutput", "ResourceOwner"),
            type = "string",
            name = "ResourceOwner",
            target_id = prelude.String.id,
        }),
        Instance = schema.new({
            id = id.from(_N, "GetInstanceOutput", "Instance"),
            type = "structure",
            name = "Instance",
            target_id = id.from(_N, "Instance"),
            target = M.Instance,
        }),
    },
})

M.GetInstancesHealthStatusInput = schema.new({
    id = id.from(_N, "GetInstancesHealthStatusRequest"),
    type = "structure",
    members = {
        ServiceId = schema.new({
            id = id.from(_N, "GetInstancesHealthStatusInput", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Instances = schema.new({
            id = id.from(_N, "GetInstancesHealthStatusInput", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "InstanceId" } } }),
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetInstancesHealthStatusInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetInstancesHealthStatusInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInstancesHealthStatusOutput = schema.new({
    id = id.from(_N, "GetInstancesHealthStatusResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "GetInstancesHealthStatusOutput", "Status"),
            type = "map",
            name = "Status",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetInstancesHealthStatusOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetNamespaceInput = schema.new({
    id = id.from(_N, "GetNamespaceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetNamespaceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HttpProperties = schema.new({
    id = id.from(_N, "HttpProperties"),
    type = "structure",
    members = {
        HttpName = schema.new({
            id = id.from(_N, "HttpProperties", "HttpName"),
            type = "string",
            name = "HttpName",
            target_id = prelude.String.id,
        }),
    },
})

M.NamespaceProperties = schema.new({
    id = id.from(_N, "NamespaceProperties"),
    type = "structure",
    members = {
        DnsProperties = schema.new({
            id = id.from(_N, "NamespaceProperties", "DnsProperties"),
            type = "structure",
            name = "DnsProperties",
            target_id = id.from(_N, "DnsProperties"),
            target = M.DnsProperties,
        }),
        HttpProperties = schema.new({
            id = id.from(_N, "NamespaceProperties", "HttpProperties"),
            type = "structure",
            name = "HttpProperties",
            target_id = id.from(_N, "HttpProperties"),
            target = M.HttpProperties,
        }),
    },
})

M.Namespace = schema.new({
    id = id.from(_N, "Namespace"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Namespace", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "Namespace", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ResourceOwner = schema.new({
            id = id.from(_N, "Namespace", "ResourceOwner"),
            type = "string",
            name = "ResourceOwner",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Namespace", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Namespace", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Namespace", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ServiceCount = schema.new({
            id = id.from(_N, "Namespace", "ServiceCount"),
            type = "integer",
            name = "ServiceCount",
            target_id = prelude.Integer.id,
        }),
        Properties = schema.new({
            id = id.from(_N, "Namespace", "Properties"),
            type = "structure",
            name = "Properties",
            target_id = id.from(_N, "NamespaceProperties"),
            target = M.NamespaceProperties,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Namespace", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "Namespace", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetNamespaceOutput = schema.new({
    id = id.from(_N, "GetNamespaceResponse"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "GetNamespaceOutput", "Namespace"),
            type = "structure",
            name = "Namespace",
            target_id = id.from(_N, "Namespace"),
            target = M.Namespace,
        }),
    },
})

M.GetOperationInput = schema.new({
    id = id.from(_N, "GetOperationRequest"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "GetOperationInput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OwnerAccount = schema.new({
            id = id.from(_N, "GetOperationInput", "OwnerAccount"),
            type = "string",
            name = "OwnerAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.Operation = schema.new({
    id = id.from(_N, "Operation"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Operation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        OwnerAccount = schema.new({
            id = id.from(_N, "Operation", "OwnerAccount"),
            type = "string",
            name = "OwnerAccount",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Operation", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Operation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "Operation", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "Operation", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "Operation", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        UpdateDate = schema.new({
            id = id.from(_N, "Operation", "UpdateDate"),
            type = "timestamp",
            name = "UpdateDate",
            target_id = prelude.Timestamp.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "Operation", "Targets"),
            type = "map",
            name = "Targets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetOperationOutput = schema.new({
    id = id.from(_N, "GetOperationResponse"),
    type = "structure",
    members = {
        Operation = schema.new({
            id = id.from(_N, "GetOperationOutput", "Operation"),
            type = "structure",
            name = "Operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.OperationNotFound = schema.new({
    id = id.from(_N, "OperationNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OperationNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetServiceInput = schema.new({
    id = id.from(_N, "GetServiceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetServiceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetServiceOutput = schema.new({
    id = id.from(_N, "GetServiceResponse"),
    type = "structure",
    members = {
        Service = schema.new({
            id = id.from(_N, "GetServiceOutput", "Service"),
            type = "structure",
            name = "Service",
            target_id = id.from(_N, "Service"),
            target = M.Service,
        }),
    },
})

M.GetServiceAttributesInput = schema.new({
    id = id.from(_N, "GetServiceAttributesRequest"),
    type = "structure",
    members = {
        ServiceId = schema.new({
            id = id.from(_N, "GetServiceAttributesInput", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceAttributes = schema.new({
    id = id.from(_N, "ServiceAttributes"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "ServiceAttributes", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
        }),
        ResourceOwner = schema.new({
            id = id.from(_N, "ServiceAttributes", "ResourceOwner"),
            type = "string",
            name = "ResourceOwner",
            target_id = prelude.String.id,
        }),
        Attributes = schema.new({
            id = id.from(_N, "ServiceAttributes", "Attributes"),
            type = "map",
            name = "Attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetServiceAttributesOutput = schema.new({
    id = id.from(_N, "GetServiceAttributesResponse"),
    type = "structure",
    members = {
        ServiceAttributes = schema.new({
            id = id.from(_N, "GetServiceAttributesOutput", "ServiceAttributes"),
            type = "structure",
            name = "ServiceAttributes",
            target_id = id.from(_N, "ServiceAttributes"),
            target = M.ServiceAttributes,
        }),
    },
})

M.HttpNamespaceChange = schema.new({
    id = id.from(_N, "HttpNamespaceChange"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "HttpNamespaceChange", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InstanceSummary = schema.new({
    id = id.from(_N, "InstanceSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "InstanceSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Attributes = schema.new({
            id = id.from(_N, "InstanceSummary", "Attributes"),
            type = "map",
            name = "Attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        CreatedByAccount = schema.new({
            id = id.from(_N, "InstanceSummary", "CreatedByAccount"),
            type = "string",
            name = "CreatedByAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInstancesInput = schema.new({
    id = id.from(_N, "ListInstancesRequest"),
    type = "structure",
    members = {
        ServiceId = schema.new({
            id = id.from(_N, "ListInstancesInput", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListInstancesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListInstancesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListInstancesOutput = schema.new({
    id = id.from(_N, "ListInstancesResponse"),
    type = "structure",
    members = {
        ResourceOwner = schema.new({
            id = id.from(_N, "ListInstancesOutput", "ResourceOwner"),
            type = "string",
            name = "ResourceOwner",
            target_id = prelude.String.id,
        }),
        Instances = schema.new({
            id = id.from(_N, "ListInstancesOutput", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InstanceSummary, traits = { [traits.XML_NAME] = { name = "InstanceSummary" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListInstancesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NamespaceFilter = schema.new({
    id = id.from(_N, "NamespaceFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "NamespaceFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "NamespaceFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "item" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Condition = schema.new({
            id = id.from(_N, "NamespaceFilter", "Condition"),
            type = "string",
            name = "Condition",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNamespacesInput = schema.new({
    id = id.from(_N, "ListNamespacesRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListNamespacesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListNamespacesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListNamespacesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NamespaceFilter, traits = { [traits.XML_NAME] = { name = "item" } } }),
        }),
    },
})

M.NamespaceSummary = schema.new({
    id = id.from(_N, "NamespaceSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "NamespaceSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "NamespaceSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ResourceOwner = schema.new({
            id = id.from(_N, "NamespaceSummary", "ResourceOwner"),
            type = "string",
            name = "ResourceOwner",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "NamespaceSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "NamespaceSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "NamespaceSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ServiceCount = schema.new({
            id = id.from(_N, "NamespaceSummary", "ServiceCount"),
            type = "integer",
            name = "ServiceCount",
            target_id = prelude.Integer.id,
        }),
        Properties = schema.new({
            id = id.from(_N, "NamespaceSummary", "Properties"),
            type = "structure",
            name = "Properties",
            target_id = id.from(_N, "NamespaceProperties"),
            target = M.NamespaceProperties,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "NamespaceSummary", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListNamespacesOutput = schema.new({
    id = id.from(_N, "ListNamespacesResponse"),
    type = "structure",
    members = {
        Namespaces = schema.new({
            id = id.from(_N, "ListNamespacesOutput", "Namespaces"),
            type = "list",
            name = "Namespaces",
            target_id = prelude.Document.id,
            list_member = M.NamespaceSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNamespacesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OperationFilter = schema.new({
    id = id.from(_N, "OperationFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "OperationFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "OperationFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "item" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Condition = schema.new({
            id = id.from(_N, "OperationFilter", "Condition"),
            type = "string",
            name = "Condition",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOperationsInput = schema.new({
    id = id.from(_N, "ListOperationsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListOperationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOperationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListOperationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OperationFilter, traits = { [traits.XML_NAME] = { name = "item" } } }),
        }),
    },
})

M.OperationSummary = schema.new({
    id = id.from(_N, "OperationSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "OperationSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "OperationSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOperationsOutput = schema.new({
    id = id.from(_N, "ListOperationsResponse"),
    type = "structure",
    members = {
        Operations = schema.new({
            id = id.from(_N, "ListOperationsOutput", "Operations"),
            type = "list",
            name = "Operations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OperationSummary, traits = { [traits.XML_NAME] = { name = "OperationSummary" } } }),
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOperationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceFilter = schema.new({
    id = id.from(_N, "ServiceFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ServiceFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "ServiceFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "item" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Condition = schema.new({
            id = id.from(_N, "ServiceFilter", "Condition"),
            type = "string",
            name = "Condition",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServicesInput = schema.new({
    id = id.from(_N, "ListServicesRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListServicesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListServicesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListServicesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ServiceFilter, traits = { [traits.XML_NAME] = { name = "item" } } }),
        }),
    },
})

M.ServiceSummary = schema.new({
    id = id.from(_N, "ServiceSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ServiceSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ServiceSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ResourceOwner = schema.new({
            id = id.from(_N, "ServiceSummary", "ResourceOwner"),
            type = "string",
            name = "ResourceOwner",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ServiceSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ServiceSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ServiceSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        InstanceCount = schema.new({
            id = id.from(_N, "ServiceSummary", "InstanceCount"),
            type = "integer",
            name = "InstanceCount",
            target_id = prelude.Integer.id,
        }),
        DnsConfig = schema.new({
            id = id.from(_N, "ServiceSummary", "DnsConfig"),
            type = "structure",
            name = "DnsConfig",
            target_id = id.from(_N, "DnsConfig"),
            target = M.DnsConfig,
        }),
        HealthCheckConfig = schema.new({
            id = id.from(_N, "ServiceSummary", "HealthCheckConfig"),
            type = "structure",
            name = "HealthCheckConfig",
            target_id = id.from(_N, "HealthCheckConfig"),
            target = M.HealthCheckConfig,
        }),
        HealthCheckCustomConfig = schema.new({
            id = id.from(_N, "ServiceSummary", "HealthCheckCustomConfig"),
            type = "structure",
            name = "HealthCheckCustomConfig",
            target_id = id.from(_N, "HealthCheckCustomConfig"),
            target = M.HealthCheckCustomConfig,
        }),
        CreateDate = schema.new({
            id = id.from(_N, "ServiceSummary", "CreateDate"),
            type = "timestamp",
            name = "CreateDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatedByAccount = schema.new({
            id = id.from(_N, "ServiceSummary", "CreatedByAccount"),
            type = "string",
            name = "CreatedByAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServicesOutput = schema.new({
    id = id.from(_N, "ListServicesResponse"),
    type = "structure",
    members = {
        Services = schema.new({
            id = id.from(_N, "ListServicesOutput", "Services"),
            type = "list",
            name = "Services",
            target_id = prelude.Document.id,
            list_member = M.ServiceSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServicesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.SOAChange = schema.new({
    id = id.from(_N, "SOAChange"),
    type = "structure",
    members = {
        TTL = schema.new({
            id = id.from(_N, "SOAChange", "TTL"),
            type = "long",
            name = "TTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PrivateDnsPropertiesMutableChange = schema.new({
    id = id.from(_N, "PrivateDnsPropertiesMutableChange"),
    type = "structure",
    members = {
        SOA = schema.new({
            id = id.from(_N, "PrivateDnsPropertiesMutableChange", "SOA"),
            type = "structure",
            name = "SOA",
            target_id = id.from(_N, "SOAChange"),
            target = M.SOAChange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PrivateDnsNamespacePropertiesChange = schema.new({
    id = id.from(_N, "PrivateDnsNamespacePropertiesChange"),
    type = "structure",
    members = {
        DnsProperties = schema.new({
            id = id.from(_N, "PrivateDnsNamespacePropertiesChange", "DnsProperties"),
            type = "structure",
            name = "DnsProperties",
            target_id = id.from(_N, "PrivateDnsPropertiesMutableChange"),
            target = M.PrivateDnsPropertiesMutableChange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PrivateDnsNamespaceChange = schema.new({
    id = id.from(_N, "PrivateDnsNamespaceChange"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "PrivateDnsNamespaceChange", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Properties = schema.new({
            id = id.from(_N, "PrivateDnsNamespaceChange", "Properties"),
            type = "structure",
            name = "Properties",
            target_id = id.from(_N, "PrivateDnsNamespacePropertiesChange"),
            target = M.PrivateDnsNamespacePropertiesChange,
        }),
    },
})

M.PublicDnsPropertiesMutableChange = schema.new({
    id = id.from(_N, "PublicDnsPropertiesMutableChange"),
    type = "structure",
    members = {
        SOA = schema.new({
            id = id.from(_N, "PublicDnsPropertiesMutableChange", "SOA"),
            type = "structure",
            name = "SOA",
            target_id = id.from(_N, "SOAChange"),
            target = M.SOAChange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PublicDnsNamespacePropertiesChange = schema.new({
    id = id.from(_N, "PublicDnsNamespacePropertiesChange"),
    type = "structure",
    members = {
        DnsProperties = schema.new({
            id = id.from(_N, "PublicDnsNamespacePropertiesChange", "DnsProperties"),
            type = "structure",
            name = "DnsProperties",
            target_id = id.from(_N, "PublicDnsPropertiesMutableChange"),
            target = M.PublicDnsPropertiesMutableChange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PublicDnsNamespaceChange = schema.new({
    id = id.from(_N, "PublicDnsNamespaceChange"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "PublicDnsNamespaceChange", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Properties = schema.new({
            id = id.from(_N, "PublicDnsNamespaceChange", "Properties"),
            type = "structure",
            name = "Properties",
            target_id = id.from(_N, "PublicDnsNamespacePropertiesChange"),
            target = M.PublicDnsNamespacePropertiesChange,
        }),
    },
})

M.RegisterInstanceInput = schema.new({
    id = id.from(_N, "RegisterInstanceRequest"),
    type = "structure",
    members = {
        ServiceId = schema.new({
            id = id.from(_N, "RegisterInstanceInput", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceId = schema.new({
            id = id.from(_N, "RegisterInstanceInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "RegisterInstanceInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Attributes = schema.new({
            id = id.from(_N, "RegisterInstanceInput", "Attributes"),
            type = "map",
            name = "Attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterInstanceOutput = schema.new({
    id = id.from(_N, "RegisterInstanceResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "RegisterInstanceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateHttpNamespaceInput = schema.new({
    id = id.from(_N, "UpdateHttpNamespaceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateHttpNamespaceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdaterRequestId = schema.new({
            id = id.from(_N, "UpdateHttpNamespaceInput", "UpdaterRequestId"),
            type = "string",
            name = "UpdaterRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Namespace = schema.new({
            id = id.from(_N, "UpdateHttpNamespaceInput", "Namespace"),
            type = "structure",
            name = "Namespace",
            target_id = id.from(_N, "HttpNamespaceChange"),
            target = M.HttpNamespaceChange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateHttpNamespaceOutput = schema.new({
    id = id.from(_N, "UpdateHttpNamespaceResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "UpdateHttpNamespaceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateInstanceCustomHealthStatusInput = schema.new({
    id = id.from(_N, "UpdateInstanceCustomHealthStatusRequest"),
    type = "structure",
    members = {
        ServiceId = schema.new({
            id = id.from(_N, "UpdateInstanceCustomHealthStatusInput", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceId = schema.new({
            id = id.from(_N, "UpdateInstanceCustomHealthStatusInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateInstanceCustomHealthStatusInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateInstanceCustomHealthStatusOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UpdatePrivateDnsNamespaceInput = schema.new({
    id = id.from(_N, "UpdatePrivateDnsNamespaceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdatePrivateDnsNamespaceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdaterRequestId = schema.new({
            id = id.from(_N, "UpdatePrivateDnsNamespaceInput", "UpdaterRequestId"),
            type = "string",
            name = "UpdaterRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Namespace = schema.new({
            id = id.from(_N, "UpdatePrivateDnsNamespaceInput", "Namespace"),
            type = "structure",
            name = "Namespace",
            target_id = id.from(_N, "PrivateDnsNamespaceChange"),
            target = M.PrivateDnsNamespaceChange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePrivateDnsNamespaceOutput = schema.new({
    id = id.from(_N, "UpdatePrivateDnsNamespaceResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "UpdatePrivateDnsNamespaceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePublicDnsNamespaceInput = schema.new({
    id = id.from(_N, "UpdatePublicDnsNamespaceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdatePublicDnsNamespaceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdaterRequestId = schema.new({
            id = id.from(_N, "UpdatePublicDnsNamespaceInput", "UpdaterRequestId"),
            type = "string",
            name = "UpdaterRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Namespace = schema.new({
            id = id.from(_N, "UpdatePublicDnsNamespaceInput", "Namespace"),
            type = "structure",
            name = "Namespace",
            target_id = id.from(_N, "PublicDnsNamespaceChange"),
            target = M.PublicDnsNamespaceChange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePublicDnsNamespaceOutput = schema.new({
    id = id.from(_N, "UpdatePublicDnsNamespaceResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "UpdatePublicDnsNamespaceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceChange = schema.new({
    id = id.from(_N, "ServiceChange"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "ServiceChange", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DnsConfig = schema.new({
            id = id.from(_N, "ServiceChange", "DnsConfig"),
            type = "structure",
            name = "DnsConfig",
            target_id = id.from(_N, "DnsConfigChange"),
            target = M.DnsConfigChange,
        }),
        HealthCheckConfig = schema.new({
            id = id.from(_N, "ServiceChange", "HealthCheckConfig"),
            type = "structure",
            name = "HealthCheckConfig",
            target_id = id.from(_N, "HealthCheckConfig"),
            target = M.HealthCheckConfig,
        }),
    },
})

M.UpdateServiceInput = schema.new({
    id = id.from(_N, "UpdateServiceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateServiceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Service = schema.new({
            id = id.from(_N, "UpdateServiceInput", "Service"),
            type = "structure",
            name = "Service",
            target_id = id.from(_N, "ServiceChange"),
            target = M.ServiceChange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateServiceOutput = schema.new({
    id = id.from(_N, "UpdateServiceResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "UpdateServiceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceAttributesLimitExceededException = schema.new({
    id = id.from(_N, "ServiceAttributesLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceAttributesLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateServiceAttributesInput = schema.new({
    id = id.from(_N, "UpdateServiceAttributesRequest"),
    type = "structure",
    members = {
        ServiceId = schema.new({
            id = id.from(_N, "UpdateServiceAttributesInput", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Attributes = schema.new({
            id = id.from(_N, "UpdateServiceAttributesInput", "Attributes"),
            type = "map",
            name = "Attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateServiceAttributesOutput = schema.new({
    id = id.from(_N, "UpdateServiceAttributesResponse"),
    type = "structure",
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
