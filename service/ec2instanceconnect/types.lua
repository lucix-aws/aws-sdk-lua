local M = {}

M.AuthException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EC2InstanceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EC2InstanceStateInvalidException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EC2InstanceTypeInvalidException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EC2InstanceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidArgsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SendSerialConsoleSSHPublicKeyInput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SerialPort = {
            type = "number",
        },
        SSHPublicKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendSerialConsoleSSHPublicKeyOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Success = {
            type = "boolean",
        },
    },
}

M.SerialConsoleAccessDisabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SerialConsoleSessionLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SerialConsoleSessionUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SerialConsoleSessionUnsupportedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    error = "server",
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

M.SendSSHPublicKeyInput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceOSUser = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SSHPublicKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
    },
}

M.SendSSHPublicKeyOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
        },
        Success = {
            type = "boolean",
        },
    },
}

return M
