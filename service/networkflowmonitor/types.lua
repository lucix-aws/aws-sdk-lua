local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        monitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localResources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        remoteResources = {
            type = "list",
            member_type = "structure",
        },
        scopeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        remoteResources = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TargetId = {
    type = "union",
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
    members = {
        targetId = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
    members = {
        targetIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        targets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DeleteMonitorInput = {
    type = "structure",
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
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteScopeInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        remoteResources = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetQueryResultsMonitorTopContributorsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.KubernetesMetadata = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        traversedConstructs = {
            type = "list",
            member_type = "structure",
        },
        kubernetesMetadata = {
            type = "structure",
        },
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
    members = {
        unit = {
            type = "string",
        },
        topContributors = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetQueryResultsWorkloadInsightsTopContributorsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.WorkloadInsightsTopContributorsRow = {
    type = "structure",
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
            type = "number",
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
    members = {
        topContributors = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetQueryResultsWorkloadInsightsTopContributorsDataInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.WorkloadInsightsTopContributorsDataPoint = {
    type = "structure",
    members = {
        timestamps = {
            type = "list",
            member_type = "timestamp",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "number",
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
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datapoints = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListMonitorsInput = {
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
    members = {
        monitors = {
            type = "list",
            member_type = "structure",
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
    },
}

M.ScopeSummary = {
    type = "structure",
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
    members = {
        scopes = {
            type = "list",
            member_type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
    },
}

M.StartQueryMonitorTopContributorsOutput = {
    type = "structure",
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
}

M.UpdateMonitorInput = {
    type = "structure",
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
            member_type = "structure",
        },
        localResourcesToRemove = {
            type = "list",
            member_type = "structure",
        },
        remoteResourcesToAdd = {
            type = "list",
            member_type = "structure",
        },
        remoteResourcesToRemove = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateMonitorOutput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        remoteResources = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
    },
}

M.StartQueryWorkloadInsightsTopContributorsOutput = {
    type = "structure",
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
}

M.StopQueryWorkloadInsightsTopContributorsDataInput = {
    type = "structure",
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
}

M.UpdateScopeInput = {
    type = "structure",
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
            member_type = "structure",
        },
        resourcesToDelete = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateScopeOutput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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

M.UntagResourceInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
