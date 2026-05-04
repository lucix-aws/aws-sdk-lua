local record SendSerialConsoleSSHPublicKeyInput
    InstanceId: string
    SerialPort: number
    SSHPublicKey: string
end

local record SendSerialConsoleSSHPublicKeyOutput
    RequestId: string
    Success: boolean
end

local record SendSSHPublicKeyInput
    InstanceId: string
    InstanceOSUser: string
    SSHPublicKey: string
    AvailabilityZone: string
end

local record SendSSHPublicKeyOutput
    RequestId: string
    Success: boolean
end

local record AuthException
    Message: string
end

local record EC2InstanceNotFoundException
    Message: string
end

local record EC2InstanceStateInvalidException
    Message: string
end

local record EC2InstanceTypeInvalidException
    Message: string
end

local record EC2InstanceUnavailableException
    Message: string
end

local record InvalidArgsException
    Message: string
end

local record SerialConsoleAccessDisabledException
    Message: string
end

local record SerialConsoleSessionLimitExceededException
    Message: string
end

local record SerialConsoleSessionUnavailableException
    Message: string
end

local record SerialConsoleSessionUnsupportedException
    Message: string
end

local record ServiceException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AuthException
    Message: string
end

local record EC2InstanceNotFoundException
    Message: string
end

local record EC2InstanceStateInvalidException
    Message: string
end

local record EC2InstanceUnavailableException
    Message: string
end

local record InvalidArgsException
    Message: string
end

local record ServiceException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record M
    SendSerialConsoleSSHPublicKeyInput: SendSerialConsoleSSHPublicKeyInput
    SendSerialConsoleSSHPublicKeyOutput: SendSerialConsoleSSHPublicKeyOutput
    SendSSHPublicKeyInput: SendSSHPublicKeyInput
    SendSSHPublicKeyOutput: SendSSHPublicKeyOutput
end

return M
