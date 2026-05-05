local M = {}

M.EgressFilterType = {
    ALLOW_ALL = "ALLOW_ALL",
    DROP_ALL = "DROP_ALL",
}

M.IpPreference = {
    IPv6_PREFERRED = "IPv6_PREFERRED",
    IPv4_PREFERRED = "IPv4_PREFERRED",
    IPv4_ONLY = "IPv4_ONLY",
    IPv6_ONLY = "IPv6_ONLY",
}

M.MeshStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualGatewayPortProtocol = {
    HTTP = "http",
    HTTP2 = "http2",
    GRPC = "grpc",
}

M.VirtualGatewayListenerTlsMode = {
    STRICT = "STRICT",
    PERMISSIVE = "PERMISSIVE",
    DISABLED = "DISABLED",
}

M.VirtualGatewayStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.DefaultGatewayRouteRewrite = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.HttpMethod = {
    GET = "GET",
    HEAD = "HEAD",
    POST = "POST",
    PUT = "PUT",
    DELETE = "DELETE",
    CONNECT = "CONNECT",
    OPTIONS = "OPTIONS",
    TRACE = "TRACE",
    PATCH = "PATCH",
}

M.GatewayRouteStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.PortProtocol = {
    HTTP = "http",
    TCP = "tcp",
    HTTP2 = "http2",
    GRPC = "grpc",
}

M.DurationUnit = {
    S = "s",
    MS = "ms",
}

M.ListenerTlsMode = {
    STRICT = "STRICT",
    PERMISSIVE = "PERMISSIVE",
    DISABLED = "DISABLED",
}

M.DnsResponseType = {
    LOADBALANCER = "LOADBALANCER",
    ENDPOINTS = "ENDPOINTS",
}

M.VirtualNodeStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualRouterStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.GrpcRetryPolicyEvent = {
    CANCELLED = "cancelled",
    DEADLINE_EXCEEDED = "deadline-exceeded",
    INTERNAL = "internal",
    RESOURCE_EXHAUSTED = "resource-exhausted",
    UNAVAILABLE = "unavailable",
}

M.TcpRetryPolicyEvent = {
    CONNECTION_ERROR = "connection-error",
}

M.HttpScheme = {
    HTTP = "http",
    HTTPS = "https",
}

M.RouteStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualServiceStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

return M
