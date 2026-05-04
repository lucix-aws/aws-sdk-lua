local M = {}

M.DependencyException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        parameterName = {
            type = "string",
        },
    },
}

M.GetAgentConfigurationInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAgentConfigurationOutput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
        },
        taskingDocument = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        parameterName = {
            type = "string",
        },
    },
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

M.ComponentVersion = {
    type = "structure",
    members = {
        componentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentDetails = {
    type = "structure",
    members = {
        agentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceId = {
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
        reservedCpuCores = {
            type = "list",
            member_type = "number",
        },
        agentCpuCores = {
            type = "list",
            member_type = "number",
        },
        componentVersions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DiscoveryData = {
    type = "structure",
    members = {
        publicIpAddresses = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        privateIpAddresses = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        capabilityArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterAgentInput = {
    type = "structure",
    members = {
        discoveryData = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        agentDetails = {
            type = "structure",
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

M.RegisterAgentOutput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
        },
    },
}

M.AgentStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.AggregateStatus = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        signatureMap = {
            type = "map",
            key_type = "string",
            value_type = "boolean",
        },
    },
}

M.ComponentStatusData = {
    type = "structure",
    members = {
        componentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilityArn = {
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
        bytesSent = {
            type = "number",
        },
        bytesReceived = {
            type = "number",
        },
        packetsDropped = {
            type = "number",
        },
        dataflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAgentStatusInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregateStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        componentStatuses = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAgentStatusOutput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AngleUnits = {
    DEGREE_ANGLE = "DEGREE_ANGLE",
    RADIAN = "RADIAN",
}

M.AntennaDemodDecodeDetails = {
    type = "structure",
    members = {
        outputNode = {
            type = "string",
        },
    },
}

M.BandwidthUnits = {
    GHZ = "GHz",
    MHZ = "MHz",
    KHZ = "kHz",
}

M.FrequencyBandwidth = {
    type = "structure",
    members = {
        value = {
            type = "number",
            traits = {
                required = true,
            },
        },
        units = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FrequencyUnits = {
    GHZ = "GHz",
    MHZ = "MHz",
    KHZ = "kHz",
}

M.Frequency = {
    type = "structure",
    members = {
        value = {
            type = "number",
            traits = {
                required = true,
            },
        },
        units = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Polarization = {
    RIGHT_HAND = "RIGHT_HAND",
    LEFT_HAND = "LEFT_HAND",
    NONE = "NONE",
}

M.SpectrumConfig = {
    type = "structure",
    members = {
        centerFrequency = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        bandwidth = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        polarization = {
            type = "string",
        },
    },
}

M.AntennaDownlinkConfig = {
    type = "structure",
    members = {
        spectrumConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DecodeConfig = {
    type = "structure",
    members = {
        unvalidatedJSON = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DemodulationConfig = {
    type = "structure",
    members = {
        unvalidatedJSON = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AntennaDownlinkDemodDecodeConfig = {
    type = "structure",
    members = {
        spectrumConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        demodulationConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        decodeConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AntennaListItem = {
    type = "structure",
    members = {
        groundStationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        antennaName = {
            type = "string",
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

M.UplinkSpectrumConfig = {
    type = "structure",
    members = {
        centerFrequency = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        polarization = {
            type = "string",
        },
    },
}

M.EirpUnits = {
    DBW = "dBW",
}

M.Eirp = {
    type = "structure",
    members = {
        value = {
            type = "number",
            traits = {
                required = true,
            },
        },
        units = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AntennaUplinkConfig = {
    type = "structure",
    members = {
        transmitDisabled = {
            type = "boolean",
        },
        spectrumConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        targetEirp = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AuditResults = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.SocketAddress = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionDetails = {
    type = "structure",
    members = {
        socketAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        mtu = {
            type = "number",
        },
    },
}

M.IntegerRange = {
    type = "structure",
    members = {
        minimum = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maximum = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RangedSocketAddress = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RangedConnectionDetails = {
    type = "structure",
    members = {
        socketAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        mtu = {
            type = "number",
        },
    },
}

M.AwsGroundStationAgentEndpoint = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        egressAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ingressAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        agentStatus = {
            type = "string",
        },
        auditResults = {
            type = "string",
        },
    },
}

M.TimeAzEl = {
    type = "structure",
    members = {
        dt = {
            type = "number",
            traits = {
                required = true,
            },
        },
        az = {
            type = "number",
            traits = {
                required = true,
            },
        },
        el = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ISO8601TimeRange = {
    type = "structure",
    members = {
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
    },
}

M.AzElSegment = {
    type = "structure",
    members = {
        referenceEpoch = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        validTimeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        azElList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AzElSegments = {
    type = "structure",
    members = {
        angleUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        azElSegmentList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.S3Object = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
        },
        key = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.AzElSegmentsData = {
    type = "union",
    members = {
        s3Object = {
            type = "structure",
        },
        azElData = {
            type = "structure",
        },
    },
}

M.AzElEphemeris = {
    type = "structure",
    members = {
        groundStation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.AzElEphemerisFilter = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AzElProgramTrackSettings = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelContactInput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelContactOutput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
        },
        versionId = {
            type = "number",
        },
    },
}

M.CapabilityHealth = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.CapabilityHealthReason = {
    NO_REGISTERED_AGENT = "NO_REGISTERED_AGENT",
    INVALID_IP_OWNERSHIP = "INVALID_IP_OWNERSHIP",
    NOT_AUTHORIZED_TO_CREATE_SLR = "NOT_AUTHORIZED_TO_CREATE_SLR",
    UNVERIFIED_IP_OWNERSHIP = "UNVERIFIED_IP_OWNERSHIP",
    INITIALIZING_DATAPLANE = "INITIALIZING_DATAPLANE",
    DATAPLANE_FAILURE = "DATAPLANE_FAILURE",
    HEALTHY = "HEALTHY",
}

M.ConfigCapabilityType = {
    ANTENNA_DOWNLINK = "antenna-downlink",
    ANTENNA_DOWNLINK_DEMOD_DECODE = "antenna-downlink-demod-decode",
    TRACKING = "tracking",
    DATAFLOW_ENDPOINT = "dataflow-endpoint",
    ANTENNA_UPLINK = "antenna-uplink",
    UPLINK_ECHO = "uplink-echo",
    S3_RECORDING = "s3-recording",
    TELEMETRY_SINK = "telemetry-sink",
}

M.DataflowEndpointConfig = {
    type = "structure",
    members = {
        dataflowEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataflowEndpointRegion = {
            type = "string",
        },
    },
}

M.S3RecordingConfig = {
    type = "structure",
    members = {
        bucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
        },
    },
}

M.KinesisDataStreamData = {
    type = "structure",
    members = {
        kinesisRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kinesisDataStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TelemetrySinkData = {
    type = "union",
    members = {
        kinesisDataStreamData = {
            type = "structure",
        },
    },
}

M.TelemetrySinkType = {
    KINESIS_DATA_STREAM = "KINESIS_DATA_STREAM",
}

M.TelemetrySinkConfig = {
    type = "structure",
    members = {
        telemetrySinkType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        telemetrySinkData = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.Criticality = {
    REQUIRED = "REQUIRED",
    PREFERRED = "PREFERRED",
    REMOVED = "REMOVED",
}

M.TrackingConfig = {
    type = "structure",
    members = {
        autotrack = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UplinkEchoConfig = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        antennaUplinkConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigTypeData = {
    type = "union",
    members = {
        antennaDownlinkConfig = {
            type = "structure",
        },
        trackingConfig = {
            type = "structure",
        },
        dataflowEndpointConfig = {
            type = "structure",
        },
        antennaDownlinkDemodDecodeConfig = {
            type = "structure",
        },
        antennaUplinkConfig = {
            type = "structure",
        },
        uplinkEchoConfig = {
            type = "structure",
        },
        s3RecordingConfig = {
            type = "structure",
        },
        telemetrySinkConfig = {
            type = "structure",
        },
    },
}

M.CreateConfigInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configData = {
            type = "union",
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

M.CreateConfigOutput = {
    type = "structure",
    members = {
        configId = {
            type = "string",
        },
        configType = {
            type = "string",
        },
        configArn = {
            type = "string",
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        parameterName = {
            type = "string",
        },
    },
}

M.DeleteConfigInput = {
    type = "structure",
    members = {
        configId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfigOutput = {
    type = "structure",
    members = {
        configId = {
            type = "string",
        },
        configType = {
            type = "string",
        },
        configArn = {
            type = "string",
        },
    },
}

M.GetConfigInput = {
    type = "structure",
    members = {
        configId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfigOutput = {
    type = "structure",
    members = {
        configId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configType = {
            type = "string",
        },
        configData = {
            type = "union",
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

M.ListConfigsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ConfigListItem = {
    type = "structure",
    members = {
        configId = {
            type = "string",
        },
        configType = {
            type = "string",
        },
        configArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.ListConfigsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        configList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateConfigInput = {
    type = "structure",
    members = {
        configId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configData = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfigOutput = {
    type = "structure",
    members = {
        configId = {
            type = "string",
        },
        configType = {
            type = "string",
        },
        configArn = {
            type = "string",
        },
    },
}

M.DownlinkConnectionDetails = {
    type = "structure",
    members = {
        agentIpAndPortAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        egressAddressAndPort = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DownlinkDataflowDetails = {
    type = "union",
    members = {
        agentConnectionDetails = {
            type = "structure",
        },
    },
}

M.DownlinkAwsGroundStationAgentEndpointDetails = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataflowDetails = {
            type = "union",
            traits = {
                required = true,
            },
        },
        agentStatus = {
            type = "string",
        },
        auditResults = {
            type = "string",
        },
    },
}

M.EndpointStatus = {
    created = "created",
    creating = "creating",
    deleted = "deleted",
    deleting = "deleting",
    failed = "failed",
}

M.DataflowEndpoint = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        address = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        mtu = {
            type = "number",
        },
    },
}

M.SecurityDetails = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UplinkConnectionDetails = {
    type = "structure",
    members = {
        ingressAddressAndPort = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        agentIpAndPortAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UplinkDataflowDetails = {
    type = "union",
    members = {
        agentConnectionDetails = {
            type = "structure",
        },
    },
}

M.UplinkAwsGroundStationAgentEndpointDetails = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataflowDetails = {
            type = "union",
            traits = {
                required = true,
            },
        },
        agentStatus = {
            type = "string",
        },
        auditResults = {
            type = "string",
        },
    },
}

M.EndpointDetails = {
    type = "structure",
    members = {
        securityDetails = {
            type = "structure",
        },
        endpoint = {
            type = "structure",
        },
        awsGroundStationAgentEndpoint = {
            type = "structure",
        },
        uplinkAwsGroundStationAgentEndpoint = {
            type = "structure",
        },
        downlinkAwsGroundStationAgentEndpoint = {
            type = "structure",
        },
        healthStatus = {
            type = "string",
        },
        healthReasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.S3RecordingDetails = {
    type = "structure",
    members = {
        bucketArn = {
            type = "string",
        },
        keyTemplate = {
            type = "string",
        },
    },
}

M.ConfigDetails = {
    type = "union",
    members = {
        endpointDetails = {
            type = "structure",
        },
        antennaDemodDecodeDetails = {
            type = "structure",
        },
        s3RecordingDetails = {
            type = "structure",
        },
    },
}

M.DescribeContactInput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ContactStatus = {
    SCHEDULING = "SCHEDULING",
    FAILED_TO_SCHEDULE = "FAILED_TO_SCHEDULE",
    SCHEDULED = "SCHEDULED",
    CANCELLED = "CANCELLED",
    AWS_CANCELLED = "AWS_CANCELLED",
    PREPASS = "PREPASS",
    PASS = "PASS",
    POSTPASS = "POSTPASS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    AVAILABLE = "AVAILABLE",
    CANCELLING = "CANCELLING",
    AWS_FAILED = "AWS_FAILED",
}

M.Destination = {
    type = "structure",
    members = {
        configType = {
            type = "string",
        },
        configId = {
            type = "string",
        },
        configDetails = {
            type = "union",
        },
        dataflowDestinationRegion = {
            type = "string",
        },
    },
}

M.Source = {
    type = "structure",
    members = {
        configType = {
            type = "string",
        },
        configId = {
            type = "string",
        },
        configDetails = {
            type = "union",
        },
        dataflowSourceRegion = {
            type = "string",
        },
    },
}

M.DataflowDetail = {
    type = "structure",
    members = {
        source = {
            type = "structure",
        },
        destination = {
            type = "structure",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.EphemerisType = {
    TLE = "TLE",
    OEM = "OEM",
    AZ_EL = "AZ_EL",
    SERVICE_MANAGED = "SERVICE_MANAGED",
}

M.EphemerisResponseData = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
        },
        ephemerisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Elevation = {
    type = "structure",
    members = {
        value = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OemProgramTrackSettings = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TleProgramTrackSettings = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProgramTrackSettings = {
    type = "union",
    members = {
        azEl = {
            type = "structure",
        },
        oem = {
            type = "structure",
        },
        tle = {
            type = "structure",
        },
    },
}

M.TrackingOverrides = {
    type = "structure",
    members = {
        programTrackSettings = {
            type = "union",
        },
    },
}

M.VersionFailureReasonCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    INVALID_SATELLITE_ARN = "INVALID_SATELLITE_ARN",
    INVALID_UPDATE_CONTACT_REQUEST = "INVALID_UPDATE_CONTACT_REQUEST",
    EPHEMERIS_NOT_FOUND = "EPHEMERIS_NOT_FOUND",
    EPHEMERIS_TIME_RANGE_INVALID = "EPHEMERIS_TIME_RANGE_INVALID",
    EPHEMERIS_NOT_ENABLED = "EPHEMERIS_NOT_ENABLED",
    SATELLITE_DOES_NOT_MATCH_EPHEMERIS = "SATELLITE_DOES_NOT_MATCH_EPHEMERIS",
    NOT_ONBOARDED_TO_AZEL_EPHEMERIS = "NOT_ONBOARDED_TO_AZEL_EPHEMERIS",
    AZEL_EPHEMERIS_NOT_FOUND = "AZEL_EPHEMERIS_NOT_FOUND",
    AZEL_EPHEMERIS_WRONG_GROUND_STATION = "AZEL_EPHEMERIS_WRONG_GROUND_STATION",
    AZEL_EPHEMERIS_INVALID_STATUS = "AZEL_EPHEMERIS_INVALID_STATUS",
    AZEL_EPHEMERIS_TIME_RANGE_INVALID = "AZEL_EPHEMERIS_TIME_RANGE_INVALID",
}

M.VersionStatus = {
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    SUPERSEDED = "SUPERSEDED",
    FAILED_TO_UPDATE = "FAILED_TO_UPDATE",
}

M.ContactVersion = {
    type = "structure",
    members = {
        versionId = {
            type = "number",
        },
        created = {
            type = "timestamp",
        },
        activated = {
            type = "timestamp",
        },
        superseded = {
            type = "timestamp",
        },
        lastUpdated = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        failureCodes = {
            type = "list",
            member_type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.DescribeContactOutput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
        },
        missionProfileArn = {
            type = "string",
        },
        satelliteArn = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        prePassStartTime = {
            type = "timestamp",
        },
        postPassEndTime = {
            type = "timestamp",
        },
        groundStation = {
            type = "string",
        },
        contactStatus = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        maximumElevation = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        region = {
            type = "string",
        },
        dataflowList = {
            type = "list",
            member_type = "structure",
        },
        visibilityStartTime = {
            type = "timestamp",
        },
        visibilityEndTime = {
            type = "timestamp",
        },
        trackingOverrides = {
            type = "structure",
        },
        ephemeris = {
            type = "structure",
        },
        version = {
            type = "structure",
        },
    },
}

M.DescribeContactVersionInput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionId = {
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeContactVersionOutput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
        },
        missionProfileArn = {
            type = "string",
        },
        satelliteArn = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        prePassStartTime = {
            type = "timestamp",
        },
        postPassEndTime = {
            type = "timestamp",
        },
        groundStation = {
            type = "string",
        },
        contactStatus = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        maximumElevation = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        region = {
            type = "string",
        },
        dataflowList = {
            type = "list",
            member_type = "structure",
        },
        visibilityStartTime = {
            type = "timestamp",
        },
        visibilityEndTime = {
            type = "timestamp",
        },
        trackingOverrides = {
            type = "structure",
        },
        ephemeris = {
            type = "structure",
        },
        version = {
            type = "structure",
        },
    },
}

M.EphemerisFilter = {
    type = "union",
    members = {
        azEl = {
            type = "structure",
        },
    },
}

M.ListContactsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        statusList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        groundStation = {
            type = "string",
        },
        satelliteArn = {
            type = "string",
        },
        missionProfileArn = {
            type = "string",
        },
        ephemeris = {
            type = "union",
        },
    },
}

M.ContactData = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
        },
        missionProfileArn = {
            type = "string",
        },
        satelliteArn = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        prePassStartTime = {
            type = "timestamp",
        },
        postPassEndTime = {
            type = "timestamp",
        },
        groundStation = {
            type = "string",
        },
        contactStatus = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        maximumElevation = {
            type = "structure",
        },
        region = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        visibilityStartTime = {
            type = "timestamp",
        },
        visibilityEndTime = {
            type = "timestamp",
        },
        ephemeris = {
            type = "structure",
        },
        version = {
            type = "structure",
        },
    },
}

M.ListContactsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        contactList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListContactVersionsInput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListContactVersionsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        contactVersionsList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ReserveContactInput = {
    type = "structure",
    members = {
        missionProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        satelliteArn = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        groundStation = {
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
        trackingOverrides = {
            type = "structure",
        },
    },
}

M.ReserveContactOutput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
        },
        versionId = {
            type = "number",
        },
    },
}

M.UpdateContactInput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        trackingOverrides = {
            type = "structure",
        },
        satelliteArn = {
            type = "string",
        },
    },
}

M.UpdateContactOutput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
        },
        versionId = {
            type = "number",
        },
    },
}

M.ContactReservationDetails = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
        },
    },
}

M.CreateDataflowEndpointGroupInput = {
    type = "structure",
    members = {
        endpointDetails = {
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
        contactPrePassDurationSeconds = {
            type = "number",
        },
        contactPostPassDurationSeconds = {
            type = "number",
        },
    },
}

M.CreateDataflowEndpointGroupOutput = {
    type = "structure",
    members = {
        dataflowEndpointGroupId = {
            type = "string",
        },
    },
}

M.DownlinkAwsGroundStationAgentEndpoint = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataflowDetails = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UplinkAwsGroundStationAgentEndpoint = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataflowDetails = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEndpointDetails = {
    type = "union",
    members = {
        uplinkAwsGroundStationAgentEndpoint = {
            type = "structure",
        },
        downlinkAwsGroundStationAgentEndpoint = {
            type = "structure",
        },
    },
}

M.CreateDataflowEndpointGroupV2Input = {
    type = "structure",
    members = {
        endpoints = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        contactPrePassDurationSeconds = {
            type = "number",
        },
        contactPostPassDurationSeconds = {
            type = "number",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDataflowEndpointGroupV2Output = {
    type = "structure",
    members = {
        dataflowEndpointGroupId = {
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
        parameterName = {
            type = "string",
        },
    },
}

M.OEMEphemeris = {
    type = "structure",
    members = {
        s3Object = {
            type = "structure",
        },
        oemData = {
            type = "string",
        },
    },
}

M.TimeRange = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.TLEData = {
    type = "structure",
    members = {
        tleLine1 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tleLine2 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        validTimeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TLEEphemeris = {
    type = "structure",
    members = {
        s3Object = {
            type = "structure",
        },
        tleData = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EphemerisData = {
    type = "union",
    members = {
        tle = {
            type = "structure",
        },
        oem = {
            type = "structure",
        },
        azEl = {
            type = "structure",
        },
    },
}

M.CreateEphemerisInput = {
    type = "structure",
    members = {
        satelliteId = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        priority = {
            type = "number",
        },
        expirationTime = {
            type = "timestamp",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        ephemeris = {
            type = "union",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateEphemerisOutput = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
        },
    },
}

M.KmsKey = {
    type = "union",
    members = {
        kmsKeyArn = {
            type = "string",
        },
        kmsAliasArn = {
            type = "string",
        },
        kmsAliasName = {
            type = "string",
        },
    },
}

M.CreateMissionProfileInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contactPrePassDurationSeconds = {
            type = "number",
        },
        contactPostPassDurationSeconds = {
            type = "number",
        },
        minimumViableContactDurationSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        dataflowEdges = {
            type = "list",
            member_type = "list",
            traits = {
                required = true,
            },
        },
        trackingConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        telemetrySinkConfigArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        streamsKmsKey = {
            type = "union",
        },
        streamsKmsRole = {
            type = "string",
        },
    },
}

M.CreateMissionProfileOutput = {
    type = "structure",
    members = {
        missionProfileId = {
            type = "string",
        },
    },
}

M.DeleteDataflowEndpointGroupInput = {
    type = "structure",
    members = {
        dataflowEndpointGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataflowEndpointGroupOutput = {
    type = "structure",
    members = {
        dataflowEndpointGroupId = {
            type = "string",
        },
    },
}

M.GetDataflowEndpointGroupInput = {
    type = "structure",
    members = {
        dataflowEndpointGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDataflowEndpointGroupOutput = {
    type = "structure",
    members = {
        dataflowEndpointGroupId = {
            type = "string",
        },
        dataflowEndpointGroupArn = {
            type = "string",
        },
        endpointsDetails = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        contactPrePassDurationSeconds = {
            type = "number",
        },
        contactPostPassDurationSeconds = {
            type = "number",
        },
    },
}

M.ListDataflowEndpointGroupsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.DataflowEndpointListItem = {
    type = "structure",
    members = {
        dataflowEndpointGroupId = {
            type = "string",
        },
        dataflowEndpointGroupArn = {
            type = "string",
        },
    },
}

M.ListDataflowEndpointGroupsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        dataflowEndpointGroupList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteEphemerisInput = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEphemerisOutput = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteMissionProfileInput = {
    type = "structure",
    members = {
        missionProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMissionProfileOutput = {
    type = "structure",
    members = {
        missionProfileId = {
            type = "string",
        },
    },
}

M.DescribeEphemerisInput = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EphemerisErrorCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    MISMATCHED_SATCAT_ID = "MISMATCHED_SATCAT_ID",
    OEM_VERSION_UNSUPPORTED = "OEM_VERSION_UNSUPPORTED",
    ORIGINATOR_MISSING = "ORIGINATOR_MISSING",
    CREATION_DATE_MISSING = "CREATION_DATE_MISSING",
    OBJECT_NAME_MISSING = "OBJECT_NAME_MISSING",
    OBJECT_ID_MISSING = "OBJECT_ID_MISSING",
    REF_FRAME_UNSUPPORTED = "REF_FRAME_UNSUPPORTED",
    REF_FRAME_EPOCH_UNSUPPORTED = "REF_FRAME_EPOCH_UNSUPPORTED",
    TIME_SYSTEM_UNSUPPORTED = "TIME_SYSTEM_UNSUPPORTED",
    CENTER_BODY_UNSUPPORTED = "CENTER_BODY_UNSUPPORTED",
    INTERPOLATION_MISSING = "INTERPOLATION_MISSING",
    INTERPOLATION_DEGREE_INVALID = "INTERPOLATION_DEGREE_INVALID",
    AZ_EL_SEGMENT_LIST_MISSING = "AZ_EL_SEGMENT_LIST_MISSING",
    INSUFFICIENT_TIME_AZ_EL = "INSUFFICIENT_TIME_AZ_EL",
    START_TIME_IN_FUTURE = "START_TIME_IN_FUTURE",
    END_TIME_IN_PAST = "END_TIME_IN_PAST",
    EXPIRATION_TIME_TOO_EARLY = "EXPIRATION_TIME_TOO_EARLY",
    START_TIME_METADATA_TOO_EARLY = "START_TIME_METADATA_TOO_EARLY",
    STOP_TIME_METADATA_TOO_LATE = "STOP_TIME_METADATA_TOO_LATE",
    AZ_EL_SEGMENT_END_TIME_BEFORE_START_TIME = "AZ_EL_SEGMENT_END_TIME_BEFORE_START_TIME",
    AZ_EL_SEGMENT_TIMES_OVERLAP = "AZ_EL_SEGMENT_TIMES_OVERLAP",
    AZ_EL_SEGMENTS_OUT_OF_ORDER = "AZ_EL_SEGMENTS_OUT_OF_ORDER",
    TIME_AZ_EL_ITEMS_OUT_OF_ORDER = "TIME_AZ_EL_ITEMS_OUT_OF_ORDER",
    MEAN_MOTION_INVALID = "MEAN_MOTION_INVALID",
    TIME_AZ_EL_AZ_RADIAN_RANGE_INVALID = "TIME_AZ_EL_AZ_RADIAN_RANGE_INVALID",
    TIME_AZ_EL_EL_RADIAN_RANGE_INVALID = "TIME_AZ_EL_EL_RADIAN_RANGE_INVALID",
    TIME_AZ_EL_AZ_DEGREE_RANGE_INVALID = "TIME_AZ_EL_AZ_DEGREE_RANGE_INVALID",
    TIME_AZ_EL_EL_DEGREE_RANGE_INVALID = "TIME_AZ_EL_EL_DEGREE_RANGE_INVALID",
    TIME_AZ_EL_ANGLE_UNITS_INVALID = "TIME_AZ_EL_ANGLE_UNITS_INVALID",
    INSUFFICIENT_KMS_PERMISSIONS = "INSUFFICIENT_KMS_PERMISSIONS",
    FILE_FORMAT_INVALID = "FILE_FORMAT_INVALID",
    AZ_EL_SEGMENT_REFERENCE_EPOCH_INVALID = "AZ_EL_SEGMENT_REFERENCE_EPOCH_INVALID",
    AZ_EL_SEGMENT_START_TIME_INVALID = "AZ_EL_SEGMENT_START_TIME_INVALID",
    AZ_EL_SEGMENT_END_TIME_INVALID = "AZ_EL_SEGMENT_END_TIME_INVALID",
    AZ_EL_SEGMENT_VALID_TIME_RANGE_INVALID = "AZ_EL_SEGMENT_VALID_TIME_RANGE_INVALID",
    AZ_EL_SEGMENT_END_TIME_TOO_LATE = "AZ_EL_SEGMENT_END_TIME_TOO_LATE",
    AZ_EL_TOTAL_DURATION_EXCEEDED = "AZ_EL_TOTAL_DURATION_EXCEEDED",
}

M.EphemerisErrorReason = {
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

M.EphemerisInvalidReason = {
    METADATA_INVALID = "METADATA_INVALID",
    TIME_RANGE_INVALID = "TIME_RANGE_INVALID",
    TRAJECTORY_INVALID = "TRAJECTORY_INVALID",
    KMS_KEY_INVALID = "KMS_KEY_INVALID",
    VALIDATION_ERROR = "VALIDATION_ERROR",
}

M.EphemerisStatus = {
    VALIDATING = "VALIDATING",
    INVALID = "INVALID",
    ERROR = "ERROR",
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    EXPIRED = "EXPIRED",
}

M.EphemerisDescription = {
    type = "structure",
    members = {
        sourceS3Object = {
            type = "structure",
        },
        ephemerisData = {
            type = "string",
        },
    },
}

M.EphemerisTypeDescription = {
    type = "union",
    members = {
        tle = {
            type = "structure",
        },
        oem = {
            type = "structure",
        },
        azEl = {
            type = "structure",
        },
    },
}

M.DescribeEphemerisOutput = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
        },
        satelliteId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        priority = {
            type = "number",
        },
        creationTime = {
            type = "timestamp",
        },
        enabled = {
            type = "boolean",
        },
        name = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        suppliedData = {
            type = "union",
        },
        invalidReason = {
            type = "string",
        },
        errorReasons = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EphemerisItem = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
        },
        ephemerisType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        priority = {
            type = "number",
        },
        enabled = {
            type = "boolean",
        },
        creationTime = {
            type = "timestamp",
        },
        name = {
            type = "string",
        },
        sourceS3Object = {
            type = "structure",
        },
    },
}

M.ListEphemeridesInput = {
    type = "structure",
    members = {
        satelliteId = {
            type = "string",
        },
        ephemerisType = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        statusList = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListEphemeridesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        ephemerides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateEphemerisInput = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        priority = {
            type = "number",
        },
    },
}

M.UpdateEphemerisOutput = {
    type = "structure",
    members = {
        ephemerisId = {
            type = "string",
        },
    },
}

M.EphemerisSource = {
    CUSTOMER_PROVIDED = "CUSTOMER_PROVIDED",
    SPACE_TRACK = "SPACE_TRACK",
}

M.EphemerisMetaData = {
    type = "structure",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ephemerisId = {
            type = "string",
        },
        epoch = {
            type = "timestamp",
        },
        name = {
            type = "string",
        },
    },
}

M.GetAgentTaskResponseUrlInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAgentTaskResponseUrlOutput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        presignedLogUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMinuteUsageInput = {
    type = "structure",
    members = {
        month = {
            type = "number",
            traits = {
                required = true,
            },
        },
        year = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMinuteUsageOutput = {
    type = "structure",
    members = {
        isReservedMinutesCustomer = {
            type = "boolean",
        },
        totalReservedMinuteAllocation = {
            type = "number",
        },
        upcomingMinutesScheduled = {
            type = "number",
        },
        totalScheduledMinutes = {
            type = "number",
        },
        estimatedMinutesRemaining = {
            type = "number",
        },
    },
}

M.GetMissionProfileInput = {
    type = "structure",
    members = {
        missionProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMissionProfileOutput = {
    type = "structure",
    members = {
        missionProfileId = {
            type = "string",
        },
        missionProfileArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        region = {
            type = "string",
        },
        contactPrePassDurationSeconds = {
            type = "number",
        },
        contactPostPassDurationSeconds = {
            type = "number",
        },
        minimumViableContactDurationSeconds = {
            type = "number",
        },
        dataflowEdges = {
            type = "list",
            member_type = "list",
        },
        trackingConfigArn = {
            type = "string",
        },
        telemetrySinkConfigArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        streamsKmsKey = {
            type = "union",
        },
        streamsKmsRole = {
            type = "string",
        },
    },
}

M.GetSatelliteInput = {
    type = "structure",
    members = {
        satelliteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSatelliteOutput = {
    type = "structure",
    members = {
        satelliteId = {
            type = "string",
        },
        satelliteArn = {
            type = "string",
        },
        noradSatelliteID = {
            type = "number",
        },
        groundStations = {
            type = "list",
            member_type = "string",
        },
        currentEphemeris = {
            type = "structure",
        },
    },
}

M.ListAntennasInput = {
    type = "structure",
    members = {
        groundStationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListAntennasOutput = {
    type = "structure",
    members = {
        antennaList = {
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

M.ReservationType = {
    MAINTENANCE = "MAINTENANCE",
    CONTACT = "CONTACT",
}

M.ListGroundStationReservationsInput = {
    type = "structure",
    members = {
        groundStationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        reservationTypes = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "reservationTypes",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.MaintenanceType = {
    PLANNED = "PLANNED",
    UNPLANNED = "UNPLANNED",
}

M.MaintenanceReservationDetails = {
    type = "structure",
    members = {
        maintenanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReservationDetails = {
    type = "union",
    members = {
        maintenance = {
            type = "structure",
        },
        contact = {
            type = "structure",
        },
    },
}

M.GroundStationReservationListItem = {
    type = "structure",
    members = {
        reservationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groundStationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        antennaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        reservationDetails = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ListGroundStationReservationsOutput = {
    type = "structure",
    members = {
        reservationList = {
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

M.ListGroundStationsInput = {
    type = "structure",
    members = {
        satelliteId = {
            type = "string",
            traits = {
                http_query = "satelliteId",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GroundStationData = {
    type = "structure",
    members = {
        groundStationId = {
            type = "string",
        },
        groundStationName = {
            type = "string",
        },
        region = {
            type = "string",
        },
    },
}

M.ListGroundStationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        groundStationList = {
            type = "list",
            member_type = "structure",
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

M.ListMissionProfilesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.MissionProfileListItem = {
    type = "structure",
    members = {
        missionProfileId = {
            type = "string",
        },
        missionProfileArn = {
            type = "string",
        },
        region = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.ListMissionProfilesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        missionProfileList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateMissionProfileInput = {
    type = "structure",
    members = {
        missionProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        contactPrePassDurationSeconds = {
            type = "number",
        },
        contactPostPassDurationSeconds = {
            type = "number",
        },
        minimumViableContactDurationSeconds = {
            type = "number",
        },
        dataflowEdges = {
            type = "list",
            member_type = "list",
        },
        trackingConfigArn = {
            type = "string",
        },
        telemetrySinkConfigArn = {
            type = "string",
        },
        streamsKmsKey = {
            type = "union",
        },
        streamsKmsRole = {
            type = "string",
        },
    },
}

M.UpdateMissionProfileOutput = {
    type = "structure",
    members = {
        missionProfileId = {
            type = "string",
        },
    },
}

M.ListSatellitesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.SatelliteListItem = {
    type = "structure",
    members = {
        satelliteId = {
            type = "string",
        },
        satelliteArn = {
            type = "string",
        },
        noradSatelliteID = {
            type = "number",
        },
        groundStations = {
            type = "list",
            member_type = "string",
        },
        currentEphemeris = {
            type = "structure",
        },
    },
}

M.ListSatellitesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        satellites = {
            type = "list",
            member_type = "structure",
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
