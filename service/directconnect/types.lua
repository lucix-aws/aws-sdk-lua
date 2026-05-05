local M = {}

M.GatewayType = {
    VirtualPrivateGateway = "virtualPrivateGateway",
    TransitGateway = "transitGateway",
}

M.DirectConnectGatewayAssociationState = {
    associating = "associating",
    associated = "associated",
    disassociating = "disassociating",
    disassociated = "disassociated",
    updating = "updating",
}

M.AddressFamily = {
    IPv4 = "ipv4",
    IPv6 = "ipv6",
}

M.ConnectionState = {
    ordering = "ordering",
    requested = "requested",
    pending = "pending",
    available = "available",
    down = "down",
    deleting = "deleting",
    deleted = "deleted",
    rejected = "rejected",
    unknown = "unknown",
}

M.HasLogicalRedundancy = {
    Unknown = "unknown",
    Yes = "yes",
    No = "no",
}

M.BGPPeerState = {
    Verifying = "verifying",
    Pending = "pending",
    Available = "available",
    Deleting = "deleting",
    Deleted = "deleted",
}

M.BGPStatus = {
    Up = "up",
    Down = "down",
    Unknown = "unknown",
}

M.VirtualInterfaceState = {
    confirming = "confirming",
    verifying = "verifying",
    pending = "pending",
    available = "available",
    down = "down",
    testing = "testing",
    deleting = "deleting",
    deleted = "deleted",
    rejected = "rejected",
    unknown = "unknown",
}

M.DirectConnectGatewayState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.DirectConnectGatewayAssociationProposalState = {
    requested = "requested",
    accepted = "accepted",
    deleted = "deleted",
}

M.InterconnectState = {
    requested = "requested",
    pending = "pending",
    available = "available",
    down = "down",
    deleting = "deleting",
    deleted = "deleted",
    unknown = "unknown",
}

M.LagState = {
    requested = "requested",
    pending = "pending",
    available = "available",
    down = "down",
    deleting = "deleting",
    deleted = "deleted",
    unknown = "unknown",
}

M.LoaContentType = {
    PDF = "application/pdf",
}

M.NniPartnerType = {
    V1 = "v1",
    V2 = "v2",
    NonPartner = "nonPartner",
}

M.DirectConnectGatewayAttachmentState = {
    attaching = "attaching",
    attached = "attached",
    detaching = "detaching",
    detached = "detached",
}

M.DirectConnectGatewayAttachmentType = {
    TransitVirtualInterface = "TransitVirtualInterface",
    PrivateVirtualInterface = "PrivateVirtualInterface",
}

return M
