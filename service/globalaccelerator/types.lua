local M = {}

M.IpAddressType = {
    IPV4 = "IPV4",
    DUAL_STACK = "DUAL_STACK",
}

M.IpAddressFamily = {
    IPv4 = "IPv4",
    IPv6 = "IPv6",
}

M.AcceleratorStatus = {
    DEPLOYED = "DEPLOYED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.HealthState = {
    INITIAL = "INITIAL",
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.ByoipCidrState = {
    PENDING_PROVISIONING = "PENDING_PROVISIONING",
    READY = "READY",
    PENDING_ADVERTISING = "PENDING_ADVERTISING",
    ADVERTISING = "ADVERTISING",
    PENDING_WITHDRAWING = "PENDING_WITHDRAWING",
    PENDING_DEPROVISIONING = "PENDING_DEPROVISIONING",
    DEPROVISIONED = "DEPROVISIONED",
    FAILED_PROVISION = "FAILED_PROVISION",
    FAILED_ADVERTISING = "FAILED_ADVERTISING",
    FAILED_WITHDRAW = "FAILED_WITHDRAW",
    FAILED_DEPROVISION = "FAILED_DEPROVISION",
}

M.ClientAffinity = {
    NONE = "NONE",
    SOURCE_IP = "SOURCE_IP",
}

M.CustomRoutingAcceleratorStatus = {
    DEPLOYED = "DEPLOYED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.CustomRoutingProtocol = {
    TCP = "TCP",
    UDP = "UDP",
}

M.Protocol = {
    TCP = "TCP",
    UDP = "UDP",
}

M.HealthCheckProtocol = {
    TCP = "TCP",
    HTTP = "HTTP",
    HTTPS = "HTTPS",
}

M.CustomRoutingDestinationTrafficState = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

return M
