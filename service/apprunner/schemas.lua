local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.apprunner"

local M = {}

M.AssociateCustomDomainInput = schema.new({
    id = id.from(_N, "AssociateCustomDomainRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "AssociateCustomDomainInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "AssociateCustomDomainInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnableWWWSubdomain = schema.new({
            id = id.from(_N, "AssociateCustomDomainInput", "EnableWWWSubdomain"),
            type = "boolean",
            name = "EnableWWWSubdomain",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CertificateValidationRecord = schema.new({
    id = id.from(_N, "CertificateValidationRecord"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CertificateValidationRecord", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "CertificateValidationRecord", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "CertificateValidationRecord", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CertificateValidationRecord", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomDomain = schema.new({
    id = id.from(_N, "CustomDomain"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "CustomDomain", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnableWWWSubdomain = schema.new({
            id = id.from(_N, "CustomDomain", "EnableWWWSubdomain"),
            type = "boolean",
            name = "EnableWWWSubdomain",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateValidationRecords = schema.new({
            id = id.from(_N, "CustomDomain", "CertificateValidationRecords"),
            type = "list",
            name = "CertificateValidationRecords",
            target_id = prelude.Document.id,
            list_member = M.CertificateValidationRecord,
        }),
        Status = schema.new({
            id = id.from(_N, "CustomDomain", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VpcDNSTarget = schema.new({
    id = id.from(_N, "VpcDNSTarget"),
    type = "structure",
    members = {
        VpcIngressConnectionArn = schema.new({
            id = id.from(_N, "VpcDNSTarget", "VpcIngressConnectionArn"),
            type = "string",
            name = "VpcIngressConnectionArn",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "VpcDNSTarget", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        DomainName = schema.new({
            id = id.from(_N, "VpcDNSTarget", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateCustomDomainOutput = schema.new({
    id = id.from(_N, "AssociateCustomDomainResponse"),
    type = "structure",
    members = {
        DNSTarget = schema.new({
            id = id.from(_N, "AssociateCustomDomainOutput", "DNSTarget"),
            type = "string",
            name = "DNSTarget",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceArn = schema.new({
            id = id.from(_N, "AssociateCustomDomainOutput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomDomain = schema.new({
            id = id.from(_N, "AssociateCustomDomainOutput", "CustomDomain"),
            type = "structure",
            name = "CustomDomain",
            target_id = id.from(_N, "CustomDomain"),
            target = M.CustomDomain,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcDNSTargets = schema.new({
            id = id.from(_N, "AssociateCustomDomainOutput", "VpcDNSTargets"),
            type = "list",
            name = "VpcDNSTargets",
            target_id = prelude.Document.id,
            list_member = M.VpcDNSTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServiceErrorException = schema.new({
    id = id.from(_N, "InternalServiceErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServiceErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidStateException = schema.new({
    id = id.from(_N, "InvalidStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidStateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAutoScalingConfigurationInput = schema.new({
    id = id.from(_N, "CreateAutoScalingConfigurationRequest"),
    type = "structure",
    members = {
        AutoScalingConfigurationName = schema.new({
            id = id.from(_N, "CreateAutoScalingConfigurationInput", "AutoScalingConfigurationName"),
            type = "string",
            name = "AutoScalingConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "CreateAutoScalingConfigurationInput", "MaxConcurrency"),
            type = "integer",
            name = "MaxConcurrency",
            target_id = prelude.Integer.id,
        }),
        MinSize = schema.new({
            id = id.from(_N, "CreateAutoScalingConfigurationInput", "MinSize"),
            type = "integer",
            name = "MinSize",
            target_id = prelude.Integer.id,
        }),
        MaxSize = schema.new({
            id = id.from(_N, "CreateAutoScalingConfigurationInput", "MaxSize"),
            type = "integer",
            name = "MaxSize",
            target_id = prelude.Integer.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateAutoScalingConfigurationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.AutoScalingConfiguration = schema.new({
    id = id.from(_N, "AutoScalingConfiguration"),
    type = "structure",
    members = {
        AutoScalingConfigurationArn = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "AutoScalingConfigurationArn"),
            type = "string",
            name = "AutoScalingConfigurationArn",
            target_id = prelude.String.id,
        }),
        AutoScalingConfigurationName = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "AutoScalingConfigurationName"),
            type = "string",
            name = "AutoScalingConfigurationName",
            target_id = prelude.String.id,
        }),
        AutoScalingConfigurationRevision = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "AutoScalingConfigurationRevision"),
            type = "integer",
            name = "AutoScalingConfigurationRevision",
            target_id = prelude.Integer.id,
        }),
        Latest = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "Latest"),
            type = "boolean",
            name = "Latest",
            target_id = prelude.Boolean.id,
        }),
        Status = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        MaxConcurrency = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "MaxConcurrency"),
            type = "integer",
            name = "MaxConcurrency",
            target_id = prelude.Integer.id,
        }),
        MinSize = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "MinSize"),
            type = "integer",
            name = "MinSize",
            target_id = prelude.Integer.id,
        }),
        MaxSize = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "MaxSize"),
            type = "integer",
            name = "MaxSize",
            target_id = prelude.Integer.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        DeletedAt = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "DeletedAt"),
            type = "timestamp",
            name = "DeletedAt",
            target_id = prelude.Timestamp.id,
        }),
        HasAssociatedService = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "HasAssociatedService"),
            type = "boolean",
            name = "HasAssociatedService",
            target_id = prelude.Boolean.id,
        }),
        IsDefault = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "IsDefault"),
            type = "boolean",
            name = "IsDefault",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateAutoScalingConfigurationOutput = schema.new({
    id = id.from(_N, "CreateAutoScalingConfigurationResponse"),
    type = "structure",
    members = {
        AutoScalingConfiguration = schema.new({
            id = id.from(_N, "CreateAutoScalingConfigurationOutput", "AutoScalingConfiguration"),
            type = "structure",
            name = "AutoScalingConfiguration",
            target_id = id.from(_N, "AutoScalingConfiguration"),
            target = M.AutoScalingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConnectionInput = schema.new({
    id = id.from(_N, "CreateConnectionRequest"),
    type = "structure",
    members = {
        ConnectionName = schema.new({
            id = id.from(_N, "CreateConnectionInput", "ConnectionName"),
            type = "string",
            name = "ConnectionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProviderType = schema.new({
            id = id.from(_N, "CreateConnectionInput", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConnectionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.Connection = schema.new({
    id = id.from(_N, "Connection"),
    type = "structure",
    members = {
        ConnectionName = schema.new({
            id = id.from(_N, "Connection", "ConnectionName"),
            type = "string",
            name = "ConnectionName",
            target_id = prelude.String.id,
        }),
        ConnectionArn = schema.new({
            id = id.from(_N, "Connection", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
        }),
        ProviderType = schema.new({
            id = id.from(_N, "Connection", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Connection", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Connection", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateConnectionOutput = schema.new({
    id = id.from(_N, "CreateConnectionResponse"),
    type = "structure",
    members = {
        Connection = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "Connection"),
            type = "structure",
            name = "Connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TraceConfiguration = schema.new({
    id = id.from(_N, "TraceConfiguration"),
    type = "structure",
    members = {
        Vendor = schema.new({
            id = id.from(_N, "TraceConfiguration", "Vendor"),
            type = "string",
            name = "Vendor",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateObservabilityConfigurationInput = schema.new({
    id = id.from(_N, "CreateObservabilityConfigurationRequest"),
    type = "structure",
    members = {
        ObservabilityConfigurationName = schema.new({
            id = id.from(_N, "CreateObservabilityConfigurationInput", "ObservabilityConfigurationName"),
            type = "string",
            name = "ObservabilityConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TraceConfiguration = schema.new({
            id = id.from(_N, "CreateObservabilityConfigurationInput", "TraceConfiguration"),
            type = "structure",
            name = "TraceConfiguration",
            target_id = id.from(_N, "TraceConfiguration"),
            target = M.TraceConfiguration,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateObservabilityConfigurationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ObservabilityConfiguration = schema.new({
    id = id.from(_N, "ObservabilityConfiguration"),
    type = "structure",
    members = {
        ObservabilityConfigurationArn = schema.new({
            id = id.from(_N, "ObservabilityConfiguration", "ObservabilityConfigurationArn"),
            type = "string",
            name = "ObservabilityConfigurationArn",
            target_id = prelude.String.id,
        }),
        ObservabilityConfigurationName = schema.new({
            id = id.from(_N, "ObservabilityConfiguration", "ObservabilityConfigurationName"),
            type = "string",
            name = "ObservabilityConfigurationName",
            target_id = prelude.String.id,
        }),
        TraceConfiguration = schema.new({
            id = id.from(_N, "ObservabilityConfiguration", "TraceConfiguration"),
            type = "structure",
            name = "TraceConfiguration",
            target_id = id.from(_N, "TraceConfiguration"),
            target = M.TraceConfiguration,
        }),
        ObservabilityConfigurationRevision = schema.new({
            id = id.from(_N, "ObservabilityConfiguration", "ObservabilityConfigurationRevision"),
            type = "integer",
            name = "ObservabilityConfigurationRevision",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Latest = schema.new({
            id = id.from(_N, "ObservabilityConfiguration", "Latest"),
            type = "boolean",
            name = "Latest",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ObservabilityConfiguration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "ObservabilityConfiguration", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        DeletedAt = schema.new({
            id = id.from(_N, "ObservabilityConfiguration", "DeletedAt"),
            type = "timestamp",
            name = "DeletedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateObservabilityConfigurationOutput = schema.new({
    id = id.from(_N, "CreateObservabilityConfigurationResponse"),
    type = "structure",
    members = {
        ObservabilityConfiguration = schema.new({
            id = id.from(_N, "CreateObservabilityConfigurationOutput", "ObservabilityConfiguration"),
            type = "structure",
            name = "ObservabilityConfiguration",
            target_id = id.from(_N, "ObservabilityConfiguration"),
            target = M.ObservabilityConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EncryptionConfiguration = schema.new({
    id = id.from(_N, "EncryptionConfiguration"),
    type = "structure",
    members = {
        KmsKey = schema.new({
            id = id.from(_N, "EncryptionConfiguration", "KmsKey"),
            type = "string",
            name = "KmsKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HealthCheckConfiguration = schema.new({
    id = id.from(_N, "HealthCheckConfiguration"),
    type = "structure",
    members = {
        Protocol = schema.new({
            id = id.from(_N, "HealthCheckConfiguration", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
        }),
        Path = schema.new({
            id = id.from(_N, "HealthCheckConfiguration", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        Interval = schema.new({
            id = id.from(_N, "HealthCheckConfiguration", "Interval"),
            type = "integer",
            name = "Interval",
            target_id = prelude.Integer.id,
        }),
        Timeout = schema.new({
            id = id.from(_N, "HealthCheckConfiguration", "Timeout"),
            type = "integer",
            name = "Timeout",
            target_id = prelude.Integer.id,
        }),
        HealthyThreshold = schema.new({
            id = id.from(_N, "HealthCheckConfiguration", "HealthyThreshold"),
            type = "integer",
            name = "HealthyThreshold",
            target_id = prelude.Integer.id,
        }),
        UnhealthyThreshold = schema.new({
            id = id.from(_N, "HealthCheckConfiguration", "UnhealthyThreshold"),
            type = "integer",
            name = "UnhealthyThreshold",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InstanceConfiguration = schema.new({
    id = id.from(_N, "InstanceConfiguration"),
    type = "structure",
    members = {
        Cpu = schema.new({
            id = id.from(_N, "InstanceConfiguration", "Cpu"),
            type = "string",
            name = "Cpu",
            target_id = prelude.String.id,
        }),
        Memory = schema.new({
            id = id.from(_N, "InstanceConfiguration", "Memory"),
            type = "string",
            name = "Memory",
            target_id = prelude.String.id,
        }),
        InstanceRoleArn = schema.new({
            id = id.from(_N, "InstanceConfiguration", "InstanceRoleArn"),
            type = "string",
            name = "InstanceRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.EgressConfiguration = schema.new({
    id = id.from(_N, "EgressConfiguration"),
    type = "structure",
    members = {
        EgressType = schema.new({
            id = id.from(_N, "EgressConfiguration", "EgressType"),
            type = "string",
            name = "EgressType",
            target_id = prelude.String.id,
        }),
        VpcConnectorArn = schema.new({
            id = id.from(_N, "EgressConfiguration", "VpcConnectorArn"),
            type = "string",
            name = "VpcConnectorArn",
            target_id = prelude.String.id,
        }),
    },
})

M.IngressConfiguration = schema.new({
    id = id.from(_N, "IngressConfiguration"),
    type = "structure",
    members = {
        IsPubliclyAccessible = schema.new({
            id = id.from(_N, "IngressConfiguration", "IsPubliclyAccessible"),
            type = "boolean",
            name = "IsPubliclyAccessible",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.NetworkConfiguration = schema.new({
    id = id.from(_N, "NetworkConfiguration"),
    type = "structure",
    members = {
        EgressConfiguration = schema.new({
            id = id.from(_N, "NetworkConfiguration", "EgressConfiguration"),
            type = "structure",
            name = "EgressConfiguration",
            target_id = id.from(_N, "EgressConfiguration"),
            target = M.EgressConfiguration,
        }),
        IngressConfiguration = schema.new({
            id = id.from(_N, "NetworkConfiguration", "IngressConfiguration"),
            type = "structure",
            name = "IngressConfiguration",
            target_id = id.from(_N, "IngressConfiguration"),
            target = M.IngressConfiguration,
        }),
        IpAddressType = schema.new({
            id = id.from(_N, "NetworkConfiguration", "IpAddressType"),
            type = "string",
            name = "IpAddressType",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceObservabilityConfiguration = schema.new({
    id = id.from(_N, "ServiceObservabilityConfiguration"),
    type = "structure",
    members = {
        ObservabilityEnabled = schema.new({
            id = id.from(_N, "ServiceObservabilityConfiguration", "ObservabilityEnabled"),
            type = "boolean",
            name = "ObservabilityEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        ObservabilityConfigurationArn = schema.new({
            id = id.from(_N, "ServiceObservabilityConfiguration", "ObservabilityConfigurationArn"),
            type = "string",
            name = "ObservabilityConfigurationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthenticationConfiguration = schema.new({
    id = id.from(_N, "AuthenticationConfiguration"),
    type = "structure",
    members = {
        ConnectionArn = schema.new({
            id = id.from(_N, "AuthenticationConfiguration", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
        }),
        AccessRoleArn = schema.new({
            id = id.from(_N, "AuthenticationConfiguration", "AccessRoleArn"),
            type = "string",
            name = "AccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CodeConfigurationValues = schema.new({
    id = id.from(_N, "CodeConfigurationValues"),
    type = "structure",
    members = {
        Runtime = schema.new({
            id = id.from(_N, "CodeConfigurationValues", "Runtime"),
            type = "string",
            name = "Runtime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BuildCommand = schema.new({
            id = id.from(_N, "CodeConfigurationValues", "BuildCommand"),
            type = "string",
            name = "BuildCommand",
            target_id = prelude.String.id,
        }),
        StartCommand = schema.new({
            id = id.from(_N, "CodeConfigurationValues", "StartCommand"),
            type = "string",
            name = "StartCommand",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "CodeConfigurationValues", "Port"),
            type = "string",
            name = "Port",
            target_id = prelude.String.id,
        }),
        RuntimeEnvironmentVariables = schema.new({
            id = id.from(_N, "CodeConfigurationValues", "RuntimeEnvironmentVariables"),
            type = "map",
            name = "RuntimeEnvironmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        RuntimeEnvironmentSecrets = schema.new({
            id = id.from(_N, "CodeConfigurationValues", "RuntimeEnvironmentSecrets"),
            type = "map",
            name = "RuntimeEnvironmentSecrets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CodeConfiguration = schema.new({
    id = id.from(_N, "CodeConfiguration"),
    type = "structure",
    members = {
        ConfigurationSource = schema.new({
            id = id.from(_N, "CodeConfiguration", "ConfigurationSource"),
            type = "string",
            name = "ConfigurationSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CodeConfigurationValues = schema.new({
            id = id.from(_N, "CodeConfiguration", "CodeConfigurationValues"),
            type = "structure",
            name = "CodeConfigurationValues",
            target_id = id.from(_N, "CodeConfigurationValues"),
            target = M.CodeConfigurationValues,
        }),
    },
})

M.SourceCodeVersion = schema.new({
    id = id.from(_N, "SourceCodeVersion"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "SourceCodeVersion", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "SourceCodeVersion", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CodeRepository = schema.new({
    id = id.from(_N, "CodeRepository"),
    type = "structure",
    members = {
        RepositoryUrl = schema.new({
            id = id.from(_N, "CodeRepository", "RepositoryUrl"),
            type = "string",
            name = "RepositoryUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceCodeVersion = schema.new({
            id = id.from(_N, "CodeRepository", "SourceCodeVersion"),
            type = "structure",
            name = "SourceCodeVersion",
            target_id = id.from(_N, "SourceCodeVersion"),
            target = M.SourceCodeVersion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CodeConfiguration = schema.new({
            id = id.from(_N, "CodeRepository", "CodeConfiguration"),
            type = "structure",
            name = "CodeConfiguration",
            target_id = id.from(_N, "CodeConfiguration"),
            target = M.CodeConfiguration,
        }),
        SourceDirectory = schema.new({
            id = id.from(_N, "CodeRepository", "SourceDirectory"),
            type = "string",
            name = "SourceDirectory",
            target_id = prelude.String.id,
        }),
    },
})

M.ImageConfiguration = schema.new({
    id = id.from(_N, "ImageConfiguration"),
    type = "structure",
    members = {
        RuntimeEnvironmentVariables = schema.new({
            id = id.from(_N, "ImageConfiguration", "RuntimeEnvironmentVariables"),
            type = "map",
            name = "RuntimeEnvironmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        StartCommand = schema.new({
            id = id.from(_N, "ImageConfiguration", "StartCommand"),
            type = "string",
            name = "StartCommand",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "ImageConfiguration", "Port"),
            type = "string",
            name = "Port",
            target_id = prelude.String.id,
        }),
        RuntimeEnvironmentSecrets = schema.new({
            id = id.from(_N, "ImageConfiguration", "RuntimeEnvironmentSecrets"),
            type = "map",
            name = "RuntimeEnvironmentSecrets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ImageRepository = schema.new({
    id = id.from(_N, "ImageRepository"),
    type = "structure",
    members = {
        ImageIdentifier = schema.new({
            id = id.from(_N, "ImageRepository", "ImageIdentifier"),
            type = "string",
            name = "ImageIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ImageConfiguration = schema.new({
            id = id.from(_N, "ImageRepository", "ImageConfiguration"),
            type = "structure",
            name = "ImageConfiguration",
            target_id = id.from(_N, "ImageConfiguration"),
            target = M.ImageConfiguration,
        }),
        ImageRepositoryType = schema.new({
            id = id.from(_N, "ImageRepository", "ImageRepositoryType"),
            type = "string",
            name = "ImageRepositoryType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SourceConfiguration = schema.new({
    id = id.from(_N, "SourceConfiguration"),
    type = "structure",
    members = {
        CodeRepository = schema.new({
            id = id.from(_N, "SourceConfiguration", "CodeRepository"),
            type = "structure",
            name = "CodeRepository",
            target_id = id.from(_N, "CodeRepository"),
            target = M.CodeRepository,
        }),
        ImageRepository = schema.new({
            id = id.from(_N, "SourceConfiguration", "ImageRepository"),
            type = "structure",
            name = "ImageRepository",
            target_id = id.from(_N, "ImageRepository"),
            target = M.ImageRepository,
        }),
        AutoDeploymentsEnabled = schema.new({
            id = id.from(_N, "SourceConfiguration", "AutoDeploymentsEnabled"),
            type = "boolean",
            name = "AutoDeploymentsEnabled",
            target_id = prelude.Boolean.id,
        }),
        AuthenticationConfiguration = schema.new({
            id = id.from(_N, "SourceConfiguration", "AuthenticationConfiguration"),
            type = "structure",
            name = "AuthenticationConfiguration",
            target_id = id.from(_N, "AuthenticationConfiguration"),
            target = M.AuthenticationConfiguration,
        }),
    },
})

M.CreateServiceInput = schema.new({
    id = id.from(_N, "CreateServiceRequest"),
    type = "structure",
    members = {
        ServiceName = schema.new({
            id = id.from(_N, "CreateServiceInput", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceConfiguration = schema.new({
            id = id.from(_N, "CreateServiceInput", "SourceConfiguration"),
            type = "structure",
            name = "SourceConfiguration",
            target_id = id.from(_N, "SourceConfiguration"),
            target = M.SourceConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceConfiguration = schema.new({
            id = id.from(_N, "CreateServiceInput", "InstanceConfiguration"),
            type = "structure",
            name = "InstanceConfiguration",
            target_id = id.from(_N, "InstanceConfiguration"),
            target = M.InstanceConfiguration,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateServiceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        EncryptionConfiguration = schema.new({
            id = id.from(_N, "CreateServiceInput", "EncryptionConfiguration"),
            type = "structure",
            name = "EncryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
        HealthCheckConfiguration = schema.new({
            id = id.from(_N, "CreateServiceInput", "HealthCheckConfiguration"),
            type = "structure",
            name = "HealthCheckConfiguration",
            target_id = id.from(_N, "HealthCheckConfiguration"),
            target = M.HealthCheckConfiguration,
        }),
        AutoScalingConfigurationArn = schema.new({
            id = id.from(_N, "CreateServiceInput", "AutoScalingConfigurationArn"),
            type = "string",
            name = "AutoScalingConfigurationArn",
            target_id = prelude.String.id,
        }),
        NetworkConfiguration = schema.new({
            id = id.from(_N, "CreateServiceInput", "NetworkConfiguration"),
            type = "structure",
            name = "NetworkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
        }),
        ObservabilityConfiguration = schema.new({
            id = id.from(_N, "CreateServiceInput", "ObservabilityConfiguration"),
            type = "structure",
            name = "ObservabilityConfiguration",
            target_id = id.from(_N, "ServiceObservabilityConfiguration"),
            target = M.ServiceObservabilityConfiguration,
        }),
    },
})

M.AutoScalingConfigurationSummary = schema.new({
    id = id.from(_N, "AutoScalingConfigurationSummary"),
    type = "structure",
    members = {
        AutoScalingConfigurationArn = schema.new({
            id = id.from(_N, "AutoScalingConfigurationSummary", "AutoScalingConfigurationArn"),
            type = "string",
            name = "AutoScalingConfigurationArn",
            target_id = prelude.String.id,
        }),
        AutoScalingConfigurationName = schema.new({
            id = id.from(_N, "AutoScalingConfigurationSummary", "AutoScalingConfigurationName"),
            type = "string",
            name = "AutoScalingConfigurationName",
            target_id = prelude.String.id,
        }),
        AutoScalingConfigurationRevision = schema.new({
            id = id.from(_N, "AutoScalingConfigurationSummary", "AutoScalingConfigurationRevision"),
            type = "integer",
            name = "AutoScalingConfigurationRevision",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "AutoScalingConfigurationSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "AutoScalingConfigurationSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        HasAssociatedService = schema.new({
            id = id.from(_N, "AutoScalingConfigurationSummary", "HasAssociatedService"),
            type = "boolean",
            name = "HasAssociatedService",
            target_id = prelude.Boolean.id,
        }),
        IsDefault = schema.new({
            id = id.from(_N, "AutoScalingConfigurationSummary", "IsDefault"),
            type = "boolean",
            name = "IsDefault",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Service = schema.new({
    id = id.from(_N, "Service"),
    type = "structure",
    members = {
        ServiceName = schema.new({
            id = id.from(_N, "Service", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceId = schema.new({
            id = id.from(_N, "Service", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceArn = schema.new({
            id = id.from(_N, "Service", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceUrl = schema.new({
            id = id.from(_N, "Service", "ServiceUrl"),
            type = "string",
            name = "ServiceUrl",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Service", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "Service", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletedAt = schema.new({
            id = id.from(_N, "Service", "DeletedAt"),
            type = "timestamp",
            name = "DeletedAt",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Service", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceConfiguration = schema.new({
            id = id.from(_N, "Service", "SourceConfiguration"),
            type = "structure",
            name = "SourceConfiguration",
            target_id = id.from(_N, "SourceConfiguration"),
            target = M.SourceConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceConfiguration = schema.new({
            id = id.from(_N, "Service", "InstanceConfiguration"),
            type = "structure",
            name = "InstanceConfiguration",
            target_id = id.from(_N, "InstanceConfiguration"),
            target = M.InstanceConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncryptionConfiguration = schema.new({
            id = id.from(_N, "Service", "EncryptionConfiguration"),
            type = "structure",
            name = "EncryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
        HealthCheckConfiguration = schema.new({
            id = id.from(_N, "Service", "HealthCheckConfiguration"),
            type = "structure",
            name = "HealthCheckConfiguration",
            target_id = id.from(_N, "HealthCheckConfiguration"),
            target = M.HealthCheckConfiguration,
        }),
        AutoScalingConfigurationSummary = schema.new({
            id = id.from(_N, "Service", "AutoScalingConfigurationSummary"),
            type = "structure",
            name = "AutoScalingConfigurationSummary",
            target_id = id.from(_N, "AutoScalingConfigurationSummary"),
            target = M.AutoScalingConfigurationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NetworkConfiguration = schema.new({
            id = id.from(_N, "Service", "NetworkConfiguration"),
            type = "structure",
            name = "NetworkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ObservabilityConfiguration = schema.new({
            id = id.from(_N, "Service", "ObservabilityConfiguration"),
            type = "structure",
            name = "ObservabilityConfiguration",
            target_id = id.from(_N, "ServiceObservabilityConfiguration"),
            target = M.ServiceObservabilityConfiguration,
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OperationId = schema.new({
            id = id.from(_N, "CreateServiceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateVpcConnectorInput = schema.new({
    id = id.from(_N, "CreateVpcConnectorRequest"),
    type = "structure",
    members = {
        VpcConnectorName = schema.new({
            id = id.from(_N, "CreateVpcConnectorInput", "VpcConnectorName"),
            type = "string",
            name = "VpcConnectorName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subnets = schema.new({
            id = id.from(_N, "CreateVpcConnectorInput", "Subnets"),
            type = "list",
            name = "Subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "CreateVpcConnectorInput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVpcConnectorInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.VpcConnector = schema.new({
    id = id.from(_N, "VpcConnector"),
    type = "structure",
    members = {
        VpcConnectorName = schema.new({
            id = id.from(_N, "VpcConnector", "VpcConnectorName"),
            type = "string",
            name = "VpcConnectorName",
            target_id = prelude.String.id,
        }),
        VpcConnectorArn = schema.new({
            id = id.from(_N, "VpcConnector", "VpcConnectorArn"),
            type = "string",
            name = "VpcConnectorArn",
            target_id = prelude.String.id,
        }),
        VpcConnectorRevision = schema.new({
            id = id.from(_N, "VpcConnector", "VpcConnectorRevision"),
            type = "integer",
            name = "VpcConnectorRevision",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Subnets = schema.new({
            id = id.from(_N, "VpcConnector", "Subnets"),
            type = "list",
            name = "Subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "VpcConnector", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "VpcConnector", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "VpcConnector", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        DeletedAt = schema.new({
            id = id.from(_N, "VpcConnector", "DeletedAt"),
            type = "timestamp",
            name = "DeletedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateVpcConnectorOutput = schema.new({
    id = id.from(_N, "CreateVpcConnectorResponse"),
    type = "structure",
    members = {
        VpcConnector = schema.new({
            id = id.from(_N, "CreateVpcConnectorOutput", "VpcConnector"),
            type = "structure",
            name = "VpcConnector",
            target_id = id.from(_N, "VpcConnector"),
            target = M.VpcConnector,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IngressVpcConfiguration = schema.new({
    id = id.from(_N, "IngressVpcConfiguration"),
    type = "structure",
    members = {
        VpcId = schema.new({
            id = id.from(_N, "IngressVpcConfiguration", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        VpcEndpointId = schema.new({
            id = id.from(_N, "IngressVpcConfiguration", "VpcEndpointId"),
            type = "string",
            name = "VpcEndpointId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateVpcIngressConnectionInput = schema.new({
    id = id.from(_N, "CreateVpcIngressConnectionRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "CreateVpcIngressConnectionInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcIngressConnectionName = schema.new({
            id = id.from(_N, "CreateVpcIngressConnectionInput", "VpcIngressConnectionName"),
            type = "string",
            name = "VpcIngressConnectionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IngressVpcConfiguration = schema.new({
            id = id.from(_N, "CreateVpcIngressConnectionInput", "IngressVpcConfiguration"),
            type = "structure",
            name = "IngressVpcConfiguration",
            target_id = id.from(_N, "IngressVpcConfiguration"),
            target = M.IngressVpcConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVpcIngressConnectionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.VpcIngressConnection = schema.new({
    id = id.from(_N, "VpcIngressConnection"),
    type = "structure",
    members = {
        VpcIngressConnectionArn = schema.new({
            id = id.from(_N, "VpcIngressConnection", "VpcIngressConnectionArn"),
            type = "string",
            name = "VpcIngressConnectionArn",
            target_id = prelude.String.id,
        }),
        VpcIngressConnectionName = schema.new({
            id = id.from(_N, "VpcIngressConnection", "VpcIngressConnectionName"),
            type = "string",
            name = "VpcIngressConnectionName",
            target_id = prelude.String.id,
        }),
        ServiceArn = schema.new({
            id = id.from(_N, "VpcIngressConnection", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "VpcIngressConnection", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "VpcIngressConnection", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        DomainName = schema.new({
            id = id.from(_N, "VpcIngressConnection", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
        }),
        IngressVpcConfiguration = schema.new({
            id = id.from(_N, "VpcIngressConnection", "IngressVpcConfiguration"),
            type = "structure",
            name = "IngressVpcConfiguration",
            target_id = id.from(_N, "IngressVpcConfiguration"),
            target = M.IngressVpcConfiguration,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "VpcIngressConnection", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        DeletedAt = schema.new({
            id = id.from(_N, "VpcIngressConnection", "DeletedAt"),
            type = "timestamp",
            name = "DeletedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateVpcIngressConnectionOutput = schema.new({
    id = id.from(_N, "CreateVpcIngressConnectionResponse"),
    type = "structure",
    members = {
        VpcIngressConnection = schema.new({
            id = id.from(_N, "CreateVpcIngressConnectionOutput", "VpcIngressConnection"),
            type = "structure",
            name = "VpcIngressConnection",
            target_id = id.from(_N, "VpcIngressConnection"),
            target = M.VpcIngressConnection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAutoScalingConfigurationInput = schema.new({
    id = id.from(_N, "DeleteAutoScalingConfigurationRequest"),
    type = "structure",
    members = {
        AutoScalingConfigurationArn = schema.new({
            id = id.from(_N, "DeleteAutoScalingConfigurationInput", "AutoScalingConfigurationArn"),
            type = "string",
            name = "AutoScalingConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeleteAllRevisions = schema.new({
            id = id.from(_N, "DeleteAutoScalingConfigurationInput", "DeleteAllRevisions"),
            type = "boolean",
            name = "DeleteAllRevisions",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteAutoScalingConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteAutoScalingConfigurationResponse"),
    type = "structure",
    members = {
        AutoScalingConfiguration = schema.new({
            id = id.from(_N, "DeleteAutoScalingConfigurationOutput", "AutoScalingConfiguration"),
            type = "structure",
            name = "AutoScalingConfiguration",
            target_id = id.from(_N, "AutoScalingConfiguration"),
            target = M.AutoScalingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
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

M.DeleteConnectionInput = schema.new({
    id = id.from(_N, "DeleteConnectionRequest"),
    type = "structure",
    members = {
        ConnectionArn = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteConnectionOutput = schema.new({
    id = id.from(_N, "DeleteConnectionResponse"),
    type = "structure",
    members = {
        Connection = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "Connection"),
            type = "structure",
            name = "Connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
        }),
    },
})

M.DeleteObservabilityConfigurationInput = schema.new({
    id = id.from(_N, "DeleteObservabilityConfigurationRequest"),
    type = "structure",
    members = {
        ObservabilityConfigurationArn = schema.new({
            id = id.from(_N, "DeleteObservabilityConfigurationInput", "ObservabilityConfigurationArn"),
            type = "string",
            name = "ObservabilityConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteObservabilityConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteObservabilityConfigurationResponse"),
    type = "structure",
    members = {
        ObservabilityConfiguration = schema.new({
            id = id.from(_N, "DeleteObservabilityConfigurationOutput", "ObservabilityConfiguration"),
            type = "structure",
            name = "ObservabilityConfiguration",
            target_id = id.from(_N, "ObservabilityConfiguration"),
            target = M.ObservabilityConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteServiceInput = schema.new({
    id = id.from(_N, "DeleteServiceRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "DeleteServiceInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
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
    members = {
        Service = schema.new({
            id = id.from(_N, "DeleteServiceOutput", "Service"),
            type = "structure",
            name = "Service",
            target_id = id.from(_N, "Service"),
            target = M.Service,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OperationId = schema.new({
            id = id.from(_N, "DeleteServiceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVpcConnectorInput = schema.new({
    id = id.from(_N, "DeleteVpcConnectorRequest"),
    type = "structure",
    members = {
        VpcConnectorArn = schema.new({
            id = id.from(_N, "DeleteVpcConnectorInput", "VpcConnectorArn"),
            type = "string",
            name = "VpcConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVpcConnectorOutput = schema.new({
    id = id.from(_N, "DeleteVpcConnectorResponse"),
    type = "structure",
    members = {
        VpcConnector = schema.new({
            id = id.from(_N, "DeleteVpcConnectorOutput", "VpcConnector"),
            type = "structure",
            name = "VpcConnector",
            target_id = id.from(_N, "VpcConnector"),
            target = M.VpcConnector,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVpcIngressConnectionInput = schema.new({
    id = id.from(_N, "DeleteVpcIngressConnectionRequest"),
    type = "structure",
    members = {
        VpcIngressConnectionArn = schema.new({
            id = id.from(_N, "DeleteVpcIngressConnectionInput", "VpcIngressConnectionArn"),
            type = "string",
            name = "VpcIngressConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVpcIngressConnectionOutput = schema.new({
    id = id.from(_N, "DeleteVpcIngressConnectionResponse"),
    type = "structure",
    members = {
        VpcIngressConnection = schema.new({
            id = id.from(_N, "DeleteVpcIngressConnectionOutput", "VpcIngressConnection"),
            type = "structure",
            name = "VpcIngressConnection",
            target_id = id.from(_N, "VpcIngressConnection"),
            target = M.VpcIngressConnection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAutoScalingConfigurationInput = schema.new({
    id = id.from(_N, "DescribeAutoScalingConfigurationRequest"),
    type = "structure",
    members = {
        AutoScalingConfigurationArn = schema.new({
            id = id.from(_N, "DescribeAutoScalingConfigurationInput", "AutoScalingConfigurationArn"),
            type = "string",
            name = "AutoScalingConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAutoScalingConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeAutoScalingConfigurationResponse"),
    type = "structure",
    members = {
        AutoScalingConfiguration = schema.new({
            id = id.from(_N, "DescribeAutoScalingConfigurationOutput", "AutoScalingConfiguration"),
            type = "structure",
            name = "AutoScalingConfiguration",
            target_id = id.from(_N, "AutoScalingConfiguration"),
            target = M.AutoScalingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeCustomDomainsInput = schema.new({
    id = id.from(_N, "DescribeCustomDomainsRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "DescribeCustomDomainsInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeCustomDomainsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeCustomDomainsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeCustomDomainsOutput = schema.new({
    id = id.from(_N, "DescribeCustomDomainsResponse"),
    type = "structure",
    members = {
        DNSTarget = schema.new({
            id = id.from(_N, "DescribeCustomDomainsOutput", "DNSTarget"),
            type = "string",
            name = "DNSTarget",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceArn = schema.new({
            id = id.from(_N, "DescribeCustomDomainsOutput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomDomains = schema.new({
            id = id.from(_N, "DescribeCustomDomainsOutput", "CustomDomains"),
            type = "list",
            name = "CustomDomains",
            target_id = prelude.Document.id,
            list_member = M.CustomDomain,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcDNSTargets = schema.new({
            id = id.from(_N, "DescribeCustomDomainsOutput", "VpcDNSTargets"),
            type = "list",
            name = "VpcDNSTargets",
            target_id = prelude.Document.id,
            list_member = M.VpcDNSTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeCustomDomainsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeObservabilityConfigurationInput = schema.new({
    id = id.from(_N, "DescribeObservabilityConfigurationRequest"),
    type = "structure",
    members = {
        ObservabilityConfigurationArn = schema.new({
            id = id.from(_N, "DescribeObservabilityConfigurationInput", "ObservabilityConfigurationArn"),
            type = "string",
            name = "ObservabilityConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeObservabilityConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeObservabilityConfigurationResponse"),
    type = "structure",
    members = {
        ObservabilityConfiguration = schema.new({
            id = id.from(_N, "DescribeObservabilityConfigurationOutput", "ObservabilityConfiguration"),
            type = "structure",
            name = "ObservabilityConfiguration",
            target_id = id.from(_N, "ObservabilityConfiguration"),
            target = M.ObservabilityConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeServiceInput = schema.new({
    id = id.from(_N, "DescribeServiceRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "DescribeServiceInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeServiceOutput = schema.new({
    id = id.from(_N, "DescribeServiceResponse"),
    type = "structure",
    members = {
        Service = schema.new({
            id = id.from(_N, "DescribeServiceOutput", "Service"),
            type = "structure",
            name = "Service",
            target_id = id.from(_N, "Service"),
            target = M.Service,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeVpcConnectorInput = schema.new({
    id = id.from(_N, "DescribeVpcConnectorRequest"),
    type = "structure",
    members = {
        VpcConnectorArn = schema.new({
            id = id.from(_N, "DescribeVpcConnectorInput", "VpcConnectorArn"),
            type = "string",
            name = "VpcConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeVpcConnectorOutput = schema.new({
    id = id.from(_N, "DescribeVpcConnectorResponse"),
    type = "structure",
    members = {
        VpcConnector = schema.new({
            id = id.from(_N, "DescribeVpcConnectorOutput", "VpcConnector"),
            type = "structure",
            name = "VpcConnector",
            target_id = id.from(_N, "VpcConnector"),
            target = M.VpcConnector,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeVpcIngressConnectionInput = schema.new({
    id = id.from(_N, "DescribeVpcIngressConnectionRequest"),
    type = "structure",
    members = {
        VpcIngressConnectionArn = schema.new({
            id = id.from(_N, "DescribeVpcIngressConnectionInput", "VpcIngressConnectionArn"),
            type = "string",
            name = "VpcIngressConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeVpcIngressConnectionOutput = schema.new({
    id = id.from(_N, "DescribeVpcIngressConnectionResponse"),
    type = "structure",
    members = {
        VpcIngressConnection = schema.new({
            id = id.from(_N, "DescribeVpcIngressConnectionOutput", "VpcIngressConnection"),
            type = "structure",
            name = "VpcIngressConnection",
            target_id = id.from(_N, "VpcIngressConnection"),
            target = M.VpcIngressConnection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateCustomDomainInput = schema.new({
    id = id.from(_N, "DisassociateCustomDomainRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "DisassociateCustomDomainInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "DisassociateCustomDomainInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateCustomDomainOutput = schema.new({
    id = id.from(_N, "DisassociateCustomDomainResponse"),
    type = "structure",
    members = {
        DNSTarget = schema.new({
            id = id.from(_N, "DisassociateCustomDomainOutput", "DNSTarget"),
            type = "string",
            name = "DNSTarget",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceArn = schema.new({
            id = id.from(_N, "DisassociateCustomDomainOutput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomDomain = schema.new({
            id = id.from(_N, "DisassociateCustomDomainOutput", "CustomDomain"),
            type = "structure",
            name = "CustomDomain",
            target_id = id.from(_N, "CustomDomain"),
            target = M.CustomDomain,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcDNSTargets = schema.new({
            id = id.from(_N, "DisassociateCustomDomainOutput", "VpcDNSTargets"),
            type = "list",
            name = "VpcDNSTargets",
            target_id = prelude.Document.id,
            list_member = M.VpcDNSTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAutoScalingConfigurationsInput = schema.new({
    id = id.from(_N, "ListAutoScalingConfigurationsRequest"),
    type = "structure",
    members = {
        AutoScalingConfigurationName = schema.new({
            id = id.from(_N, "ListAutoScalingConfigurationsInput", "AutoScalingConfigurationName"),
            type = "string",
            name = "AutoScalingConfigurationName",
            target_id = prelude.String.id,
        }),
        LatestOnly = schema.new({
            id = id.from(_N, "ListAutoScalingConfigurationsInput", "LatestOnly"),
            type = "boolean",
            name = "LatestOnly",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAutoScalingConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAutoScalingConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAutoScalingConfigurationsOutput = schema.new({
    id = id.from(_N, "ListAutoScalingConfigurationsResponse"),
    type = "structure",
    members = {
        AutoScalingConfigurationSummaryList = schema.new({
            id = id.from(_N, "ListAutoScalingConfigurationsOutput", "AutoScalingConfigurationSummaryList"),
            type = "list",
            name = "AutoScalingConfigurationSummaryList",
            target_id = prelude.Document.id,
            list_member = M.AutoScalingConfigurationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAutoScalingConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectionsInput = schema.new({
    id = id.from(_N, "ListConnectionsRequest"),
    type = "structure",
    members = {
        ConnectionName = schema.new({
            id = id.from(_N, "ListConnectionsInput", "ConnectionName"),
            type = "string",
            name = "ConnectionName",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConnectionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectionSummary = schema.new({
    id = id.from(_N, "ConnectionSummary"),
    type = "structure",
    members = {
        ConnectionName = schema.new({
            id = id.from(_N, "ConnectionSummary", "ConnectionName"),
            type = "string",
            name = "ConnectionName",
            target_id = prelude.String.id,
        }),
        ConnectionArn = schema.new({
            id = id.from(_N, "ConnectionSummary", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
        }),
        ProviderType = schema.new({
            id = id.from(_N, "ConnectionSummary", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ConnectionSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "ConnectionSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListConnectionsOutput = schema.new({
    id = id.from(_N, "ListConnectionsResponse"),
    type = "structure",
    members = {
        ConnectionSummaryList = schema.new({
            id = id.from(_N, "ListConnectionsOutput", "ConnectionSummaryList"),
            type = "list",
            name = "ConnectionSummaryList",
            target_id = prelude.Document.id,
            list_member = M.ConnectionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListObservabilityConfigurationsInput = schema.new({
    id = id.from(_N, "ListObservabilityConfigurationsRequest"),
    type = "structure",
    members = {
        ObservabilityConfigurationName = schema.new({
            id = id.from(_N, "ListObservabilityConfigurationsInput", "ObservabilityConfigurationName"),
            type = "string",
            name = "ObservabilityConfigurationName",
            target_id = prelude.String.id,
        }),
        LatestOnly = schema.new({
            id = id.from(_N, "ListObservabilityConfigurationsInput", "LatestOnly"),
            type = "boolean",
            name = "LatestOnly",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListObservabilityConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListObservabilityConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ObservabilityConfigurationSummary = schema.new({
    id = id.from(_N, "ObservabilityConfigurationSummary"),
    type = "structure",
    members = {
        ObservabilityConfigurationArn = schema.new({
            id = id.from(_N, "ObservabilityConfigurationSummary", "ObservabilityConfigurationArn"),
            type = "string",
            name = "ObservabilityConfigurationArn",
            target_id = prelude.String.id,
        }),
        ObservabilityConfigurationName = schema.new({
            id = id.from(_N, "ObservabilityConfigurationSummary", "ObservabilityConfigurationName"),
            type = "string",
            name = "ObservabilityConfigurationName",
            target_id = prelude.String.id,
        }),
        ObservabilityConfigurationRevision = schema.new({
            id = id.from(_N, "ObservabilityConfigurationSummary", "ObservabilityConfigurationRevision"),
            type = "integer",
            name = "ObservabilityConfigurationRevision",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListObservabilityConfigurationsOutput = schema.new({
    id = id.from(_N, "ListObservabilityConfigurationsResponse"),
    type = "structure",
    members = {
        ObservabilityConfigurationSummaryList = schema.new({
            id = id.from(_N, "ListObservabilityConfigurationsOutput", "ObservabilityConfigurationSummaryList"),
            type = "list",
            name = "ObservabilityConfigurationSummaryList",
            target_id = prelude.Document.id,
            list_member = M.ObservabilityConfigurationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListObservabilityConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOperationsInput = schema.new({
    id = id.from(_N, "ListOperationsRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "ListOperationsInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
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
        Type = schema.new({
            id = id.from(_N, "OperationSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "OperationSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        TargetArn = schema.new({
            id = id.from(_N, "OperationSummary", "TargetArn"),
            type = "string",
            name = "TargetArn",
            target_id = prelude.String.id,
        }),
        StartedAt = schema.new({
            id = id.from(_N, "OperationSummary", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
        }),
        EndedAt = schema.new({
            id = id.from(_N, "OperationSummary", "EndedAt"),
            type = "timestamp",
            name = "EndedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "OperationSummary", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListOperationsOutput = schema.new({
    id = id.from(_N, "ListOperationsResponse"),
    type = "structure",
    members = {
        OperationSummaryList = schema.new({
            id = id.from(_N, "ListOperationsOutput", "OperationSummaryList"),
            type = "list",
            name = "OperationSummaryList",
            target_id = prelude.Document.id,
            list_member = M.OperationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOperationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
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
    },
})

M.ServiceSummary = schema.new({
    id = id.from(_N, "ServiceSummary"),
    type = "structure",
    members = {
        ServiceName = schema.new({
            id = id.from(_N, "ServiceSummary", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        ServiceId = schema.new({
            id = id.from(_N, "ServiceSummary", "ServiceId"),
            type = "string",
            name = "ServiceId",
            target_id = prelude.String.id,
        }),
        ServiceArn = schema.new({
            id = id.from(_N, "ServiceSummary", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
        }),
        ServiceUrl = schema.new({
            id = id.from(_N, "ServiceSummary", "ServiceUrl"),
            type = "string",
            name = "ServiceUrl",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "ServiceSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "ServiceSummary", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ServiceSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServicesOutput = schema.new({
    id = id.from(_N, "ListServicesResponse"),
    type = "structure",
    members = {
        ServiceSummaryList = schema.new({
            id = id.from(_N, "ListServicesOutput", "ServiceSummaryList"),
            type = "list",
            name = "ServiceSummaryList",
            target_id = prelude.Document.id,
            list_member = M.ServiceSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServicesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServicesForAutoScalingConfigurationInput = schema.new({
    id = id.from(_N, "ListServicesForAutoScalingConfigurationRequest"),
    type = "structure",
    members = {
        AutoScalingConfigurationArn = schema.new({
            id = id.from(_N, "ListServicesForAutoScalingConfigurationInput", "AutoScalingConfigurationArn"),
            type = "string",
            name = "AutoScalingConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListServicesForAutoScalingConfigurationInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServicesForAutoScalingConfigurationInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServicesForAutoScalingConfigurationOutput = schema.new({
    id = id.from(_N, "ListServicesForAutoScalingConfigurationResponse"),
    type = "structure",
    members = {
        ServiceArnList = schema.new({
            id = id.from(_N, "ListServicesForAutoScalingConfigurationOutput", "ServiceArnList"),
            type = "list",
            name = "ServiceArnList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServicesForAutoScalingConfigurationOutput", "NextToken"),
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
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
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

M.ListVpcConnectorsInput = schema.new({
    id = id.from(_N, "ListVpcConnectorsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListVpcConnectorsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVpcConnectorsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVpcConnectorsOutput = schema.new({
    id = id.from(_N, "ListVpcConnectorsResponse"),
    type = "structure",
    members = {
        VpcConnectors = schema.new({
            id = id.from(_N, "ListVpcConnectorsOutput", "VpcConnectors"),
            type = "list",
            name = "VpcConnectors",
            target_id = prelude.Document.id,
            list_member = M.VpcConnector,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVpcConnectorsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVpcIngressConnectionsFilter = schema.new({
    id = id.from(_N, "ListVpcIngressConnectionsFilter"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "ListVpcIngressConnectionsFilter", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
        }),
        VpcEndpointId = schema.new({
            id = id.from(_N, "ListVpcIngressConnectionsFilter", "VpcEndpointId"),
            type = "string",
            name = "VpcEndpointId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVpcIngressConnectionsInput = schema.new({
    id = id.from(_N, "ListVpcIngressConnectionsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListVpcIngressConnectionsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "ListVpcIngressConnectionsFilter"),
            target = M.ListVpcIngressConnectionsFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListVpcIngressConnectionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVpcIngressConnectionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.VpcIngressConnectionSummary = schema.new({
    id = id.from(_N, "VpcIngressConnectionSummary"),
    type = "structure",
    members = {
        VpcIngressConnectionArn = schema.new({
            id = id.from(_N, "VpcIngressConnectionSummary", "VpcIngressConnectionArn"),
            type = "string",
            name = "VpcIngressConnectionArn",
            target_id = prelude.String.id,
        }),
        ServiceArn = schema.new({
            id = id.from(_N, "VpcIngressConnectionSummary", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVpcIngressConnectionsOutput = schema.new({
    id = id.from(_N, "ListVpcIngressConnectionsResponse"),
    type = "structure",
    members = {
        VpcIngressConnectionSummaryList = schema.new({
            id = id.from(_N, "ListVpcIngressConnectionsOutput", "VpcIngressConnectionSummaryList"),
            type = "list",
            name = "VpcIngressConnectionSummaryList",
            target_id = prelude.Document.id,
            list_member = M.VpcIngressConnectionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVpcIngressConnectionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PauseServiceInput = schema.new({
    id = id.from(_N, "PauseServiceRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "PauseServiceInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PauseServiceOutput = schema.new({
    id = id.from(_N, "PauseServiceResponse"),
    type = "structure",
    members = {
        Service = schema.new({
            id = id.from(_N, "PauseServiceOutput", "Service"),
            type = "structure",
            name = "Service",
            target_id = id.from(_N, "Service"),
            target = M.Service,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OperationId = schema.new({
            id = id.from(_N, "PauseServiceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResumeServiceInput = schema.new({
    id = id.from(_N, "ResumeServiceRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "ResumeServiceInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResumeServiceOutput = schema.new({
    id = id.from(_N, "ResumeServiceResponse"),
    type = "structure",
    members = {
        Service = schema.new({
            id = id.from(_N, "ResumeServiceOutput", "Service"),
            type = "structure",
            name = "Service",
            target_id = id.from(_N, "Service"),
            target = M.Service,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OperationId = schema.new({
            id = id.from(_N, "ResumeServiceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartDeploymentInput = schema.new({
    id = id.from(_N, "StartDeploymentRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "StartDeploymentInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartDeploymentOutput = schema.new({
    id = id.from(_N, "StartDeploymentResponse"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
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
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
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

M.UpdateDefaultAutoScalingConfigurationInput = schema.new({
    id = id.from(_N, "UpdateDefaultAutoScalingConfigurationRequest"),
    type = "structure",
    members = {
        AutoScalingConfigurationArn = schema.new({
            id = id.from(_N, "UpdateDefaultAutoScalingConfigurationInput", "AutoScalingConfigurationArn"),
            type = "string",
            name = "AutoScalingConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDefaultAutoScalingConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateDefaultAutoScalingConfigurationResponse"),
    type = "structure",
    members = {
        AutoScalingConfiguration = schema.new({
            id = id.from(_N, "UpdateDefaultAutoScalingConfigurationOutput", "AutoScalingConfiguration"),
            type = "structure",
            name = "AutoScalingConfiguration",
            target_id = id.from(_N, "AutoScalingConfiguration"),
            target = M.AutoScalingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateServiceInput = schema.new({
    id = id.from(_N, "UpdateServiceRequest"),
    type = "structure",
    members = {
        ServiceArn = schema.new({
            id = id.from(_N, "UpdateServiceInput", "ServiceArn"),
            type = "string",
            name = "ServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceConfiguration = schema.new({
            id = id.from(_N, "UpdateServiceInput", "SourceConfiguration"),
            type = "structure",
            name = "SourceConfiguration",
            target_id = id.from(_N, "SourceConfiguration"),
            target = M.SourceConfiguration,
        }),
        InstanceConfiguration = schema.new({
            id = id.from(_N, "UpdateServiceInput", "InstanceConfiguration"),
            type = "structure",
            name = "InstanceConfiguration",
            target_id = id.from(_N, "InstanceConfiguration"),
            target = M.InstanceConfiguration,
        }),
        AutoScalingConfigurationArn = schema.new({
            id = id.from(_N, "UpdateServiceInput", "AutoScalingConfigurationArn"),
            type = "string",
            name = "AutoScalingConfigurationArn",
            target_id = prelude.String.id,
        }),
        HealthCheckConfiguration = schema.new({
            id = id.from(_N, "UpdateServiceInput", "HealthCheckConfiguration"),
            type = "structure",
            name = "HealthCheckConfiguration",
            target_id = id.from(_N, "HealthCheckConfiguration"),
            target = M.HealthCheckConfiguration,
        }),
        NetworkConfiguration = schema.new({
            id = id.from(_N, "UpdateServiceInput", "NetworkConfiguration"),
            type = "structure",
            name = "NetworkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
        }),
        ObservabilityConfiguration = schema.new({
            id = id.from(_N, "UpdateServiceInput", "ObservabilityConfiguration"),
            type = "structure",
            name = "ObservabilityConfiguration",
            target_id = id.from(_N, "ServiceObservabilityConfiguration"),
            target = M.ServiceObservabilityConfiguration,
        }),
    },
})

M.UpdateServiceOutput = schema.new({
    id = id.from(_N, "UpdateServiceResponse"),
    type = "structure",
    members = {
        Service = schema.new({
            id = id.from(_N, "UpdateServiceOutput", "Service"),
            type = "structure",
            name = "Service",
            target_id = id.from(_N, "Service"),
            target = M.Service,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OperationId = schema.new({
            id = id.from(_N, "UpdateServiceOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateVpcIngressConnectionInput = schema.new({
    id = id.from(_N, "UpdateVpcIngressConnectionRequest"),
    type = "structure",
    members = {
        VpcIngressConnectionArn = schema.new({
            id = id.from(_N, "UpdateVpcIngressConnectionInput", "VpcIngressConnectionArn"),
            type = "string",
            name = "VpcIngressConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IngressVpcConfiguration = schema.new({
            id = id.from(_N, "UpdateVpcIngressConnectionInput", "IngressVpcConfiguration"),
            type = "structure",
            name = "IngressVpcConfiguration",
            target_id = id.from(_N, "IngressVpcConfiguration"),
            target = M.IngressVpcConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateVpcIngressConnectionOutput = schema.new({
    id = id.from(_N, "UpdateVpcIngressConnectionResponse"),
    type = "structure",
    members = {
        VpcIngressConnection = schema.new({
            id = id.from(_N, "UpdateVpcIngressConnectionOutput", "VpcIngressConnection"),
            type = "structure",
            name = "VpcIngressConnection",
            target_id = id.from(_N, "VpcIngressConnection"),
            target = M.VpcIngressConnection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
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
