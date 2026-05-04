local M = {}

M.ClientLimitExceededException = {
    type = "structure",
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
    members = {
        Uris = {
            type = "list",
            member_type = "string",
        },
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        Ttl = {
            type = "number",
        },
    },
}

M.GetIceServerConfigOutput = {
    type = "structure",
    members = {
        IceServerList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidClientException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotAuthorizedException = {
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

M.SessionExpiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SendAlexaOfferToMasterInput = {
    type = "structure",
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
    members = {
        Answer = {
            type = "string",
        },
    },
}

return M
