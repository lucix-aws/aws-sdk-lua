local M = {}

M.AccessLog = {
    type = "structure",
    id = "AccessLog",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        S3BucketName = {
            type = "string",
        },
        EmitInterval = {
            type = "integer",
        },
        S3BucketPrefix = {
            type = "string",
        },
    },
}

M.AccessPointNotFoundException = {
    type = "structure",
    id = "AccessPointNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AdditionalAttribute = {
    type = "structure",
    id = "AdditionalAttribute",
    members = {
        Key = {
            type = "string",
        },
        Value = {
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
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.AddTagsInput = {
    type = "structure",
    id = "AddTagsInput",
    members = {
        LoadBalancerNames = {
            type = "list",
            member = { type = "string" },
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

M.AddTagsOutput = {
    type = "structure",
    id = "AddTagsOutput",
}

M.DuplicateTagKeysException = {
    type = "structure",
    id = "DuplicateTagKeysException",
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
    },
}

M.AppCookieStickinessPolicy = {
    type = "structure",
    id = "AppCookieStickinessPolicy",
    members = {
        PolicyName = {
            type = "string",
        },
        CookieName = {
            type = "string",
        },
    },
}

M.ApplySecurityGroupsToLoadBalancerInput = {
    type = "structure",
    id = "ApplySecurityGroupsToLoadBalancerInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ApplySecurityGroupsToLoadBalancerOutput = {
    type = "structure",
    id = "ApplySecurityGroupsToLoadBalancerOutput",
    members = {
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InvalidConfigurationRequestException = {
    type = "structure",
    id = "InvalidConfigurationRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSecurityGroupException = {
    type = "structure",
    id = "InvalidSecurityGroupException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttachLoadBalancerToSubnetsInput = {
    type = "structure",
    id = "AttachLoadBalancerToSubnetsInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AttachLoadBalancerToSubnetsOutput = {
    type = "structure",
    id = "AttachLoadBalancerToSubnetsOutput",
    members = {
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InvalidSubnetException = {
    type = "structure",
    id = "InvalidSubnetException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SubnetNotFoundException = {
    type = "structure",
    id = "SubnetNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BackendServerDescription = {
    type = "structure",
    id = "BackendServerDescription",
    members = {
        InstancePort = {
            type = "integer",
        },
        PolicyNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CertificateNotFoundException = {
    type = "structure",
    id = "CertificateNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HealthCheck = {
    type = "structure",
    id = "HealthCheck",
    members = {
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Interval = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Timeout = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        UnhealthyThreshold = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        HealthyThreshold = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigureHealthCheckInput = {
    type = "structure",
    id = "ConfigureHealthCheckInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthCheck = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HealthCheck }),
    },
}

M.ConfigureHealthCheckOutput = {
    type = "structure",
    id = "ConfigureHealthCheckOutput",
    members = {
        HealthCheck = M.HealthCheck,
    },
}

M.ConnectionDraining = {
    type = "structure",
    id = "ConnectionDraining",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        Timeout = {
            type = "integer",
        },
    },
}

M.ConnectionSettings = {
    type = "structure",
    id = "ConnectionSettings",
    members = {
        IdleTimeout = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAppCookieStickinessPolicyInput = {
    type = "structure",
    id = "CreateAppCookieStickinessPolicyInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CookieName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAppCookieStickinessPolicyOutput = {
    type = "structure",
    id = "CreateAppCookieStickinessPolicyOutput",
}

M.DuplicatePolicyNameException = {
    type = "structure",
    id = "DuplicatePolicyNameException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyPoliciesException = {
    type = "structure",
    id = "TooManyPoliciesException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateLBCookieStickinessPolicyInput = {
    type = "structure",
    id = "CreateLBCookieStickinessPolicyInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CookieExpirationPeriod = {
            type = "long",
        },
    },
}

M.CreateLBCookieStickinessPolicyOutput = {
    type = "structure",
    id = "CreateLBCookieStickinessPolicyOutput",
}

M.Listener = {
    type = "structure",
    id = "Listener",
    members = {
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoadBalancerPort = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        InstanceProtocol = {
            type = "string",
        },
        InstancePort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        SSLCertificateId = {
            type = "string",
        },
    },
}

M.CreateLoadBalancerInput = {
    type = "structure",
    id = "CreateLoadBalancerInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Listeners = {
            type = "list",
            member = M.Listener,
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        Scheme = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateLoadBalancerOutput = {
    type = "structure",
    id = "CreateLoadBalancerOutput",
    members = {
        DNSName = {
            type = "string",
        },
    },
}

M.DuplicateAccessPointNameException = {
    type = "structure",
    id = "DuplicateAccessPointNameException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSchemeException = {
    type = "structure",
    id = "InvalidSchemeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationNotPermittedException = {
    type = "structure",
    id = "OperationNotPermittedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyAccessPointsException = {
    type = "structure",
    id = "TooManyAccessPointsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedProtocolException = {
    type = "structure",
    id = "UnsupportedProtocolException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateLoadBalancerListenersInput = {
    type = "structure",
    id = "CreateLoadBalancerListenersInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Listeners = {
            type = "list",
            member = M.Listener,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLoadBalancerListenersOutput = {
    type = "structure",
    id = "CreateLoadBalancerListenersOutput",
}

M.DuplicateListenerException = {
    type = "structure",
    id = "DuplicateListenerException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyAttribute = {
    type = "structure",
    id = "PolicyAttribute",
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeValue = {
            type = "string",
        },
    },
}

M.CreateLoadBalancerPolicyInput = {
    type = "structure",
    id = "CreateLoadBalancerPolicyInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyAttributes = {
            type = "list",
            member = M.PolicyAttribute,
        },
    },
}

M.CreateLoadBalancerPolicyOutput = {
    type = "structure",
    id = "CreateLoadBalancerPolicyOutput",
}

M.PolicyTypeNotFoundException = {
    type = "structure",
    id = "PolicyTypeNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CrossZoneLoadBalancing = {
    type = "structure",
    id = "CrossZoneLoadBalancing",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.DeleteLoadBalancerInput = {
    type = "structure",
    id = "DeleteLoadBalancerInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLoadBalancerOutput = {
    type = "structure",
    id = "DeleteLoadBalancerOutput",
}

M.DeleteLoadBalancerListenersInput = {
    type = "structure",
    id = "DeleteLoadBalancerListenersInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoadBalancerPorts = {
            type = "list",
            member = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLoadBalancerListenersOutput = {
    type = "structure",
    id = "DeleteLoadBalancerListenersOutput",
}

M.DeleteLoadBalancerPolicyInput = {
    type = "structure",
    id = "DeleteLoadBalancerPolicyInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLoadBalancerPolicyOutput = {
    type = "structure",
    id = "DeleteLoadBalancerPolicyOutput",
}

M.DependencyThrottleException = {
    type = "structure",
    id = "DependencyThrottleException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Instance = {
    type = "structure",
    id = "Instance",
    members = {
        InstanceId = {
            type = "string",
        },
    },
}

M.DeregisterInstancesFromLoadBalancerInput = {
    type = "structure",
    id = "DeregisterInstancesFromLoadBalancerInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Instances = {
            type = "list",
            member = M.Instance,
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterInstancesFromLoadBalancerOutput = {
    type = "structure",
    id = "DeregisterInstancesFromLoadBalancerOutput",
    members = {
        Instances = {
            type = "list",
            member = M.Instance,
        },
    },
}

M.InvalidEndPointException = {
    type = "structure",
    id = "InvalidEndPointException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeAccountLimitsInput = {
    type = "structure",
    id = "DescribeAccountLimitsInput",
    members = {
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.Limit = {
    type = "structure",
    id = "Limit",
    members = {
        Name = {
            type = "string",
        },
        Max = {
            type = "string",
        },
    },
}

M.DescribeAccountLimitsOutput = {
    type = "structure",
    id = "DescribeAccountLimitsOutput",
    members = {
        Limits = {
            type = "list",
            member = M.Limit,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeInstanceHealthInput = {
    type = "structure",
    id = "DescribeInstanceHealthInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Instances = {
            type = "list",
            member = M.Instance,
        },
    },
}

M.InstanceState = {
    type = "structure",
    id = "InstanceState",
    members = {
        InstanceId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ReasonCode = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.DescribeInstanceHealthOutput = {
    type = "structure",
    id = "DescribeInstanceHealthOutput",
    members = {
        InstanceStates = {
            type = "list",
            member = M.InstanceState,
        },
    },
}

M.DescribeLoadBalancerAttributesInput = {
    type = "structure",
    id = "DescribeLoadBalancerAttributesInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoadBalancerAttributes = {
    type = "structure",
    id = "LoadBalancerAttributes",
    members = {
        CrossZoneLoadBalancing = M.CrossZoneLoadBalancing,
        AccessLog = M.AccessLog,
        ConnectionDraining = M.ConnectionDraining,
        ConnectionSettings = M.ConnectionSettings,
        AdditionalAttributes = {
            type = "list",
            member = M.AdditionalAttribute,
        },
    },
}

M.DescribeLoadBalancerAttributesOutput = {
    type = "structure",
    id = "DescribeLoadBalancerAttributesOutput",
    members = {
        LoadBalancerAttributes = M.LoadBalancerAttributes,
    },
}

M.LoadBalancerAttributeNotFoundException = {
    type = "structure",
    id = "LoadBalancerAttributeNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancerPoliciesInput = {
    type = "structure",
    id = "DescribeLoadBalancerPoliciesInput",
    members = {
        LoadBalancerName = {
            type = "string",
        },
        PolicyNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PolicyAttributeDescription = {
    type = "structure",
    id = "PolicyAttributeDescription",
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeValue = {
            type = "string",
        },
    },
}

M.PolicyDescription = {
    type = "structure",
    id = "PolicyDescription",
    members = {
        PolicyName = {
            type = "string",
        },
        PolicyTypeName = {
            type = "string",
        },
        PolicyAttributeDescriptions = {
            type = "list",
            member = M.PolicyAttributeDescription,
        },
    },
}

M.DescribeLoadBalancerPoliciesOutput = {
    type = "structure",
    id = "DescribeLoadBalancerPoliciesOutput",
    members = {
        PolicyDescriptions = {
            type = "list",
            member = M.PolicyDescription,
        },
    },
}

M.PolicyNotFoundException = {
    type = "structure",
    id = "PolicyNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancerPolicyTypesInput = {
    type = "structure",
    id = "DescribeLoadBalancerPolicyTypesInput",
    members = {
        PolicyTypeNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PolicyAttributeTypeDescription = {
    type = "structure",
    id = "PolicyAttributeTypeDescription",
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
        Cardinality = {
            type = "string",
        },
    },
}

M.PolicyTypeDescription = {
    type = "structure",
    id = "PolicyTypeDescription",
    members = {
        PolicyTypeName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        PolicyAttributeTypeDescriptions = {
            type = "list",
            member = M.PolicyAttributeTypeDescription,
        },
    },
}

M.DescribeLoadBalancerPolicyTypesOutput = {
    type = "structure",
    id = "DescribeLoadBalancerPolicyTypesOutput",
    members = {
        PolicyTypeDescriptions = {
            type = "list",
            member = M.PolicyTypeDescription,
        },
    },
}

M.DescribeLoadBalancersInput = {
    type = "structure",
    id = "DescribeLoadBalancersInput",
    members = {
        LoadBalancerNames = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.ListenerDescription = {
    type = "structure",
    id = "ListenerDescription",
    members = {
        Listener = M.Listener,
        PolicyNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LBCookieStickinessPolicy = {
    type = "structure",
    id = "LBCookieStickinessPolicy",
    members = {
        PolicyName = {
            type = "string",
        },
        CookieExpirationPeriod = {
            type = "long",
        },
    },
}

M.Policies = {
    type = "structure",
    id = "Policies",
    members = {
        AppCookieStickinessPolicies = {
            type = "list",
            member = M.AppCookieStickinessPolicy,
        },
        LBCookieStickinessPolicies = {
            type = "list",
            member = M.LBCookieStickinessPolicy,
        },
        OtherPolicies = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SourceSecurityGroup = {
    type = "structure",
    id = "SourceSecurityGroup",
    members = {
        OwnerAlias = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
    },
}

M.LoadBalancerDescription = {
    type = "structure",
    id = "LoadBalancerDescription",
    members = {
        LoadBalancerName = {
            type = "string",
        },
        DNSName = {
            type = "string",
        },
        CanonicalHostedZoneName = {
            type = "string",
        },
        CanonicalHostedZoneNameID = {
            type = "string",
        },
        ListenerDescriptions = {
            type = "list",
            member = M.ListenerDescription,
        },
        Policies = M.Policies,
        BackendServerDescriptions = {
            type = "list",
            member = M.BackendServerDescription,
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
        VPCId = {
            type = "string",
        },
        Instances = {
            type = "list",
            member = M.Instance,
        },
        HealthCheck = M.HealthCheck,
        SourceSecurityGroup = M.SourceSecurityGroup,
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        CreatedTime = {
            type = "timestamp",
        },
        Scheme = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancersOutput = {
    type = "structure",
    id = "DescribeLoadBalancersOutput",
    members = {
        LoadBalancerDescriptions = {
            type = "list",
            member = M.LoadBalancerDescription,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    id = "DescribeTagsInput",
    members = {
        LoadBalancerNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagDescription = {
    type = "structure",
    id = "TagDescription",
    members = {
        LoadBalancerName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    id = "DescribeTagsOutput",
    members = {
        TagDescriptions = {
            type = "list",
            member = M.TagDescription,
        },
    },
}

M.DetachLoadBalancerFromSubnetsInput = {
    type = "structure",
    id = "DetachLoadBalancerFromSubnetsInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DetachLoadBalancerFromSubnetsOutput = {
    type = "structure",
    id = "DetachLoadBalancerFromSubnetsOutput",
    members = {
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DisableAvailabilityZonesForLoadBalancerInput = {
    type = "structure",
    id = "DisableAvailabilityZonesForLoadBalancerInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisableAvailabilityZonesForLoadBalancerOutput = {
    type = "structure",
    id = "DisableAvailabilityZonesForLoadBalancerOutput",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EnableAvailabilityZonesForLoadBalancerInput = {
    type = "structure",
    id = "EnableAvailabilityZonesForLoadBalancerInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EnableAvailabilityZonesForLoadBalancerOutput = {
    type = "structure",
    id = "EnableAvailabilityZonesForLoadBalancerOutput",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyLoadBalancerAttributesInput = {
    type = "structure",
    id = "ModifyLoadBalancerAttributesInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoadBalancerAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoadBalancerAttributes }),
    },
}

M.ModifyLoadBalancerAttributesOutput = {
    type = "structure",
    id = "ModifyLoadBalancerAttributesOutput",
    members = {
        LoadBalancerName = {
            type = "string",
        },
        LoadBalancerAttributes = M.LoadBalancerAttributes,
    },
}

M.RegisterInstancesWithLoadBalancerInput = {
    type = "structure",
    id = "RegisterInstancesWithLoadBalancerInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Instances = {
            type = "list",
            member = M.Instance,
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterInstancesWithLoadBalancerOutput = {
    type = "structure",
    id = "RegisterInstancesWithLoadBalancerOutput",
    members = {
        Instances = {
            type = "list",
            member = M.Instance,
        },
    },
}

M.TagKeyOnly = {
    type = "structure",
    id = "TagKeyOnly",
    members = {
        Key = {
            type = "string",
        },
    },
}

M.RemoveTagsInput = {
    type = "structure",
    id = "RemoveTagsInput",
    members = {
        LoadBalancerNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.TagKeyOnly,
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTagsOutput = {
    type = "structure",
    id = "RemoveTagsOutput",
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

M.SetLoadBalancerListenerSSLCertificateInput = {
    type = "structure",
    id = "SetLoadBalancerListenerSSLCertificateInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoadBalancerPort = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        SSLCertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetLoadBalancerListenerSSLCertificateOutput = {
    type = "structure",
    id = "SetLoadBalancerListenerSSLCertificateOutput",
}

M.SetLoadBalancerPoliciesForBackendServerInput = {
    type = "structure",
    id = "SetLoadBalancerPoliciesForBackendServerInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstancePort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PolicyNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SetLoadBalancerPoliciesForBackendServerOutput = {
    type = "structure",
    id = "SetLoadBalancerPoliciesForBackendServerOutput",
}

M.SetLoadBalancerPoliciesOfListenerInput = {
    type = "structure",
    id = "SetLoadBalancerPoliciesOfListenerInput",
    members = {
        LoadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoadBalancerPort = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        PolicyNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SetLoadBalancerPoliciesOfListenerOutput = {
    type = "structure",
    id = "SetLoadBalancerPoliciesOfListenerOutput",
}

return M
