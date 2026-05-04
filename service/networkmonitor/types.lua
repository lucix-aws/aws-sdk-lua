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

M.AddressFamily = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
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

M.Protocol = {
    TCP = "TCP",
    ICMP = "ICMP",
}

M.CreateMonitorProbeInput = {
    type = "structure",
    id = "CreateMonitorProbeInput",
    members = {
        sourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationPort = {
            type = "integer",
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        packetSize = {
            type = "integer",
        },
        probeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        probes = {
            type = "list",
            member = M.CreateMonitorProbeInput,
        },
        aggregationPeriod = {
            type = "long",
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

M.MonitorState = {
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
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationPeriod = {
            type = "long",
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

M.ProbeInput = {
    type = "structure",
    id = "ProbeInput",
    members = {
        sourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationPort = {
            type = "integer",
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        packetSize = {
            type = "integer",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateProbeInput = {
    type = "structure",
    id = "CreateProbeInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        probe = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProbeInput }),
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

M.ProbeState = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    ERROR = "ERROR",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.CreateProbeOutput = {
    type = "structure",
    id = "CreateProbeOutput",
    members = {
        probeId = {
            type = "string",
        },
        probeArn = {
            type = "string",
        },
        sourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationPort = {
            type = "integer",
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        packetSize = {
            type = "integer",
        },
        addressFamily = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        state = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
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

M.DeleteProbeInput = {
    type = "structure",
    id = "DeleteProbeInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        probeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProbeOutput = {
    type = "structure",
    id = "DeleteProbeOutput",
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

M.Probe = {
    type = "structure",
    id = "Probe",
    members = {
        probeId = {
            type = "string",
        },
        probeArn = {
            type = "string",
        },
        sourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationPort = {
            type = "integer",
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        packetSize = {
            type = "integer",
        },
        addressFamily = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        state = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationPeriod = {
            type = "long",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        probes = {
            type = "list",
            member = M.Probe,
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
    },
}

M.GetProbeInput = {
    type = "structure",
    id = "GetProbeInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        probeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProbeOutput = {
    type = "structure",
    id = "GetProbeOutput",
    members = {
        probeId = {
            type = "string",
        },
        probeArn = {
            type = "string",
        },
        sourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationPort = {
            type = "integer",
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        packetSize = {
            type = "integer",
        },
        addressFamily = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        state = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
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
        state = {
            type = "string",
            traits = {
                http_query = "state",
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
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationPeriod = {
            type = "long",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        aggregationPeriod = {
            type = "long",
            traits = {
                required = true,
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
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationPeriod = {
            type = "long",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateProbeInput = {
    type = "structure",
    id = "UpdateProbeInput",
    members = {
        monitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        probeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        state = {
            type = "string",
        },
        destination = {
            type = "string",
        },
        destinationPort = {
            type = "integer",
        },
        protocol = {
            type = "string",
        },
        packetSize = {
            type = "integer",
        },
    },
}

M.UpdateProbeOutput = {
    type = "structure",
    id = "UpdateProbeOutput",
    members = {
        probeId = {
            type = "string",
        },
        probeArn = {
            type = "string",
        },
        sourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationPort = {
            type = "integer",
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        packetSize = {
            type = "integer",
        },
        addressFamily = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        state = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
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
