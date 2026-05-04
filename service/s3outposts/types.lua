local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        EndpointArn = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OutpostOfflineException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteEndpointInput = {
    type = "structure",
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
}

M.FailedReason = {
    type = "structure",
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
            member_type = "structure",
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
        FailedReason = {
            type = "structure",
        },
    },
}

M.ListEndpointsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListEndpointsOutput = {
    type = "structure",
    members = {
        Endpoints = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOutpostsWithS3Input = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.Outpost = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListOutpostsWithS3Output = {
    type = "structure",
    members = {
        Outposts = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSharedEndpointsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
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
    members = {
        Endpoints = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
