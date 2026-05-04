local M = {}

M.AssociateEipToVlanInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allocationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EipAssociation = {
    type = "structure",
    members = {
        associationId = {
            type = "string",
        },
        allocationId = {
            type = "string",
        },
        ipAddress = {
            type = "string",
        },
    },
}

M.VlanState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    CREATE_FAILED = "CREATE_FAILED",
}

M.Vlan = {
    type = "structure",
    members = {
        vlanId = {
            type = "number",
        },
        cidr = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        functionName = {
            type = "string",
        },
        subnetId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        vlanState = {
            type = "string",
        },
        stateDetails = {
            type = "string",
        },
        eipAssociations = {
            type = "list",
            member_type = "structure",
        },
        isPublic = {
            type = "boolean",
        },
        networkAclId = {
            type = "string",
        },
    },
}

M.AssociateEipToVlanOutput = {
    type = "structure",
    members = {
        vlan = {
            type = "structure",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EntitlementType = {
    WINDOWS_SERVER = "WINDOWS_SERVER",
}

M.CreateEntitlementInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entitlementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vmIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorDetail = {
    type = "structure",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EntitlementStatus = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETED = "DELETED",
    AT_RISK = "AT_RISK",
    ENTITLEMENT_REMOVED = "ENTITLEMENT_REMOVED",
    CREATE_FAILED = "CREATE_FAILED",
}

M.VmEntitlement = {
    type = "structure",
    members = {
        vmId = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        connectorId = {
            type = "string",
        },
        vmName = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        lastSyncedAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        stoppedAt = {
            type = "timestamp",
        },
        errorDetail = {
            type = "structure",
        },
    },
}

M.CreateEntitlementOutput = {
    type = "structure",
    members = {
        entitlements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConnectivityInfo = {
    type = "structure",
    members = {
        privateRouteServerPeerings = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceType = {
    I4I_METAL = "i4i.metal",
    I7I_METAL_24XL = "i7i.metal-24xl",
}

M.HostInfoForCreate = {
    type = "structure",
    members = {
        hostName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        placementGroupId = {
            type = "string",
        },
        dedicatedHostId = {
            type = "string",
        },
    },
}

M.InitialVlanInfo = {
    type = "structure",
    members = {
        cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InitialVlans = {
    type = "structure",
    members = {
        vmkManagement = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        vmManagement = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        vMotion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        vSan = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        vTep = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        edgeVTep = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        nsxUplink = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        hcx = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        expansionVlan1 = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        expansionVlan2 = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        isHcxPublic = {
            type = "boolean",
        },
        hcxNetworkAclId = {
            type = "string",
        },
    },
}

M.LicenseInfo = {
    type = "structure",
    members = {
        solutionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vsanKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceAccessSecurityGroups = {
    type = "structure",
    members = {
        securityGroups = {
            type = "list",
            member_type = "string",
        },
    },
}

M.VcfHostnames = {
    type = "structure",
    members = {
        vCenter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsx = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsxManager1 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsxManager2 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsxManager3 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsxEdge1 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsxEdge2 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sddcManager = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cloudBuilder = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VcfVersion = {
    VCF_5_2_1 = "VCF-5.2.1",
    VCF_5_2_2 = "VCF-5.2.2",
}

M.CreateEnvironmentInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentName = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        serviceAccessSecurityGroups = {
            type = "structure",
        },
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceAccessSubnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vcfVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        termsAccepted = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        licenseInfo = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        initialVlans = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        hosts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        connectivityInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        vcfHostnames = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        siteId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CheckResult = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    UNKNOWN = "UNKNOWN",
}

M.CheckType = {
    KEY_REUSE = "KEY_REUSE",
    KEY_COVERAGE = "KEY_COVERAGE",
    REACHABILITY = "REACHABILITY",
    HOST_COUNT = "HOST_COUNT",
    VCENTER_REACHABILITY = "VCENTER_REACHABILITY",
    VCENTER_VM_SYNC = "VCENTER_VM_SYNC",
    VCENTER_VM_EVENT = "VCENTER_VM_EVENT",
}

M.Check = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        result = {
            type = "string",
        },
        impairedSince = {
            type = "timestamp",
        },
    },
}

M.Secret = {
    type = "structure",
    members = {
        secretArn = {
            type = "string",
        },
    },
}

M.EnvironmentState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    CREATE_FAILED = "CREATE_FAILED",
}

M.Environment = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        environmentState = {
            type = "string",
        },
        stateDetails = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        environmentArn = {
            type = "string",
        },
        environmentName = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        serviceAccessSubnetId = {
            type = "string",
        },
        vcfVersion = {
            type = "string",
        },
        termsAccepted = {
            type = "boolean",
        },
        licenseInfo = {
            type = "list",
            member_type = "structure",
        },
        siteId = {
            type = "string",
        },
        environmentStatus = {
            type = "string",
        },
        checks = {
            type = "list",
            member_type = "structure",
        },
        connectivityInfo = {
            type = "structure",
        },
        vcfHostnames = {
            type = "structure",
        },
        kmsKeyId = {
            type = "string",
        },
        serviceAccessSecurityGroups = {
            type = "structure",
        },
        credentials = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateEnvironmentOutput = {
    type = "structure",
    members = {
        environment = {
            type = "structure",
        },
    },
}

M.ConnectorType = {
    VCENTER = "VCENTER",
}

M.CreateEnvironmentConnectorInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applianceFqdn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectorCheck = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        result = {
            type = "string",
        },
        lastCheckAttempt = {
            type = "timestamp",
        },
        impairedSince = {
            type = "timestamp",
        },
    },
}

M.ConnectorState = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.Connector = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        connectorId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        applianceFqdn = {
            type = "string",
        },
        secretArn = {
            type = "string",
        },
        state = {
            type = "string",
        },
        stateDetails = {
            type = "string",
        },
        status = {
            type = "string",
        },
        checks = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
    },
}

M.CreateEnvironmentConnectorOutput = {
    type = "structure",
    members = {
        connector = {
            type = "structure",
        },
    },
}

M.CreateEnvironmentHostInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        host = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        esxVersion = {
            type = "string",
        },
    },
}

M.EnvironmentSummary = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
        },
        environmentName = {
            type = "string",
        },
        vcfVersion = {
            type = "string",
        },
        environmentStatus = {
            type = "string",
        },
        environmentState = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        environmentArn = {
            type = "string",
        },
    },
}

M.HostState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.NetworkInterface = {
    type = "structure",
    members = {
        networkInterfaceId = {
            type = "string",
        },
    },
}

M.Host = {
    type = "structure",
    members = {
        hostName = {
            type = "string",
        },
        ipAddress = {
            type = "string",
        },
        keyName = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        placementGroupId = {
            type = "string",
        },
        dedicatedHostId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        hostState = {
            type = "string",
        },
        stateDetails = {
            type = "string",
        },
        ec2InstanceId = {
            type = "string",
        },
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateEnvironmentHostOutput = {
    type = "structure",
    members = {
        environmentSummary = {
            type = "structure",
        },
        host = {
            type = "structure",
        },
    },
}

M.DeleteEntitlementInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entitlementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vmIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEntitlementOutput = {
    type = "structure",
    members = {
        entitlements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteEnvironmentInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentOutput = {
    type = "structure",
    members = {
        environment = {
            type = "structure",
        },
    },
}

M.DeleteEnvironmentConnectorInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        connectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentConnectorOutput = {
    type = "structure",
    members = {
        connector = {
            type = "structure",
        },
        environmentSummary = {
            type = "structure",
        },
    },
}

M.DeleteEnvironmentHostInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentHostOutput = {
    type = "structure",
    members = {
        environmentSummary = {
            type = "structure",
        },
        host = {
            type = "structure",
        },
    },
}

M.DisassociateEipFromVlanInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vlanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateEipFromVlanOutput = {
    type = "structure",
    members = {
        vlan = {
            type = "structure",
        },
    },
}

M.GetEnvironmentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEnvironmentOutput = {
    type = "structure",
    members = {
        environment = {
            type = "structure",
        },
    },
}

M.ListEnvironmentConnectorsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListEnvironmentConnectorsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        connectors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListEnvironmentHostsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListEnvironmentHostsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        environmentHosts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        state = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "state",
            },
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        environmentSummaries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListEnvironmentVlansInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListEnvironmentVlansOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        environmentVlans = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListVmEntitlementsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entitlementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVmEntitlementsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        entitlements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateEnvironmentConnectorInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        connectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        applianceFqdn = {
            type = "string",
        },
        secretIdentifier = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentConnectorOutput = {
    type = "structure",
    members = {
        connector = {
            type = "structure",
        },
    },
}

M.GetVersionsInput = {
    type = "structure",
}

M.InstanceTypeEsxVersionsInfo = {
    type = "structure",
    members = {
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        esxVersions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VcfVersionInfo = {
    type = "structure",
    members = {
        vcfVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultEsxVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetVersionsOutput = {
    type = "structure",
    members = {
        vcfVersions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        instanceTypeEsxVersions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
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
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagPolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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

return M
