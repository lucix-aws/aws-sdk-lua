local M = {}

M.AmdSevSnpEnum = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    UNSUPPORTED_OPERATION = "UNSUPPORTED_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    DEPENDENCY_FAILURE = "DEPENDENCY_FAILURE",
    OTHER = "OTHER",
}

M.AutoRecoveryEnum = {
    DISABLED = "disabled",
    DEFAULT = "default",
}

M.BandwidthWeightingEnum = {
    DEFAULT = "default",
    VPC_1 = "vpc-1",
    EBS_1 = "ebs-1",
}

M.BillingMode = {
    MONTHLY = "MONTHLY",
    HOURLY = "HOURLY",
}

M.VolumeTypeEnum = {
    STANDARD = "standard",
    IO1 = "io1",
    IO2 = "io2",
    GP2 = "gp2",
    SC1 = "sc1",
    ST1 = "st1",
    GP3 = "gp3",
}

M.CapacityReservationPreferenceEnum = {
    CAPACITY_RESERVATIONS_ONLY = "capacity-reservations-only",
    OPEN = "open",
    NONE = "none",
}

M.CpuCreditsEnum = {
    STANDARD = "standard",
    UNLIMITED = "unlimited",
}

M.ResourceTypeEnum = {
    INSTANCE = "instance",
    VOLUME = "volume",
    SPOT_INSTANCES_REQUEST = "spot-instances-request",
    NETWORK_INTERFACE = "network-interface",
}

M.MarketTypeEnum = {
    SPOT = "spot",
    CAPACITY_BLOCK = "capacity-block",
}

M.InstanceInterruptionBehaviorEnum = {
    HIBERNATE = "hibernate",
    STOP = "stop",
}

M.SpotInstanceTypeEnum = {
    ONE_TIME = "one-time",
    PERSISTENT = "persistent",
}

M.HttpEndpointEnum = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.HttpProtocolIpv6Enum = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.HttpTokensEnum = {
    OPTIONAL = "optional",
    REQUIRED = "required",
}

M.InstanceMetadataTagsEnum = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.InterfaceTypeEnum = {
    INTERFACE = "interface",
    EFA = "efa",
    EFA_ONLY = "efa-only",
}

M.TenancyEnum = {
    DEFAULT = "default",
    DEDICATED = "dedicated",
    HOST = "host",
}

M.HostnameTypeEnum = {
    IP_NAME = "ip-name",
    RESOURCE_NAME = "resource-name",
}

M.DisassociateModeEnum = {
    FORCE = "FORCE",
    NO_FORCE = "NO_FORCE",
}

M.ProvisionStateEnum = {
    ALLOCATING = "ALLOCATING",
    ALLOCATED = "ALLOCATED",
    DEALLOCATING = "DEALLOCATING",
    DEALLOCATED = "DEALLOCATED",
    ERROR_ALLOCATING = "ERROR_ALLOCATING",
    ERROR_DEALLOCATING = "ERROR_DEALLOCATING",
}

M.PlatformTypeEnum = {
    WINDOWS = "Windows",
    WINDOWS_BYOL = "Windows BYOL",
    LINUX_UNIX = "Linux/UNIX",
    UBUNTU_PRO = "Ubuntu Pro Linux",
    RHEL = "Red Hat Enterprise Linux",
    LINUX_BYOL = "Red Hat BYOL Linux",
    SUSE = "SUSE Linux",
}

M.InstanceConfigurationTenancyEnum = {
    SHARED = "SHARED",
    DEDICATED = "DEDICATED",
}

return M
