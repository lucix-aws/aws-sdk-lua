local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MonitorLocalResourceType = {
    AWS_VPC = "AWS::EC2::VPC",
    AWS_AZ = "AWS::AvailabilityZone",
    AWS_SUBNET = "AWS::EC2::Subnet",
    AWS_REGION = "AWS::Region",
    EKS_CLUSTER = "AWS::EKS::Cluster",
}

M.MonitorLocalResource = {
    type = "structure",
    id = "MonitorLocalResource",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MonitorRemoteResourceType = {
    AWS_VPC = "AWS::EC2::VPC",
    AWS_AZ = "AWS::AvailabilityZone",
    AWS_SUBNET = "AWS::EC2::Subnet",
    AWS_SERVICE = "AWS::AWSService",
    AWS_REGION = "AWS::Region",
}

M.MonitorRemoteResource = {
    type = "structure",
    id = "MonitorRemoteResource",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMonitorInput = {
    type = "structure",
    id = "CreateMonitorInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localResources = {
            type = "list",
            member = M.MonitorLocalResource,
            traits = {
                required = true,
            },
        },
        remoteResources = {
            type = "list",
            member = M.MonitorRemoteResource,
        },
        scopeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MonitorStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    ERROR = "ERROR",
    DELETING = "DELETING",
}

M.CreateMonitorOutput = {
    type = "structure",
    id = "CreateMonitorOutput",
    members = {
        monitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        monitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        monitorStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localResources = {
            type = "list",
            member = M.MonitorLocalResource,
            traits = {
                required = true,
            },
        },
        remoteResources = {
            type = "list",
            member = M.MonitorRemoteResource,
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TargetId = {
    type = "union",
    id = "TargetId",
    members = {
        accountId = {
            type = "string",
        },
    },
}

M.TargetType = {
    ACCOUNT = "ACCOUNT",
}

M.TargetIdentifier = {
    type = "structure",
    id = "TargetIdentifier",
    members = {
        targetId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetId }),
        targetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetResource = {
    type = "structure",
    id = "TargetResource",
    members = {
        targetIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetIdentifier }),
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateScopeInput = {
    type = "structure",
    id = "CreateScopeInput",
    members = {
        targets = {
            type = "list",
            member = M.TargetResource,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ScopeStatus = {
    SUCCEEDED = "SUCCEEDED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    DEACTIVATING = "DEACTIVATING",
    DEACTIVATED = "DEACTIVATED",
}

M.CreateScopeOutput = {
    type = "structure",
    id = "CreateScopeOutput",
    members = {
        scopeId = {
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
        scopeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteMonitorInput = {
    type = "structure",
    id = "DeleteMonitorInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMonitorOutput = {
    type = "structure",
    id = "DeleteMonitorOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteScopeInput = {
    type = "structure",
    id = "DeleteScopeInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteScopeOutput = {
    type = "structure",
    id = "DeleteScopeOutput",
}

M.DestinationCategory = {
    INTRA_AZ = "INTRA_AZ",
    INTER_AZ = "INTER_AZ",
    INTER_VPC = "INTER_VPC",
    UNCLASSIFIED = "UNCLASSIFIED",
    AMAZON_S3 = "AMAZON_S3",
    AMAZON_DYNAMODB = "AMAZON_DYNAMODB",
    INTER_REGION = "INTER_REGION",
}

M.GetMonitorInput = {
    type = "structure",
    id = "GetMonitorInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMonitorOutput = {
    type = "structure",
    id = "GetMonitorOutput",
    members = {
        monitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        monitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        monitorStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localResources = {
            type = "list",
            member = M.MonitorLocalResource,
            traits = {
                required = true,
            },
        },
        remoteResources = {
            type = "list",
            member = M.MonitorRemoteResource,
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetQueryResultsMonitorTopContributorsInput = {
    type = "structure",
    id = "GetQueryResultsMonitorTopContributorsInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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
    },
}

M.KubernetesMetadata = {
    type = "structure",
    id = "KubernetesMetadata",
    members = {
        localServiceName = {
            type = "string",
        },
        localPodName = {
            type = "string",
        },
        localPodNamespace = {
            type = "string",
        },
        remoteServiceName = {
            type = "string",
        },
        remotePodName = {
            type = "string",
        },
        remotePodNamespace = {
            type = "string",
        },
    },
}

M.TraversedComponent = {
    type = "structure",
    id = "TraversedComponent",
    members = {
        componentId = {
            type = "string",
        },
        componentType = {
            type = "string",
        },
        componentArn = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
    },
}

M.MonitorTopContributorsRow = {
    type = "structure",
    id = "MonitorTopContributorsRow",
    members = {
        localIp = {
            type = "string",
        },
        snatIp = {
            type = "string",
        },
        localInstanceId = {
            type = "string",
        },
        localVpcId = {
            type = "string",
        },
        localRegion = {
            type = "string",
        },
        localAz = {
            type = "string",
        },
        localSubnetId = {
            type = "string",
        },
        targetPort = {
            type = "integer",
        },
        destinationCategory = {
            type = "string",
        },
        remoteVpcId = {
            type = "string",
        },
        remoteRegion = {
            type = "string",
        },
        remoteAz = {
            type = "string",
        },
        remoteSubnetId = {
            type = "string",
        },
        remoteInstanceId = {
            type = "string",
        },
        remoteIp = {
            type = "string",
        },
        dnatIp = {
            type = "string",
        },
        value = {
            type = "long",
        },
        traversedConstructs = {
            type = "list",
            member = M.TraversedComponent,
        },
        kubernetesMetadata = M.KubernetesMetadata,
        localInstanceArn = {
            type = "string",
        },
        localSubnetArn = {
            type = "string",
        },
        localVpcArn = {
            type = "string",
        },
        remoteInstanceArn = {
            type = "string",
        },
        remoteSubnetArn = {
            type = "string",
        },
        remoteVpcArn = {
            type = "string",
        },
    },
}

M.MetricUnit = {
    SECONDS = "Seconds",
    MICROSECONDS = "Microseconds",
    MILLISECONDS = "Milliseconds",
    BYTES = "Bytes",
    KILOBYTES = "Kilobytes",
    MEGABYTES = "Megabytes",
    GIGABYTES = "Gigabytes",
    TERABYTES = "Terabytes",
    BITS = "Bits",
    KILOBITS = "Kilobits",
    MEGABITS = "Megabits",
    GIGABITS = "Gigabits",
    TERABITS = "Terabits",
    PERCENT = "Percent",
    COUNT = "Count",
    BYTES_PER_SECOND = "Bytes/Second",
    KILOBYTES_PER_SECOND = "Kilobytes/Second",
    MEGABYTES_PER_SECOND = "Megabytes/Second",
    GIGABYTES_PER_SECOND = "Gigabytes/Second",
    TERABYTES_PER_SECOND = "Terabytes/Second",
    BITS_PER_SECOND = "Bits/Second",
    KILOBITS_PER_SECOND = "Kilobits/Second",
    MEGABITS_PER_SECOND = "Megabits/Second",
    GIGABITS_PER_SECOND = "Gigabits/Second",
    TERABITS_PER_SECOND = "Terabits/Second",
    COUNT_PER_SECOND = "Count/Second",
    NONE = "None",
}

M.GetQueryResultsMonitorTopContributorsOutput = {
    type = "structure",
    id = "GetQueryResultsMonitorTopContributorsOutput",
    members = {
        unit = {
            type = "string",
        },
        topContributors = {
            type = "list",
            member = M.MonitorTopContributorsRow,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetQueryResultsWorkloadInsightsTopContributorsInput = {
    type = "structure",
    id = "GetQueryResultsWorkloadInsightsTopContributorsInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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
    },
}

M.WorkloadInsightsTopContributorsRow = {
    type = "structure",
    id = "WorkloadInsightsTopContributorsRow",
    members = {
        accountId = {
            type = "string",
        },
        localSubnetId = {
            type = "string",
        },
        localAz = {
            type = "string",
        },
        localVpcId = {
            type = "string",
        },
        localRegion = {
            type = "string",
        },
        remoteIdentifier = {
            type = "string",
        },
        value = {
            type = "long",
        },
        localSubnetArn = {
            type = "string",
        },
        localVpcArn = {
            type = "string",
        },
    },
}

M.GetQueryResultsWorkloadInsightsTopContributorsOutput = {
    type = "structure",
    id = "GetQueryResultsWorkloadInsightsTopContributorsOutput",
    members = {
        topContributors = {
            type = "list",
            member = M.WorkloadInsightsTopContributorsRow,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetQueryResultsWorkloadInsightsTopContributorsDataInput = {
    type = "structure",
    id = "GetQueryResultsWorkloadInsightsTopContributorsDataInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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
    },
}

M.WorkloadInsightsTopContributorsDataPoint = {
    type = "structure",
    id = "WorkloadInsightsTopContributorsDataPoint",
    members = {
        timestamps = {
            type = "list",
            member = { type = "timestamp" },
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        label = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetQueryResultsWorkloadInsightsTopContributorsDataOutput = {
    type = "structure",
    id = "GetQueryResultsWorkloadInsightsTopContributorsDataOutput",
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datapoints = {
            type = "list",
            member = M.WorkloadInsightsTopContributorsDataPoint,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetQueryStatusMonitorTopContributorsInput = {
    type = "structure",
    id = "GetQueryStatusMonitorTopContributorsInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QueryStatus = {
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.GetQueryStatusMonitorTopContributorsOutput = {
    type = "structure",
    id = "GetQueryStatusMonitorTopContributorsOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetQueryStatusWorkloadInsightsTopContributorsInput = {
    type = "structure",
    id = "GetQueryStatusWorkloadInsightsTopContributorsInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetQueryStatusWorkloadInsightsTopContributorsOutput = {
    type = "structure",
    id = "GetQueryStatusWorkloadInsightsTopContributorsOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetQueryStatusWorkloadInsightsTopContributorsDataInput = {
    type = "structure",
    id = "GetQueryStatusWorkloadInsightsTopContributorsDataInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetQueryStatusWorkloadInsightsTopContributorsDataOutput = {
    type = "structure",
    id = "GetQueryStatusWorkloadInsightsTopContributorsDataOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetScopeInput = {
    type = "structure",
    id = "GetScopeInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetScopeOutput = {
    type = "structure",
    id = "GetScopeOutput",
    members = {
        scopeId = {
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
        scopeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targets = {
            type = "list",
            member = M.TargetResource,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListMonitorsInput = {
    type = "structure",
    id = "ListMonitorsInput",
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
        monitorStatus = {
            type = "string",
            traits = {
                http_query = "monitorStatus",
            },
        },
    },
}

M.MonitorSummary = {
    type = "structure",
    id = "MonitorSummary",
    members = {
        monitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        monitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        monitorStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMonitorsOutput = {
    type = "structure",
    id = "ListMonitorsOutput",
    members = {
        monitors = {
            type = "list",
            member = M.MonitorSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListScopesInput = {
    type = "structure",
    id = "ListScopesInput",
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
    },
}

M.ScopeSummary = {
    type = "structure",
    id = "ScopeSummary",
    members = {
        scopeId = {
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
        scopeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListScopesOutput = {
    type = "structure",
    id = "ListScopesOutput",
    members = {
        scopes = {
            type = "list",
            member = M.ScopeSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MonitorMetric = {
    ROUND_TRIP_TIME = "ROUND_TRIP_TIME",
    TIMEOUTS = "TIMEOUTS",
    RETRANSMISSIONS = "RETRANSMISSIONS",
    DATA_TRANSFERRED = "DATA_TRANSFERRED",
}

M.StartQueryMonitorTopContributorsInput = {
    type = "structure",
    id = "StartQueryMonitorTopContributorsInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCategory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limit = {
            type = "integer",
        },
    },
}

M.StartQueryMonitorTopContributorsOutput = {
    type = "structure",
    id = "StartQueryMonitorTopContributorsOutput",
    members = {
        queryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopQueryMonitorTopContributorsInput = {
    type = "structure",
    id = "StopQueryMonitorTopContributorsInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopQueryMonitorTopContributorsOutput = {
    type = "structure",
    id = "StopQueryMonitorTopContributorsOutput",
}

M.UpdateMonitorInput = {
    type = "structure",
    id = "UpdateMonitorInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        localResourcesToAdd = {
            type = "list",
            member = M.MonitorLocalResource,
        },
        localResourcesToRemove = {
            type = "list",
            member = M.MonitorLocalResource,
        },
        remoteResourcesToAdd = {
            type = "list",
            member = M.MonitorRemoteResource,
        },
        remoteResourcesToRemove = {
            type = "list",
            member = M.MonitorRemoteResource,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateMonitorOutput = {
    type = "structure",
    id = "UpdateMonitorOutput",
    members = {
        monitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        monitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        monitorStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localResources = {
            type = "list",
            member = M.MonitorLocalResource,
            traits = {
                required = true,
            },
        },
        remoteResources = {
            type = "list",
            member = M.MonitorRemoteResource,
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.WorkloadInsightsMetric = {
    TIMEOUTS = "TIMEOUTS",
    RETRANSMISSIONS = "RETRANSMISSIONS",
    DATA_TRANSFERRED = "DATA_TRANSFERRED",
}

M.StartQueryWorkloadInsightsTopContributorsInput = {
    type = "structure",
    id = "StartQueryWorkloadInsightsTopContributorsInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCategory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limit = {
            type = "integer",
        },
    },
}

M.StartQueryWorkloadInsightsTopContributorsOutput = {
    type = "structure",
    id = "StartQueryWorkloadInsightsTopContributorsOutput",
    members = {
        queryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartQueryWorkloadInsightsTopContributorsDataInput = {
    type = "structure",
    id = "StartQueryWorkloadInsightsTopContributorsDataInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCategory = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartQueryWorkloadInsightsTopContributorsDataOutput = {
    type = "structure",
    id = "StartQueryWorkloadInsightsTopContributorsDataOutput",
    members = {
        queryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopQueryWorkloadInsightsTopContributorsInput = {
    type = "structure",
    id = "StopQueryWorkloadInsightsTopContributorsInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopQueryWorkloadInsightsTopContributorsOutput = {
    type = "structure",
    id = "StopQueryWorkloadInsightsTopContributorsOutput",
}

M.StopQueryWorkloadInsightsTopContributorsDataInput = {
    type = "structure",
    id = "StopQueryWorkloadInsightsTopContributorsDataInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopQueryWorkloadInsightsTopContributorsDataOutput = {
    type = "structure",
    id = "StopQueryWorkloadInsightsTopContributorsDataOutput",
}

M.UpdateScopeInput = {
    type = "structure",
    id = "UpdateScopeInput",
    members = {
        scopeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourcesToAdd = {
            type = "list",
            member = M.TargetResource,
        },
        resourcesToDelete = {
            type = "list",
            member = M.TargetResource,
        },
    },
}

M.UpdateScopeOutput = {
    type = "structure",
    id = "UpdateScopeOutput",
    members = {
        scopeId = {
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
        scopeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
