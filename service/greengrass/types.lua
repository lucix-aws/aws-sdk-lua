local M = {}

M.EncodingType = {
    binary = "binary",
    json = "json",
}

M.FunctionIsolationMode = {
    GreengrassContainer = "GreengrassContainer",
    NoContainer = "NoContainer",
}

M.Permission = {
    ro = "ro",
    rw = "rw",
}

M.LoggerComponent = {
    GreengrassSystem = "GreengrassSystem",
    Lambda = "Lambda",
}

M.LoggerLevel = {
    DEBUG = "DEBUG",
    INFO = "INFO",
    WARN = "WARN",
    ERROR = "ERROR",
    FATAL = "FATAL",
}

M.LoggerType = {
    FileSystem = "FileSystem",
    AWSCloudWatch = "AWSCloudWatch",
}

M.DeploymentType = {
    NewDeployment = "NewDeployment",
    Redeployment = "Redeployment",
    ResetDeployment = "ResetDeployment",
    ForceResetDeployment = "ForceResetDeployment",
}

M.BulkDeploymentStatus = {
    Initializing = "Initializing",
    Running = "Running",
    Completed = "Completed",
    Stopping = "Stopping",
    Stopped = "Stopped",
    Failed = "Failed",
}

M.ConfigurationSyncStatus = {
    InSync = "InSync",
    OutOfSync = "OutOfSync",
}

M.SoftwareToUpdate = {
    core = "core",
    ota_agent = "ota_agent",
}

M.UpdateAgentLogLevel = {
    NONE = "NONE",
    TRACE = "TRACE",
    DEBUG = "DEBUG",
    VERBOSE = "VERBOSE",
    INFO = "INFO",
    WARN = "WARN",
    ERROR = "ERROR",
    FATAL = "FATAL",
}

M.UpdateTargetsArchitecture = {
    armv6l = "armv6l",
    armv7l = "armv7l",
    x86_64 = "x86_64",
    aarch64 = "aarch64",
}

M.UpdateTargetsOperatingSystem = {
    ubuntu = "ubuntu",
    raspbian = "raspbian",
    amazon_linux = "amazon_linux",
    openwrt = "openwrt",
}

M.Telemetry = {
    On = "On",
    Off = "Off",
}

return M
