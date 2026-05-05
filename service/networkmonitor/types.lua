local M = {}

M.AddressFamily = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.Protocol = {
    TCP = "TCP",
    ICMP = "ICMP",
}

M.MonitorState = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    ERROR = "ERROR",
    DELETING = "DELETING",
}

M.ProbeState = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    ERROR = "ERROR",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

return M
