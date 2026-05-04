local record CreateMonitorInput
    monitorName: string
    probes: {CreateMonitorProbeInput}
    aggregationPeriod: number
    clientToken: string
    tags: {string : string}
end

local record CreateMonitorOutput
    monitorArn: string
    monitorName: string
    state: string
    aggregationPeriod: number
    tags: {string : string}
end

local record CreateProbeInput
    monitorName: string
    probe: ProbeInput
    clientToken: string
    tags: {string : string}
end

local record CreateProbeOutput
    probeId: string
    probeArn: string
    sourceArn: string
    destination: string
    destinationPort: number
    protocol: string
    packetSize: number
    addressFamily: string
    vpcId: string
    state: string
    createdAt: number
    modifiedAt: number
    tags: {string : string}
end

local record DeleteMonitorInput
    monitorName: string
end

local record DeleteMonitorOutput
end

local record DeleteProbeInput
    monitorName: string
    probeId: string
end

local record DeleteProbeOutput
end

local record GetMonitorInput
    monitorName: string
end

local record GetMonitorOutput
    monitorArn: string
    monitorName: string
    state: string
    aggregationPeriod: number
    tags: {string : string}
    probes: {Probe}
    createdAt: number
    modifiedAt: number
end

local record GetProbeInput
    monitorName: string
    probeId: string
end

local record GetProbeOutput
    probeId: string
    probeArn: string
    sourceArn: string
    destination: string
    destinationPort: number
    protocol: string
    packetSize: number
    addressFamily: string
    vpcId: string
    state: string
    createdAt: number
    modifiedAt: number
    tags: {string : string}
end

local record ListMonitorsInput
    nextToken: string
    maxResults: number
    state: string
end

local record ListMonitorsOutput
    monitors: {MonitorSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateMonitorInput
    monitorName: string
    aggregationPeriod: number
end

local record UpdateMonitorOutput
    monitorArn: string
    monitorName: string
    state: string
    aggregationPeriod: number
    tags: {string : string}
end

local record UpdateProbeInput
    monitorName: string
    probeId: string
    state: string
    destination: string
    destinationPort: number
    protocol: string
    packetSize: number
end

local record UpdateProbeOutput
    probeId: string
    probeArn: string
    sourceArn: string
    destination: string
    destinationPort: number
    protocol: string
    packetSize: number
    addressFamily: string
    vpcId: string
    state: string
    createdAt: number
    modifiedAt: number
    tags: {string : string}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local type Protocol = "TCP" | "ICMP"

local type AddressFamily = "IPV4" | "IPV6"

local type ProbeState = "PENDING" | "ACTIVE" | "INACTIVE" | "ERROR" | "DELETING" | "DELETED"

local type MonitorState = "PENDING" | "ACTIVE" | "INACTIVE" | "ERROR" | "DELETING"

local record M
    CreateMonitorInput: CreateMonitorInput
    CreateMonitorOutput: CreateMonitorOutput
    CreateProbeInput: CreateProbeInput
    CreateProbeOutput: CreateProbeOutput
    DeleteMonitorInput: DeleteMonitorInput
    DeleteMonitorOutput: DeleteMonitorOutput
    DeleteProbeInput: DeleteProbeInput
    DeleteProbeOutput: DeleteProbeOutput
    GetMonitorInput: GetMonitorInput
    GetMonitorOutput: GetMonitorOutput
    GetProbeInput: GetProbeInput
    GetProbeOutput: GetProbeOutput
    ListMonitorsInput: ListMonitorsInput
    ListMonitorsOutput: ListMonitorsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateMonitorInput: UpdateMonitorInput
    UpdateMonitorOutput: UpdateMonitorOutput
    UpdateProbeInput: UpdateProbeInput
    UpdateProbeOutput: UpdateProbeOutput
end

return M
