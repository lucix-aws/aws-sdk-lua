local M = {}

M.AccessLog = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        S3BucketName = {
            type = "string",
        },
        EmitInterval = {
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            type = "number",
        },
        PolicyNames = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Timeout = {
            type = "number",
            traits = {
                required = true,
            },
        },
        UnhealthyThreshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
        HealthyThreshold = {
            type = "number",
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
        HealthCheck = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigureHealthCheckOutput = {
    type = "structure",
    members = {
        HealthCheck = {
            type = "structure",
        },
    },
}

M.ConnectionDraining = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Timeout = {
            type = "number",
        },
    },
}

M.ConnectionSettings = {
    type = "structure",
    members = {
        IdleTimeout = {
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        InstanceProtocol = {
            type = "string",
        },
        InstancePort = {
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        Subnets = {
            type = "list",
            member_type = "string",
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
        Scheme = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        CrossZoneLoadBalancing = {
            type = "structure",
        },
        AccessLog = {
            type = "structure",
        },
        ConnectionDraining = {
            type = "structure",
        },
        ConnectionSettings = {
            type = "structure",
        },
        AdditionalAttributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeLoadBalancerAttributesOutput = {
    type = "structure",
    members = {
        LoadBalancerAttributes = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.DescribeLoadBalancerPoliciesOutput = {
    type = "structure",
    members = {
        PolicyDescriptions = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.DescribeLoadBalancerPolicyTypesOutput = {
    type = "structure",
    members = {
        PolicyTypeDescriptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeLoadBalancersInput = {
    type = "structure",
    members = {
        LoadBalancerNames = {
            type = "list",
            member_type = "string",
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.ListenerDescription = {
    type = "structure",
    members = {
        Listener = {
            type = "structure",
        },
        PolicyNames = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
    },
}

M.Policies = {
    type = "structure",
    members = {
        AppCookieStickinessPolicies = {
            type = "list",
            member_type = "structure",
        },
        LBCookieStickinessPolicies = {
            type = "list",
            member_type = "structure",
        },
        OtherPolicies = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        Policies = {
            type = "structure",
        },
        BackendServerDescriptions = {
            type = "list",
            member_type = "structure",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        Subnets = {
            type = "list",
            member_type = "string",
        },
        VPCId = {
            type = "string",
        },
        Instances = {
            type = "list",
            member_type = "structure",
        },
        HealthCheck = {
            type = "structure",
        },
        SourceSecurityGroup = {
            type = "structure",
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    members = {
        TagDescriptions = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
        LoadBalancerAttributes = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyLoadBalancerAttributesOutput = {
    type = "structure",
    members = {
        LoadBalancerName = {
            type = "string",
        },
        LoadBalancerAttributes = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
                required = true,
            },
        },
        PolicyNames = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        PolicyNames = {
            type = "list",
            member_type = "string",
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
