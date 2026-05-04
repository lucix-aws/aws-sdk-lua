local M = {}

M.AuthException = {
    type = "structure",
    id = "AuthException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EC2InstanceNotFoundException = {
    type = "structure",
    id = "EC2InstanceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EC2InstanceStateInvalidException = {
    type = "structure",
    id = "EC2InstanceStateInvalidException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EC2InstanceTypeInvalidException = {
    type = "structure",
    id = "EC2InstanceTypeInvalidException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EC2InstanceUnavailableException = {
    type = "structure",
    id = "EC2InstanceUnavailableException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidArgsException = {
    type = "structure",
    id = "InvalidArgsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SendSerialConsoleSSHPublicKeyInput = {
    type = "structure",
    id = "SendSerialConsoleSSHPublicKeyInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SerialPort = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "SendSerialConsoleSSHPublicKeyOutput",
    members = {
        RequestId = {
            type = "string",
        },
        Success = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.SerialConsoleAccessDisabledException = {
    type = "structure",
    id = "SerialConsoleAccessDisabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SerialConsoleSessionLimitExceededException = {
    type = "structure",
    id = "SerialConsoleSessionLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SerialConsoleSessionUnavailableException = {
    type = "structure",
    id = "SerialConsoleSessionUnavailableException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SerialConsoleSessionUnsupportedException = {
    type = "structure",
    id = "SerialConsoleSessionUnsupportedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    id = "ServiceException",
    error = "server",
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

M.SendSSHPublicKeyInput = {
    type = "structure",
    id = "SendSSHPublicKeyInput",
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
    id = "SendSSHPublicKeyOutput",
    members = {
        RequestId = {
            type = "string",
        },
        Success = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

return M
