local M = {}

M.AccessLog = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AdditionalAttribute = {
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
        },
    },
}

M.AddTagsInput = {
    type = "structure",
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
}

M.DuplicateTagKeysException = {
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
    },
}

M.AppCookieStickinessPolicy = {
    type = "structure",
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
    members = {
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InvalidConfigurationRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSecurityGroupException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttachLoadBalancerToSubnetsInput = {
    type = "structure",
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
    members = {
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InvalidSubnetException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SubnetNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BackendServerDescription = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HealthCheck = {
    type = "structure",
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
    members = {
        HealthCheck = M.HealthCheck,
    },
}

M.ConnectionDraining = {
    type = "structure",
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
}

M.DuplicatePolicyNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyPoliciesException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateLBCookieStickinessPolicyInput = {
    type = "structure",
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
}

M.Listener = {
    type = "structure",
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
    members = {
        DNSName = {
            type = "string",
        },
    },
}

M.DuplicateAccessPointNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSchemeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationNotPermittedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyAccessPointsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedProtocolException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateLoadBalancerListenersInput = {
    type = "structure",
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
}

M.DuplicateListenerException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyAttribute = {
    type = "structure",
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
}

M.PolicyTypeNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CrossZoneLoadBalancing = {
    type = "structure",
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
}

M.DeleteLoadBalancerListenersInput = {
    type = "structure",
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
}

M.DeleteLoadBalancerPolicyInput = {
    type = "structure",
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
}

M.DependencyThrottleException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Instance = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
        },
    },
}

M.DeregisterInstancesFromLoadBalancerInput = {
    type = "structure",
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
    members = {
        Instances = {
            type = "list",
            member = M.Instance,
        },
    },
}

M.InvalidEndPointException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeAccountLimitsInput = {
    type = "structure",
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
    members = {
        InstanceStates = {
            type = "list",
            member = M.InstanceState,
        },
    },
}

M.DescribeLoadBalancerAttributesInput = {
    type = "structure",
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
    members = {
        LoadBalancerAttributes = M.LoadBalancerAttributes,
    },
}

M.LoadBalancerAttributeNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancerPoliciesInput = {
    type = "structure",
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
    members = {
        PolicyDescriptions = {
            type = "list",
            member = M.PolicyDescription,
        },
    },
}

M.PolicyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancerPolicyTypesInput = {
    type = "structure",
    members = {
        PolicyTypeNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PolicyAttributeTypeDescription = {
    type = "structure",
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
    members = {
        PolicyTypeDescriptions = {
            type = "list",
            member = M.PolicyTypeDescription,
        },
    },
}

M.DescribeLoadBalancersInput = {
    type = "structure",
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
    members = {
        TagDescriptions = {
            type = "list",
            member = M.TagDescription,
        },
    },
}

M.DetachLoadBalancerFromSubnetsInput = {
    type = "structure",
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
    members = {
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DisableAvailabilityZonesForLoadBalancerInput = {
    type = "structure",
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
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EnableAvailabilityZonesForLoadBalancerInput = {
    type = "structure",
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
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyLoadBalancerAttributesInput = {
    type = "structure",
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
    members = {
        LoadBalancerName = {
            type = "string",
        },
        LoadBalancerAttributes = M.LoadBalancerAttributes,
    },
}

M.RegisterInstancesWithLoadBalancerInput = {
    type = "structure",
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
    members = {
        Instances = {
            type = "list",
            member = M.Instance,
        },
    },
}

M.TagKeyOnly = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
    },
}

M.RemoveTagsInput = {
    type = "structure",
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

M.SetLoadBalancerListenerSSLCertificateInput = {
    type = "structure",
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
}

M.SetLoadBalancerPoliciesForBackendServerInput = {
    type = "structure",
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
}

M.SetLoadBalancerPoliciesOfListenerInput = {
    type = "structure",
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
}

return M
