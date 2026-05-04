local M = {}

M.AssociateEipToVlanInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
            type = "integer",
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
            member = M.EipAssociation,
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
        vlan = M.Vlan,
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
            type = "integer",
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
            member = M.ValidationExceptionField,
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
            traits = {
                idempotency_token = true,
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
        vmIds = {
            type = "list",
            member = { type = "string" },
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
        errorDetail = M.ErrorDetail,
    },
}

M.CreateEntitlementOutput = {
    type = "structure",
    members = {
        entitlements = {
            type = "list",
            member = M.VmEntitlement,
        },
    },
}

M.ConnectivityInfo = {
    type = "structure",
    members = {
        privateRouteServerPeerings = {
            type = "list",
            member = { type = "string" },
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
        vmkManagement = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlanInfo }),
        vmManagement = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlanInfo }),
        vMotion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlanInfo }),
        vSan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlanInfo }),
        vTep = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlanInfo }),
        edgeVTep = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlanInfo }),
        nsxUplink = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlanInfo }),
        hcx = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlanInfo }),
        expansionVlan1 = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlanInfo }),
        expansionVlan2 = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlanInfo }),
        isHcxPublic = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            member = { type = "string" },
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
            traits = {
                idempotency_token = true,
            },
        },
        environmentName = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        serviceAccessSecurityGroups = M.ServiceAccessSecurityGroups,
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
            member = M.LicenseInfo,
            traits = {
                required = true,
            },
        },
        initialVlans = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InitialVlans }),
        hosts = {
            type = "list",
            member = M.HostInfoForCreate,
            traits = {
                required = true,
            },
        },
        connectivityInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectivityInfo }),
        vcfHostnames = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VcfHostnames }),
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
            member = M.LicenseInfo,
        },
        siteId = {
            type = "string",
        },
        environmentStatus = {
            type = "string",
        },
        checks = {
            type = "list",
            member = M.Check,
        },
        connectivityInfo = M.ConnectivityInfo,
        vcfHostnames = M.VcfHostnames,
        kmsKeyId = {
            type = "string",
        },
        serviceAccessSecurityGroups = M.ServiceAccessSecurityGroups,
        credentials = {
            type = "list",
            member = M.Secret,
        },
    },
}

M.CreateEnvironmentOutput = {
    type = "structure",
    members = {
        environment = M.Environment,
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
            traits = {
                idempotency_token = true,
            },
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
            member = M.ConnectorCheck,
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
        connector = M.Connector,
    },
}

M.CreateEnvironmentHostInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        host = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HostInfoForCreate }),
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
            member = M.NetworkInterface,
        },
    },
}

M.CreateEnvironmentHostOutput = {
    type = "structure",
    members = {
        environmentSummary = M.EnvironmentSummary,
        host = M.Host,
    },
}

M.DeleteEntitlementInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
        vmIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.VmEntitlement,
        },
    },
}

M.DeleteEnvironmentInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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

M.DeleteEnvironmentOutput = {
    type = "structure",
    members = {
        environment = M.Environment,
    },
}

M.DeleteEnvironmentConnectorInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
        connector = M.Connector,
        environmentSummary = M.EnvironmentSummary,
    },
}

M.DeleteEnvironmentHostInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
        environmentSummary = M.EnvironmentSummary,
        host = M.Host,
    },
}

M.DisassociateEipFromVlanInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
        vlan = M.Vlan,
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
        environment = M.Environment,
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
            type = "integer",
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
            member = M.Connector,
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
            type = "integer",
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
            member = M.Host,
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        state = {
            type = "list",
            member = { type = "string" },
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
            member = M.EnvironmentSummary,
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
            type = "integer",
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
            member = M.Vlan,
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
            type = "integer",
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
            member = M.VmEntitlement,
        },
    },
}

M.UpdateEnvironmentConnectorInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
        connector = M.Connector,
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
            member = { type = "string" },
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
            member = { type = "string" },
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
            member = M.VcfVersionInfo,
            traits = {
                required = true,
            },
        },
        instanceTypeEsxVersions = {
            type = "list",
            member = M.InstanceTypeEsxVersionsInfo,
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
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
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

return M
