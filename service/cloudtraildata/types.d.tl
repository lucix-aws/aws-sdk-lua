local record PutAuditEventsInput
    auditEvents: {AuditEvent}
    channelArn: string
    externalId: string
end

local record PutAuditEventsOutput
    successful: {AuditEventResultEntry}
    failed: {ResultErrorEntry}
end

local record ChannelInsufficientPermission
    message: string
end

local record ChannelNotFound
    message: string
end

local record ChannelUnsupportedSchema
    message: string
end

local record DuplicatedAuditEventId
    message: string
end

local record InvalidChannelARN
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record M
    PutAuditEventsInput: PutAuditEventsInput
    PutAuditEventsOutput: PutAuditEventsOutput
end

return M
