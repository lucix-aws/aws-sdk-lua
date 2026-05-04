local record AssociateFraudsterInput
    DomainId: string
    WatchlistId: string
    FraudsterId: string
end

local record AssociateFraudsterOutput
    Fraudster: Fraudster
end

local record CreateDomainInput
    Name: string
    Description: string
    ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration
    ClientToken: string
    Tags: {Tag}
end

local record CreateDomainOutput
    Domain: Domain
end

local record CreateWatchlistInput
    DomainId: string
    Name: string
    Description: string
    ClientToken: string
end

local record CreateWatchlistOutput
    Watchlist: Watchlist
end

local record DeleteDomainInput
    DomainId: string
end

local record DeleteDomainOutput
end

local record DeleteFraudsterInput
    DomainId: string
    FraudsterId: string
end

local record DeleteFraudsterOutput
end

local record DeleteSpeakerInput
    DomainId: string
    SpeakerId: string
end

local record DeleteSpeakerOutput
end

local record DeleteWatchlistInput
    DomainId: string
    WatchlistId: string
end

local record DeleteWatchlistOutput
end

local record DescribeDomainInput
    DomainId: string
end

local record DescribeDomainOutput
    Domain: Domain
end

local record DescribeFraudsterInput
    DomainId: string
    FraudsterId: string
end

local record DescribeFraudsterOutput
    Fraudster: Fraudster
end

local record DescribeFraudsterRegistrationJobInput
    DomainId: string
    JobId: string
end

local record DescribeFraudsterRegistrationJobOutput
    Job: FraudsterRegistrationJob
end

local record DescribeSpeakerInput
    DomainId: string
    SpeakerId: string
end

local record DescribeSpeakerOutput
    Speaker: Speaker
end

local record DescribeSpeakerEnrollmentJobInput
    DomainId: string
    JobId: string
end

local record DescribeSpeakerEnrollmentJobOutput
    Job: SpeakerEnrollmentJob
end

local record DescribeWatchlistInput
    DomainId: string
    WatchlistId: string
end

local record DescribeWatchlistOutput
    Watchlist: Watchlist
end

local record DisassociateFraudsterInput
    DomainId: string
    WatchlistId: string
    FraudsterId: string
end

local record DisassociateFraudsterOutput
    Fraudster: Fraudster
end

local record EvaluateSessionInput
    DomainId: string
    SessionNameOrId: string
end

local record EvaluateSessionOutput
    DomainId: string
    SessionId: string
    SessionName: string
    StreamingStatus: string
    AuthenticationResult: AuthenticationResult
    FraudDetectionResult: FraudDetectionResult
end

local record ListDomainsInput
    MaxResults: number
    NextToken: string
end

local record ListDomainsOutput
    DomainSummaries: {DomainSummary}
    NextToken: string
end

local record ListFraudsterRegistrationJobsInput
    DomainId: string
    JobStatus: string
    MaxResults: number
    NextToken: string
end

local record ListFraudsterRegistrationJobsOutput
    JobSummaries: {FraudsterRegistrationJobSummary}
    NextToken: string
end

local record ListFraudstersInput
    DomainId: string
    WatchlistId: string
    MaxResults: number
    NextToken: string
end

local record ListFraudstersOutput
    FraudsterSummaries: {FraudsterSummary}
    NextToken: string
end

local record ListSpeakerEnrollmentJobsInput
    DomainId: string
    JobStatus: string
    MaxResults: number
    NextToken: string
end

local record ListSpeakerEnrollmentJobsOutput
    JobSummaries: {SpeakerEnrollmentJobSummary}
    NextToken: string
end

local record ListSpeakersInput
    DomainId: string
    MaxResults: number
    NextToken: string
end

local record ListSpeakersOutput
    SpeakerSummaries: {SpeakerSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListWatchlistsInput
    DomainId: string
    MaxResults: number
    NextToken: string
end

local record ListWatchlistsOutput
    WatchlistSummaries: {WatchlistSummary}
    NextToken: string
end

local record OptOutSpeakerInput
    DomainId: string
    SpeakerId: string
end

local record OptOutSpeakerOutput
    Speaker: Speaker
end

local record StartFraudsterRegistrationJobInput
    ClientToken: string
    JobName: string
    DomainId: string
    DataAccessRoleArn: string
    RegistrationConfig: RegistrationConfig
    InputDataConfig: InputDataConfig
    OutputDataConfig: OutputDataConfig
end

local record StartFraudsterRegistrationJobOutput
    Job: FraudsterRegistrationJob
end

local record StartSpeakerEnrollmentJobInput
    ClientToken: string
    JobName: string
    DomainId: string
    DataAccessRoleArn: string
    EnrollmentConfig: EnrollmentConfig
    InputDataConfig: InputDataConfig
    OutputDataConfig: OutputDataConfig
end

local record StartSpeakerEnrollmentJobOutput
    Job: SpeakerEnrollmentJob
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateDomainInput
    DomainId: string
    Name: string
    Description: string
    ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration
end

local record UpdateDomainOutput
    Domain: Domain
end

local record UpdateWatchlistInput
    DomainId: string
    WatchlistId: string
    Name: string
    Description: string
end

local record UpdateWatchlistOutput
    Watchlist: Watchlist
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ResourceNotFoundException
    Message: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record ConflictException
    Message: string
    ConflictType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record M
    AssociateFraudsterInput: AssociateFraudsterInput
    AssociateFraudsterOutput: AssociateFraudsterOutput
    CreateDomainInput: CreateDomainInput
    CreateDomainOutput: CreateDomainOutput
    CreateWatchlistInput: CreateWatchlistInput
    CreateWatchlistOutput: CreateWatchlistOutput
    DeleteDomainInput: DeleteDomainInput
    DeleteDomainOutput: DeleteDomainOutput
    DeleteFraudsterInput: DeleteFraudsterInput
    DeleteFraudsterOutput: DeleteFraudsterOutput
    DeleteSpeakerInput: DeleteSpeakerInput
    DeleteSpeakerOutput: DeleteSpeakerOutput
    DeleteWatchlistInput: DeleteWatchlistInput
    DeleteWatchlistOutput: DeleteWatchlistOutput
    DescribeDomainInput: DescribeDomainInput
    DescribeDomainOutput: DescribeDomainOutput
    DescribeFraudsterInput: DescribeFraudsterInput
    DescribeFraudsterOutput: DescribeFraudsterOutput
    DescribeFraudsterRegistrationJobInput: DescribeFraudsterRegistrationJobInput
    DescribeFraudsterRegistrationJobOutput: DescribeFraudsterRegistrationJobOutput
    DescribeSpeakerInput: DescribeSpeakerInput
    DescribeSpeakerOutput: DescribeSpeakerOutput
    DescribeSpeakerEnrollmentJobInput: DescribeSpeakerEnrollmentJobInput
    DescribeSpeakerEnrollmentJobOutput: DescribeSpeakerEnrollmentJobOutput
    DescribeWatchlistInput: DescribeWatchlistInput
    DescribeWatchlistOutput: DescribeWatchlistOutput
    DisassociateFraudsterInput: DisassociateFraudsterInput
    DisassociateFraudsterOutput: DisassociateFraudsterOutput
    EvaluateSessionInput: EvaluateSessionInput
    EvaluateSessionOutput: EvaluateSessionOutput
    ListDomainsInput: ListDomainsInput
    ListDomainsOutput: ListDomainsOutput
    ListFraudsterRegistrationJobsInput: ListFraudsterRegistrationJobsInput
    ListFraudsterRegistrationJobsOutput: ListFraudsterRegistrationJobsOutput
    ListFraudstersInput: ListFraudstersInput
    ListFraudstersOutput: ListFraudstersOutput
    ListSpeakerEnrollmentJobsInput: ListSpeakerEnrollmentJobsInput
    ListSpeakerEnrollmentJobsOutput: ListSpeakerEnrollmentJobsOutput
    ListSpeakersInput: ListSpeakersInput
    ListSpeakersOutput: ListSpeakersOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWatchlistsInput: ListWatchlistsInput
    ListWatchlistsOutput: ListWatchlistsOutput
    OptOutSpeakerInput: OptOutSpeakerInput
    OptOutSpeakerOutput: OptOutSpeakerOutput
    StartFraudsterRegistrationJobInput: StartFraudsterRegistrationJobInput
    StartFraudsterRegistrationJobOutput: StartFraudsterRegistrationJobOutput
    StartSpeakerEnrollmentJobInput: StartSpeakerEnrollmentJobInput
    StartSpeakerEnrollmentJobOutput: StartSpeakerEnrollmentJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDomainInput: UpdateDomainInput
    UpdateDomainOutput: UpdateDomainOutput
    UpdateWatchlistInput: UpdateWatchlistInput
    UpdateWatchlistOutput: UpdateWatchlistOutput
end

return M
