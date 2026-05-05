local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.s3outposts"

local M = {}

M.Endpoints = schema.new({ type = "list", list_member = M.Endpoint })

M.Outposts = schema.new({ type = "list", list_member = M.Outpost })

M.NetworkInterfaces = schema.new({ type = "list", list_member = M.NetworkInterface })

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEndpointInput = schema.new({
    id = id.from(_N, "CreateEndpointRequest"),
    type = "structure",
    members = {
        OutpostId = schema.new({
            id = id.from(_N, "CreateEndpointInput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetId = schema.new({
            id = id.from(_N, "CreateEndpointInput", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecurityGroupId = schema.new({
            id = id.from(_N, "CreateEndpointInput", "SecurityGroupId"),
            type = "string",
            name = "SecurityGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessType = schema.new({
            id = id.from(_N, "CreateEndpointInput", "AccessType"),
            type = "string",
            name = "AccessType",
            target_id = prelude.String.id,
        }),
        CustomerOwnedIpv4Pool = schema.new({
            id = id.from(_N, "CreateEndpointInput", "CustomerOwnedIpv4Pool"),
            type = "string",
            name = "CustomerOwnedIpv4Pool",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEndpointOutput = schema.new({
    id = id.from(_N, "CreateEndpointResult"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "CreateEndpointOutput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OutpostOfflineException = schema.new({
    id = id.from(_N, "OutpostOfflineException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OutpostOfflineException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteEndpointInput = schema.new({
    id = id.from(_N, "DeleteEndpointRequest"),
    type = "structure",
    members = {
        EndpointId = schema.new({
            id = id.from(_N, "DeleteEndpointInput", "EndpointId"),
            type = "string",
            name = "EndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "endpointId" },
            },
        }),
        OutpostId = schema.new({
            id = id.from(_N, "DeleteEndpointInput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "outpostId" },
            },
        }),
    },
})

M.DeleteEndpointOutput = prelude.Unit

M.FailedReason = schema.new({
    id = id.from(_N, "FailedReason"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "FailedReason", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "FailedReason", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkInterface = schema.new({
    id = id.from(_N, "NetworkInterface"),
    type = "structure",
    members = {
        NetworkInterfaceId = schema.new({
            id = id.from(_N, "NetworkInterface", "NetworkInterfaceId"),
            type = "string",
            name = "NetworkInterfaceId",
            target_id = prelude.String.id,
        }),
    },
})

M.Endpoint = schema.new({
    id = id.from(_N, "Endpoint"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "Endpoint", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
        }),
        OutpostsId = schema.new({
            id = id.from(_N, "Endpoint", "OutpostsId"),
            type = "string",
            name = "OutpostsId",
            target_id = prelude.String.id,
        }),
        CidrBlock = schema.new({
            id = id.from(_N, "Endpoint", "CidrBlock"),
            type = "string",
            name = "CidrBlock",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Endpoint", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "Endpoint", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        NetworkInterfaces = schema.new({
            id = id.from(_N, "Endpoint", "NetworkInterfaces"),
            type = "list",
            name = "NetworkInterfaces",
            target_id = prelude.Document.id,
            list_member = M.NetworkInterface,
        }),
        VpcId = schema.new({
            id = id.from(_N, "Endpoint", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetId = schema.new({
            id = id.from(_N, "Endpoint", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
        }),
        SecurityGroupId = schema.new({
            id = id.from(_N, "Endpoint", "SecurityGroupId"),
            type = "string",
            name = "SecurityGroupId",
            target_id = prelude.String.id,
        }),
        AccessType = schema.new({
            id = id.from(_N, "Endpoint", "AccessType"),
            type = "string",
            name = "AccessType",
            target_id = prelude.String.id,
        }),
        CustomerOwnedIpv4Pool = schema.new({
            id = id.from(_N, "Endpoint", "CustomerOwnedIpv4Pool"),
            type = "string",
            name = "CustomerOwnedIpv4Pool",
            target_id = prelude.String.id,
        }),
        FailedReason = schema.new({
            id = id.from(_N, "Endpoint", "FailedReason"),
            type = "structure",
            name = "FailedReason",
            target_id = id.from(_N, "FailedReason"),
            target = M.FailedReason,
        }),
    },
})

M.ListEndpointsInput = schema.new({
    id = id.from(_N, "ListEndpointsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListEndpointsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEndpointsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListEndpointsOutput = schema.new({
    id = id.from(_N, "ListEndpointsResult"),
    type = "structure",
    members = {
        Endpoints = schema.new({
            id = id.from(_N, "ListEndpointsOutput", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = M.Endpoint,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEndpointsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOutpostsWithS3Input = schema.new({
    id = id.from(_N, "ListOutpostsWithS3Request"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListOutpostsWithS3Input", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOutpostsWithS3Input", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.Outpost = schema.new({
    id = id.from(_N, "Outpost"),
    type = "structure",
    members = {
        OutpostArn = schema.new({
            id = id.from(_N, "Outpost", "OutpostArn"),
            type = "string",
            name = "OutpostArn",
            target_id = prelude.String.id,
        }),
        S3OutpostArn = schema.new({
            id = id.from(_N, "Outpost", "S3OutpostArn"),
            type = "string",
            name = "S3OutpostArn",
            target_id = prelude.String.id,
        }),
        OutpostId = schema.new({
            id = id.from(_N, "Outpost", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "Outpost", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        CapacityInBytes = schema.new({
            id = id.from(_N, "Outpost", "CapacityInBytes"),
            type = "long",
            name = "CapacityInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListOutpostsWithS3Output = schema.new({
    id = id.from(_N, "ListOutpostsWithS3Result"),
    type = "structure",
    members = {
        Outposts = schema.new({
            id = id.from(_N, "ListOutpostsWithS3Output", "Outposts"),
            type = "list",
            name = "Outposts",
            target_id = prelude.Document.id,
            list_member = M.Outpost,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOutpostsWithS3Output", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSharedEndpointsInput = schema.new({
    id = id.from(_N, "ListSharedEndpointsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListSharedEndpointsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSharedEndpointsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        OutpostId = schema.new({
            id = id.from(_N, "ListSharedEndpointsInput", "OutpostId"),
            type = "string",
            name = "OutpostId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "outpostId" },
            },
        }),
    },
})

M.ListSharedEndpointsOutput = schema.new({
    id = id.from(_N, "ListSharedEndpointsResult"),
    type = "structure",
    members = {
        Endpoints = schema.new({
            id = id.from(_N, "ListSharedEndpointsOutput", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = M.Endpoint,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSharedEndpointsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
