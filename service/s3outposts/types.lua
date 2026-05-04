local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EndpointAccessType = {
    PRIVATE = "Private",
    CUSTOMER_OWNED_IP = "CustomerOwnedIp",
}

M.CreateEndpointInput = {
    type = "structure",
    id = "CreateEndpointInput",
    members = {
        OutpostId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessType = {
            type = "string",
        },
        CustomerOwnedIpv4Pool = {
            type = "string",
        },
    },
}

M.CreateEndpointOutput = {
    type = "structure",
    id = "CreateEndpointOutput",
    members = {
        EndpointArn = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OutpostOfflineException = {
    type = "structure",
    id = "OutpostOfflineException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteEndpointInput = {
    type = "structure",
    id = "DeleteEndpointInput",
    members = {
        EndpointId = {
            type = "string",
            traits = {
                http_query = "endpointId",
                required = true,
            },
        },
        OutpostId = {
            type = "string",
            traits = {
                http_query = "outpostId",
                required = true,
            },
        },
    },
}

M.DeleteEndpointOutput = {
    type = "structure",
    id = "DeleteEndpointOutput",
}

M.FailedReason = {
    type = "structure",
    id = "FailedReason",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.NetworkInterface = {
    type = "structure",
    id = "NetworkInterface",
    members = {
        NetworkInterfaceId = {
            type = "string",
        },
    },
}

M.EndpointStatus = {
    PENDING = "Pending",
    AVAILABLE = "Available",
    DELETING = "Deleting",
    CREATE_FAILED = "Create_Failed",
    DELETE_FAILED = "Delete_Failed",
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
    members = {
        EndpointArn = {
            type = "string",
        },
        OutpostsId = {
            type = "string",
        },
        CidrBlock = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        NetworkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
        VpcId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        SecurityGroupId = {
            type = "string",
        },
        AccessType = {
            type = "string",
        },
        CustomerOwnedIpv4Pool = {
            type = "string",
        },
        FailedReason = M.FailedReason,
    },
}

M.ListEndpointsInput = {
    type = "structure",
    id = "ListEndpointsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListEndpointsOutput = {
    type = "structure",
    id = "ListEndpointsOutput",
    members = {
        Endpoints = {
            type = "list",
            member = M.Endpoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOutpostsWithS3Input = {
    type = "structure",
    id = "ListOutpostsWithS3Input",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.Outpost = {
    type = "structure",
    id = "Outpost",
    members = {
        OutpostArn = {
            type = "string",
        },
        S3OutpostArn = {
            type = "string",
        },
        OutpostId = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        CapacityInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListOutpostsWithS3Output = {
    type = "structure",
    id = "ListOutpostsWithS3Output",
    members = {
        Outposts = {
            type = "list",
            member = M.Outpost,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSharedEndpointsInput = {
    type = "structure",
    id = "ListSharedEndpointsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        OutpostId = {
            type = "string",
            traits = {
                http_query = "outpostId",
                required = true,
            },
        },
    },
}

M.ListSharedEndpointsOutput = {
    type = "structure",
    id = "ListSharedEndpointsOutput",
    members = {
        Endpoints = {
            type = "list",
            member = M.Endpoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
