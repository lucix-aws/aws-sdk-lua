local record BatchCreateAttendeeInput
    MeetingId: string
    Attendees: {CreateAttendeeRequestItem}
end

local record BatchCreateAttendeeOutput
    Attendees: {Attendee}
    Errors: {CreateAttendeeError}
end

local record BatchUpdateAttendeeCapabilitiesExceptInput
    MeetingId: string
    ExcludedAttendeeIds: {AttendeeIdItem}
    Capabilities: AttendeeCapabilities
end

local record BatchUpdateAttendeeCapabilitiesExceptOutput
end

local record CreateAttendeeInput
    MeetingId: string
    ExternalUserId: string
    Capabilities: AttendeeCapabilities
end

local record CreateAttendeeOutput
    Attendee: Attendee
end

local record CreateMeetingInput
    ClientRequestToken: string
    MediaRegion: string
    MeetingHostId: string
    ExternalMeetingId: string
    NotificationsConfiguration: NotificationsConfiguration
    MeetingFeatures: MeetingFeaturesConfiguration
    PrimaryMeetingId: string
    TenantIds: {string}
    Tags: {Tag}
    MediaPlacementNetworkType: string
end

local record CreateMeetingOutput
    Meeting: Meeting
end

local record CreateMeetingWithAttendeesInput
    ClientRequestToken: string
    MediaRegion: string
    MeetingHostId: string
    ExternalMeetingId: string
    MeetingFeatures: MeetingFeaturesConfiguration
    NotificationsConfiguration: NotificationsConfiguration
    Attendees: {CreateAttendeeRequestItem}
    PrimaryMeetingId: string
    TenantIds: {string}
    Tags: {Tag}
    MediaPlacementNetworkType: string
end

local record CreateMeetingWithAttendeesOutput
    Meeting: Meeting
    Attendees: {Attendee}
    Errors: {CreateAttendeeError}
end

local record DeleteAttendeeInput
    MeetingId: string
    AttendeeId: string
end

local record DeleteAttendeeOutput
end

local record DeleteMeetingInput
    MeetingId: string
end

local record DeleteMeetingOutput
end

local record GetAttendeeInput
    MeetingId: string
    AttendeeId: string
end

local record GetAttendeeOutput
    Attendee: Attendee
end

local record GetMeetingInput
    MeetingId: string
end

local record GetMeetingOutput
    Meeting: Meeting
end

local record ListAttendeesInput
    MeetingId: string
    NextToken: string
    MaxResults: number
end

local record ListAttendeesOutput
    Attendees: {Attendee}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record StartMeetingTranscriptionInput
    MeetingId: string
    TranscriptionConfiguration: TranscriptionConfiguration
end

local record StartMeetingTranscriptionOutput
end

local record StopMeetingTranscriptionInput
    MeetingId: string
end

local record StopMeetingTranscriptionOutput
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAttendeeCapabilitiesInput
    MeetingId: string
    AttendeeId: string
    Capabilities: AttendeeCapabilities
end

local record UpdateAttendeeCapabilitiesOutput
    Attendee: Attendee
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record LimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record UnprocessableEntityException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record LimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record UnprocessableEntityException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record LimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record LimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record LimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    RequestId: string
    ResourceName: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record LimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record UnprocessableEntityException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record UnprocessableEntityException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record LimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    RequestId: string
    ResourceName: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record TooManyTagsException
    Code: string
    Message: string
    RequestId: string
    ResourceName: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record LimitExceededException
    Code: string
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Code: string
    Message: string
    RequestId: string
    ResourceName: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local record BadRequestException
    Code: string
    Message: string
    RequestId: string
end

local record ConflictException
    Code: string
    Message: string
    RequestId: string
end

local record ForbiddenException
    Code: string
    Message: string
    RequestId: string
end

local record NotFoundException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceFailureException
    Code: string
    Message: string
    RequestId: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
    RequestId: string
    RetryAfterSeconds: string
end

local record ThrottlingException
    Code: string
    Message: string
    RequestId: string
end

local record UnauthorizedException
    Code: string
    Message: string
    RequestId: string
end

local type MediaPlacementNetworkType = "Ipv4Only" | "DualStack"

local record M
    BatchCreateAttendeeInput: BatchCreateAttendeeInput
    BatchCreateAttendeeOutput: BatchCreateAttendeeOutput
    BatchUpdateAttendeeCapabilitiesExceptInput: BatchUpdateAttendeeCapabilitiesExceptInput
    BatchUpdateAttendeeCapabilitiesExceptOutput: BatchUpdateAttendeeCapabilitiesExceptOutput
    CreateAttendeeInput: CreateAttendeeInput
    CreateAttendeeOutput: CreateAttendeeOutput
    CreateMeetingInput: CreateMeetingInput
    CreateMeetingOutput: CreateMeetingOutput
    CreateMeetingWithAttendeesInput: CreateMeetingWithAttendeesInput
    CreateMeetingWithAttendeesOutput: CreateMeetingWithAttendeesOutput
    DeleteAttendeeInput: DeleteAttendeeInput
    DeleteAttendeeOutput: DeleteAttendeeOutput
    DeleteMeetingInput: DeleteMeetingInput
    DeleteMeetingOutput: DeleteMeetingOutput
    GetAttendeeInput: GetAttendeeInput
    GetAttendeeOutput: GetAttendeeOutput
    GetMeetingInput: GetMeetingInput
    GetMeetingOutput: GetMeetingOutput
    ListAttendeesInput: ListAttendeesInput
    ListAttendeesOutput: ListAttendeesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartMeetingTranscriptionInput: StartMeetingTranscriptionInput
    StartMeetingTranscriptionOutput: StartMeetingTranscriptionOutput
    StopMeetingTranscriptionInput: StopMeetingTranscriptionInput
    StopMeetingTranscriptionOutput: StopMeetingTranscriptionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAttendeeCapabilitiesInput: UpdateAttendeeCapabilitiesInput
    UpdateAttendeeCapabilitiesOutput: UpdateAttendeeCapabilitiesOutput
end

return M
