local record CancelParticipantAuthenticationInput
    SessionId: string
    ConnectionToken: string
end

local record CancelParticipantAuthenticationOutput
end

local record CompleteAttachmentUploadInput
    AttachmentIds: {string}
    ClientToken: string
    ConnectionToken: string
end

local record CompleteAttachmentUploadOutput
end

local record CreateParticipantConnectionInput
    Type: {string}
    ParticipantToken: string
    ConnectParticipant: boolean
end

local record CreateParticipantConnectionOutput
    Websocket: Websocket
    ConnectionCredentials: ConnectionCredentials
    WebRTCConnection: WebRTCConnection
end

local record DescribeViewInput
    ViewToken: string
    ConnectionToken: string
end

local record DescribeViewOutput
    View: View
end

local record DisconnectParticipantInput
    ClientToken: string
    ConnectionToken: string
end

local record DisconnectParticipantOutput
end

local record GetAttachmentInput
    AttachmentId: string
    ConnectionToken: string
    UrlExpiryInSeconds: number
end

local record GetAttachmentOutput
    Url: string
    UrlExpiry: string
    AttachmentSizeInBytes: number
end

local record GetAuthenticationUrlInput
    SessionId: string
    RedirectUri: string
    ConnectionToken: string
end

local record GetAuthenticationUrlOutput
    AuthenticationUrl: string
end

local record GetTranscriptInput
    ContactId: string
    MaxResults: number
    NextToken: string
    ScanDirection: string
    SortOrder: string
    StartPosition: StartPosition
    ConnectionToken: string
end

local record GetTranscriptOutput
    InitialContactId: string
    Transcript: {Item}
    NextToken: string
end

local record SendEventInput
    ContentType: string
    Content: string
    ClientToken: string
    ConnectionToken: string
end

local record SendEventOutput
    Id: string
    AbsoluteTime: string
end

local record SendMessageInput
    ContentType: string
    Content: string
    ClientToken: string
    ConnectionToken: string
end

local record SendMessageOutput
    Id: string
    AbsoluteTime: string
    MessageMetadata: MessageProcessingMetadata
end

local record StartAttachmentUploadInput
    ContentType: string
    AttachmentSizeInBytes: number
    AttachmentName: string
    ClientToken: string
    ConnectionToken: string
end

local record StartAttachmentUploadOutput
    AttachmentId: string
    UploadMetadata: UploadMetadata
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local type SortKey = "DESCENDING" | "ASCENDING"

local type ScanDirection = "FORWARD" | "BACKWARD"

local record M
    CancelParticipantAuthenticationInput: CancelParticipantAuthenticationInput
    CancelParticipantAuthenticationOutput: CancelParticipantAuthenticationOutput
    CompleteAttachmentUploadInput: CompleteAttachmentUploadInput
    CompleteAttachmentUploadOutput: CompleteAttachmentUploadOutput
    CreateParticipantConnectionInput: CreateParticipantConnectionInput
    CreateParticipantConnectionOutput: CreateParticipantConnectionOutput
    DescribeViewInput: DescribeViewInput
    DescribeViewOutput: DescribeViewOutput
    DisconnectParticipantInput: DisconnectParticipantInput
    DisconnectParticipantOutput: DisconnectParticipantOutput
    GetAttachmentInput: GetAttachmentInput
    GetAttachmentOutput: GetAttachmentOutput
    GetAuthenticationUrlInput: GetAuthenticationUrlInput
    GetAuthenticationUrlOutput: GetAuthenticationUrlOutput
    GetTranscriptInput: GetTranscriptInput
    GetTranscriptOutput: GetTranscriptOutput
    SendEventInput: SendEventInput
    SendEventOutput: SendEventOutput
    SendMessageInput: SendMessageInput
    SendMessageOutput: SendMessageOutput
    StartAttachmentUploadInput: StartAttachmentUploadInput
    StartAttachmentUploadOutput: StartAttachmentUploadOutput
end

return M
