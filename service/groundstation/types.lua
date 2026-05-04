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
            member = { type = "string" },
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
            member = { type = "integer" },
        },
        agentCpuCores = {
            type = "list",
            member = { type = "integer" },
        },
        componentVersions = {
            type = "list",
            member = M.ComponentVersion,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        privateIpAddresses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        capabilityArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterAgentInput = {
    type = "structure",
    members = {
        discoveryData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DiscoveryData }),
        agentDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentDetails }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "boolean" },
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
            type = "long",
        },
        bytesReceived = {
            type = "long",
        },
        packetsDropped = {
            type = "long",
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
        aggregateStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AggregateStatus }),
        componentStatuses = {
            type = "list",
            member = M.ComponentStatusData,
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
            type = "double",
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
            type = "double",
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
        centerFrequency = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Frequency }),
        bandwidth = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FrequencyBandwidth }),
        polarization = {
            type = "string",
        },
    },
}

M.AntennaDownlinkConfig = {
    type = "structure",
    members = {
        spectrumConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SpectrumConfig }),
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
        spectrumConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SpectrumConfig }),
        demodulationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DemodulationConfig }),
        decodeConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DecodeConfig }),
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
        centerFrequency = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Frequency }),
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
            type = "double",
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
        spectrumConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UplinkSpectrumConfig }),
        targetEirp = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Eirp }),
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
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionDetails = {
    type = "structure",
    members = {
        socketAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SocketAddress }),
        mtu = {
            type = "integer",
        },
    },
}

M.IntegerRange = {
    type = "structure",
    members = {
        minimum = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        maximum = {
            type = "integer",
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
        portRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IntegerRange }),
    },
}

M.RangedConnectionDetails = {
    type = "structure",
    members = {
        socketAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RangedSocketAddress }),
        mtu = {
            type = "integer",
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
        egressAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectionDetails }),
        ingressAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RangedConnectionDetails }),
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
            type = "double",
            traits = {
                required = true,
            },
        },
        az = {
            type = "double",
            traits = {
                required = true,
            },
        },
        el = {
            type = "double",
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
        validTimeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ISO8601TimeRange }),
        azElList = {
            type = "list",
            member = M.TimeAzEl,
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
            member = M.AzElSegment,
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
        s3Object = M.S3Object,
        azElData = M.AzElSegments,
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
        data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AzElSegmentsData }),
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
            type = "integer",
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
        kinesisDataStreamData = M.KinesisDataStreamData,
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
        telemetrySinkData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelemetrySinkData }),
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
        antennaDownlinkConfig = M.AntennaDownlinkConfig,
        trackingConfig = M.TrackingConfig,
        dataflowEndpointConfig = M.DataflowEndpointConfig,
        antennaDownlinkDemodDecodeConfig = M.AntennaDownlinkDemodDecodeConfig,
        antennaUplinkConfig = M.AntennaUplinkConfig,
        uplinkEchoConfig = M.UplinkEchoConfig,
        s3RecordingConfig = M.S3RecordingConfig,
        telemetrySinkConfig = M.TelemetrySinkConfig,
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
        configData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigTypeData }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        configData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigTypeData }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListConfigsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
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
            member = M.ConfigListItem,
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
        configData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigTypeData }),
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
        agentIpAndPortAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RangedConnectionDetails }),
        egressAddressAndPort = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectionDetails }),
    },
}

M.DownlinkDataflowDetails = {
    type = "union",
    members = {
        agentConnectionDetails = M.DownlinkConnectionDetails,
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
        dataflowDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DownlinkDataflowDetails }),
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
        address = M.SocketAddress,
        status = {
            type = "string",
        },
        mtu = {
            type = "integer",
        },
    },
}

M.SecurityDetails = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
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
        ingressAddressAndPort = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectionDetails }),
        agentIpAndPortAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RangedConnectionDetails }),
    },
}

M.UplinkDataflowDetails = {
    type = "union",
    members = {
        agentConnectionDetails = M.UplinkConnectionDetails,
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
        dataflowDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UplinkDataflowDetails }),
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
        securityDetails = M.SecurityDetails,
        endpoint = M.DataflowEndpoint,
        awsGroundStationAgentEndpoint = M.AwsGroundStationAgentEndpoint,
        uplinkAwsGroundStationAgentEndpoint = M.UplinkAwsGroundStationAgentEndpointDetails,
        downlinkAwsGroundStationAgentEndpoint = M.DownlinkAwsGroundStationAgentEndpointDetails,
        healthStatus = {
            type = "string",
        },
        healthReasons = {
            type = "list",
            member = { type = "string" },
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
        endpointDetails = M.EndpointDetails,
        antennaDemodDecodeDetails = M.AntennaDemodDecodeDetails,
        s3RecordingDetails = M.S3RecordingDetails,
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
        configDetails = M.ConfigDetails,
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
        configDetails = M.ConfigDetails,
        dataflowSourceRegion = {
            type = "string",
        },
    },
}

M.DataflowDetail = {
    type = "structure",
    members = {
        source = M.Source,
        destination = M.Destination,
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
            type = "double",
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
        azEl = M.AzElProgramTrackSettings,
        oem = M.OemProgramTrackSettings,
        tle = M.TleProgramTrackSettings,
    },
}

M.TrackingOverrides = {
    type = "structure",
    members = {
        programTrackSettings = M.ProgramTrackSettings,
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
            type = "integer",
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
            member = { type = "string" },
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
        maximumElevation = M.Elevation,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        region = {
            type = "string",
        },
        dataflowList = {
            type = "list",
            member = M.DataflowDetail,
        },
        visibilityStartTime = {
            type = "timestamp",
        },
        visibilityEndTime = {
            type = "timestamp",
        },
        trackingOverrides = M.TrackingOverrides,
        ephemeris = M.EphemerisResponseData,
        version = M.ContactVersion,
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
            type = "integer",
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
        maximumElevation = M.Elevation,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        region = {
            type = "string",
        },
        dataflowList = {
            type = "list",
            member = M.DataflowDetail,
        },
        visibilityStartTime = {
            type = "timestamp",
        },
        visibilityEndTime = {
            type = "timestamp",
        },
        trackingOverrides = M.TrackingOverrides,
        ephemeris = M.EphemerisResponseData,
        version = M.ContactVersion,
    },
}

M.EphemerisFilter = {
    type = "union",
    members = {
        azEl = M.AzElEphemerisFilter,
    },
}

M.ListContactsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        statusList = {
            type = "list",
            member = { type = "string" },
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
        ephemeris = M.EphemerisFilter,
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
        maximumElevation = M.Elevation,
        region = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        visibilityStartTime = {
            type = "timestamp",
        },
        visibilityEndTime = {
            type = "timestamp",
        },
        ephemeris = M.EphemerisResponseData,
        version = M.ContactVersion,
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
            member = M.ContactData,
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
            type = "integer",
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
            member = M.ContactVersion,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        trackingOverrides = M.TrackingOverrides,
    },
}

M.ReserveContactOutput = {
    type = "structure",
    members = {
        contactId = {
            type = "string",
        },
        versionId = {
            type = "integer",
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
        trackingOverrides = M.TrackingOverrides,
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
            type = "integer",
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
            member = M.EndpointDetails,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        contactPrePassDurationSeconds = {
            type = "integer",
        },
        contactPostPassDurationSeconds = {
            type = "integer",
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
        dataflowDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DownlinkDataflowDetails }),
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
        dataflowDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UplinkDataflowDetails }),
    },
}

M.CreateEndpointDetails = {
    type = "union",
    members = {
        uplinkAwsGroundStationAgentEndpoint = M.UplinkAwsGroundStationAgentEndpoint,
        downlinkAwsGroundStationAgentEndpoint = M.DownlinkAwsGroundStationAgentEndpoint,
    },
}

M.CreateDataflowEndpointGroupV2Input = {
    type = "structure",
    members = {
        endpoints = {
            type = "list",
            member = M.CreateEndpointDetails,
            traits = {
                required = true,
            },
        },
        contactPrePassDurationSeconds = {
            type = "integer",
        },
        contactPostPassDurationSeconds = {
            type = "integer",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        s3Object = M.S3Object,
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
        validTimeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeRange }),
    },
}

M.TLEEphemeris = {
    type = "structure",
    members = {
        s3Object = M.S3Object,
        tleData = {
            type = "list",
            member = M.TLEData,
        },
    },
}

M.EphemerisData = {
    type = "union",
    members = {
        tle = M.TLEEphemeris,
        oem = M.OEMEphemeris,
        azEl = M.AzElEphemeris,
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
            type = "integer",
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
        ephemeris = M.EphemerisData,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
        },
        contactPostPassDurationSeconds = {
            type = "integer",
        },
        minimumViableContactDurationSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        dataflowEdges = {
            type = "list",
            member = { type = "list" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        streamsKmsKey = M.KmsKey,
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
            member = M.EndpointDetails,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        contactPrePassDurationSeconds = {
            type = "integer",
        },
        contactPostPassDurationSeconds = {
            type = "integer",
        },
    },
}

M.ListDataflowEndpointGroupsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
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
            member = M.DataflowEndpointListItem,
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
        sourceS3Object = M.S3Object,
        ephemerisData = {
            type = "string",
        },
    },
}

M.EphemerisTypeDescription = {
    type = "union",
    members = {
        tle = M.EphemerisDescription,
        oem = M.EphemerisDescription,
        azEl = M.EphemerisDescription,
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
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        suppliedData = M.EphemerisTypeDescription,
        invalidReason = {
            type = "string",
        },
        errorReasons = {
            type = "list",
            member = M.EphemerisErrorReason,
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
            type = "integer",
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
        sourceS3Object = M.S3Object,
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
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
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
            member = M.EphemerisItem,
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
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        year = {
            type = "integer",
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
            type = "integer",
        },
        upcomingMinutesScheduled = {
            type = "integer",
        },
        totalScheduledMinutes = {
            type = "integer",
        },
        estimatedMinutesRemaining = {
            type = "integer",
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
            type = "integer",
        },
        contactPostPassDurationSeconds = {
            type = "integer",
        },
        minimumViableContactDurationSeconds = {
            type = "integer",
        },
        dataflowEdges = {
            type = "list",
            member = { type = "list" },
        },
        trackingConfigArn = {
            type = "string",
        },
        telemetrySinkConfigArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        streamsKmsKey = M.KmsKey,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        groundStations = {
            type = "list",
            member = { type = "string" },
        },
        currentEphemeris = M.EphemerisMetaData,
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
            type = "integer",
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
            member = M.AntennaListItem,
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
            member = { type = "string" },
            traits = {
                http_query = "reservationTypes",
            },
        },
        maxResults = {
            type = "integer",
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
        maintenance = M.MaintenanceReservationDetails,
        contact = M.ContactReservationDetails,
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
        reservationDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReservationDetails }),
    },
}

M.ListGroundStationReservationsOutput = {
    type = "structure",
    members = {
        reservationList = {
            type = "list",
            member = M.GroundStationReservationListItem,
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
            type = "integer",
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
            member = M.GroundStationData,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListMissionProfilesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
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
            member = M.MissionProfileListItem,
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
            type = "integer",
        },
        contactPostPassDurationSeconds = {
            type = "integer",
        },
        minimumViableContactDurationSeconds = {
            type = "integer",
        },
        dataflowEdges = {
            type = "list",
            member = { type = "list" },
        },
        trackingConfigArn = {
            type = "string",
        },
        telemetrySinkConfigArn = {
            type = "string",
        },
        streamsKmsKey = M.KmsKey,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        groundStations = {
            type = "list",
            member = { type = "string" },
        },
        currentEphemeris = M.EphemerisMetaData,
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
            member = M.SatelliteListItem,
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
}

return M
