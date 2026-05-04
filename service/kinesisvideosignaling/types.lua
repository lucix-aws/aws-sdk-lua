local M = {}

M.ClientLimitExceededException = {
    type = "structure",
    id = "ClientLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Service = {
    TURN = "TURN",
}

M.GetIceServerConfigInput = {
    type = "structure",
    id = "GetIceServerConfigInput",
    members = {
        ChannelARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
        },
        Service = {
            type = "string",
        },
        Username = {
            type = "string",
        },
    },
}

M.IceServer = {
    type = "structure",
    id = "IceServer",
    members = {
        Uris = {
            type = "list",
            member = { type = "string" },
        },
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        Ttl = {
            type = "integer",
        },
    },
}

M.GetIceServerConfigOutput = {
    type = "structure",
    id = "GetIceServerConfigOutput",
    members = {
        IceServerList = {
            type = "list",
            member = M.IceServer,
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    id = "InvalidArgumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidClientException = {
    type = "structure",
    id = "InvalidClientException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotAuthorizedException = {
    type = "structure",
    id = "NotAuthorizedException",
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

M.SessionExpiredException = {
    type = "structure",
    id = "SessionExpiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SendAlexaOfferToMasterInput = {
    type = "structure",
    id = "SendAlexaOfferToMasterInput",
    members = {
        ChannelARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessagePayload = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendAlexaOfferToMasterOutput = {
    type = "structure",
    id = "SendAlexaOfferToMasterOutput",
    members = {
        Answer = {
            type = "string",
        },
    },
}

return M
