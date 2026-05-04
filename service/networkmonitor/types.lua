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

M.AddressFamily = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
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

M.Protocol = {
    TCP = "TCP",
    ICMP = "ICMP",
}

M.CreateMonitorProbeInput = {
    type = "structure",
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

M.ProbeInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
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

M.DeleteProbeInput = {
    type = "structure",
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

M.Probe = {
    type = "structure",
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
