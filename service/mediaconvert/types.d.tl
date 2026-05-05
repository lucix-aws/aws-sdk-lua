local record AssociateCertificateInput
    Arn: string
end

local record AssociateCertificateOutput
end

local record CancelJobInput
    Id: string
end

local record CancelJobOutput
end

local record CreateJobInput
    AccelerationSettings: AccelerationSettings
    BillingTagsSource: string
    ClientRequestToken: string
    HopDestinations: {HopDestination}
    JobEngineVersion: string
    JobTemplate: string
    Priority: number
    Queue: string
    Role: string
    Settings: JobSettings
    SimulateReservedQueue: string
    StatusUpdateInterval: string
    Tags: {string : string}
    UserMetadata: {string : string}
end

local record CreateJobOutput
    Job: Job
end

local record CreateJobTemplateInput
    AccelerationSettings: AccelerationSettings
    Category: string
    Description: string
    HopDestinations: {HopDestination}
    Name: string
    Priority: number
    Queue: string
    Settings: JobTemplateSettings
    StatusUpdateInterval: string
    Tags: {string : string}
end

local record CreateJobTemplateOutput
    JobTemplate: JobTemplate
end

local record CreatePresetInput
    Category: string
    Description: string
    Name: string
    Settings: PresetSettings
    Tags: {string : string}
end

local record CreatePresetOutput
    Preset: Preset
end

local record CreateQueueInput
    ConcurrentJobs: number
    Description: string
    MaximumConcurrentFeeds: number
    Name: string
    PricingPlan: string
    ReservationPlanSettings: ReservationPlanSettings
    Status: string
    Tags: {string : string}
end

local record CreateQueueOutput
    Queue: Queue
end

local record CreateResourceShareInput
    JobId: string
    SupportCaseId: string
end

local record CreateResourceShareOutput
end

local record DeleteJobTemplateInput
    Name: string
end

local record DeleteJobTemplateOutput
end

local record DeletePolicyInput
end

local record DeletePolicyOutput
end

local record DeletePresetInput
    Name: string
end

local record DeletePresetOutput
end

local record DeleteQueueInput
    Name: string
end

local record DeleteQueueOutput
end

local record DescribeEndpointsInput
    MaxResults: number
    Mode: string
    NextToken: string
end

local record DescribeEndpointsOutput
    Endpoints: {Endpoint}
    NextToken: string
end

local record DisassociateCertificateInput
    Arn: string
end

local record DisassociateCertificateOutput
end

local record GetJobInput
    Id: string
end

local record GetJobOutput
    Job: Job
end

local record GetJobsQueryResultsInput
    Id: string
end

local record GetJobsQueryResultsOutput
    Jobs: {Job}
    NextToken: string
    Status: string
end

local record GetJobTemplateInput
    Name: string
end

local record GetJobTemplateOutput
    JobTemplate: JobTemplate
end

local record GetPolicyInput
end

local record GetPolicyOutput
    Policy: Policy
end

local record GetPresetInput
    Name: string
end

local record GetPresetOutput
    Preset: Preset
end

local record GetQueueInput
    Name: string
end

local record GetQueueOutput
    Queue: Queue
end

local record ListJobsInput
    MaxResults: number
    NextToken: string
    Order: string
    Queue: string
    Status: string
end

local record ListJobsOutput
    Jobs: {Job}
    NextToken: string
end

local record ListJobTemplatesInput
    Category: string
    ListBy: string
    MaxResults: number
    NextToken: string
    Order: string
end

local record ListJobTemplatesOutput
    JobTemplates: {JobTemplate}
    NextToken: string
end

local record ListPresetsInput
    Category: string
    ListBy: string
    MaxResults: number
    NextToken: string
    Order: string
end

local record ListPresetsOutput
    NextToken: string
    Presets: {Preset}
end

local record ListQueuesInput
    ListBy: string
    MaxResults: number
    NextToken: string
    Order: string
end

local record ListQueuesOutput
    NextToken: string
    Queues: {Queue}
    TotalConcurrentJobs: number
    UnallocatedConcurrentJobs: number
end

local record ListTagsForResourceInput
    Arn: string
end

local record ListTagsForResourceOutput
    ResourceTags: ResourceTags
end

local record ListVersionsInput
    MaxResults: number
    NextToken: string
end

local record ListVersionsOutput
    NextToken: string
    Versions: {JobEngineVersion}
end

local record ProbeInput
    InputFiles: {ProbeInputFile}
end

local record ProbeOutput
    ProbeResults: {ProbeResult}
end

local record PutPolicyInput
    Policy: Policy
end

local record PutPolicyOutput
    Policy: Policy
end

local record SearchJobsInput
    InputFile: string
    MaxResults: number
    NextToken: string
    Order: string
    Queue: string
    Status: string
end

local record SearchJobsOutput
    Jobs: {Job}
    NextToken: string
end

local record StartJobsQueryInput
    FilterList: {JobsQueryFilter}
    MaxResults: number
    NextToken: string
    Order: string
end

local record StartJobsQueryOutput
    Id: string
end

local record TagResourceInput
    Arn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    Arn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateJobTemplateInput
    AccelerationSettings: AccelerationSettings
    Category: string
    Description: string
    HopDestinations: {HopDestination}
    Name: string
    Priority: number
    Queue: string
    Settings: JobTemplateSettings
    StatusUpdateInterval: string
end

local record UpdateJobTemplateOutput
    JobTemplate: JobTemplate
end

local record UpdatePresetInput
    Category: string
    Description: string
    Name: string
    Settings: PresetSettings
end

local record UpdatePresetOutput
    Preset: Preset
end

local record UpdateQueueInput
    ConcurrentJobs: number
    Description: string
    MaximumConcurrentFeeds: number
    Name: string
    ReservationPlanSettings: ReservationPlanSettings
    Status: string
end

local record UpdateQueueOutput
    Queue: Queue
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local type QueueListBy = "NAME" | "CREATION_DATE"

local type PresetListBy = "NAME" | "CREATION_DATE" | "SYSTEM"

local type QueueStatus = "ACTIVE" | "PAUSED"

local type StatusUpdateInterval = "SECONDS_10" | "SECONDS_12" | "SECONDS_15" | "SECONDS_20" | "SECONDS_30" | "SECONDS_60" | "SECONDS_120" | "SECONDS_180" | "SECONDS_240" | "SECONDS_300" | "SECONDS_360" | "SECONDS_420" | "SECONDS_480" | "SECONDS_540" | "SECONDS_600"

local type DescribeEndpointsMode = "DEFAULT" | "GET_ONLY"

local type Order = "ASCENDING" | "DESCENDING"

local type JobStatus = "SUBMITTED" | "PROGRESSING" | "COMPLETE" | "CANCELED" | "ERROR"

local type PricingPlan = "ON_DEMAND" | "RESERVED"

local type BillingTagsSource = "QUEUE" | "PRESET" | "JOB_TEMPLATE" | "JOB"

local type JobTemplateListBy = "NAME" | "CREATION_DATE" | "SYSTEM"

local type JobsQueryStatus = "SUBMITTED" | "PROGRESSING" | "COMPLETE" | "ERROR"

local type SimulateReservedQueue = "DISABLED" | "ENABLED"

local record M
    AssociateCertificateInput: AssociateCertificateInput
    AssociateCertificateOutput: AssociateCertificateOutput
    CancelJobInput: CancelJobInput
    CancelJobOutput: CancelJobOutput
    CreateJobInput: CreateJobInput
    CreateJobOutput: CreateJobOutput
    CreateJobTemplateInput: CreateJobTemplateInput
    CreateJobTemplateOutput: CreateJobTemplateOutput
    CreatePresetInput: CreatePresetInput
    CreatePresetOutput: CreatePresetOutput
    CreateQueueInput: CreateQueueInput
    CreateQueueOutput: CreateQueueOutput
    CreateResourceShareInput: CreateResourceShareInput
    CreateResourceShareOutput: CreateResourceShareOutput
    DeleteJobTemplateInput: DeleteJobTemplateInput
    DeleteJobTemplateOutput: DeleteJobTemplateOutput
    DeletePolicyInput: DeletePolicyInput
    DeletePolicyOutput: DeletePolicyOutput
    DeletePresetInput: DeletePresetInput
    DeletePresetOutput: DeletePresetOutput
    DeleteQueueInput: DeleteQueueInput
    DeleteQueueOutput: DeleteQueueOutput
    DescribeEndpointsInput: DescribeEndpointsInput
    DescribeEndpointsOutput: DescribeEndpointsOutput
    DisassociateCertificateInput: DisassociateCertificateInput
    DisassociateCertificateOutput: DisassociateCertificateOutput
    GetJobInput: GetJobInput
    GetJobOutput: GetJobOutput
    GetJobsQueryResultsInput: GetJobsQueryResultsInput
    GetJobsQueryResultsOutput: GetJobsQueryResultsOutput
    GetJobTemplateInput: GetJobTemplateInput
    GetJobTemplateOutput: GetJobTemplateOutput
    GetPolicyInput: GetPolicyInput
    GetPolicyOutput: GetPolicyOutput
    GetPresetInput: GetPresetInput
    GetPresetOutput: GetPresetOutput
    GetQueueInput: GetQueueInput
    GetQueueOutput: GetQueueOutput
    ListJobsInput: ListJobsInput
    ListJobsOutput: ListJobsOutput
    ListJobTemplatesInput: ListJobTemplatesInput
    ListJobTemplatesOutput: ListJobTemplatesOutput
    ListPresetsInput: ListPresetsInput
    ListPresetsOutput: ListPresetsOutput
    ListQueuesInput: ListQueuesInput
    ListQueuesOutput: ListQueuesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListVersionsInput: ListVersionsInput
    ListVersionsOutput: ListVersionsOutput
    ProbeInput: ProbeInput
    ProbeOutput: ProbeOutput
    PutPolicyInput: PutPolicyInput
    PutPolicyOutput: PutPolicyOutput
    SearchJobsInput: SearchJobsInput
    SearchJobsOutput: SearchJobsOutput
    StartJobsQueryInput: StartJobsQueryInput
    StartJobsQueryOutput: StartJobsQueryOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateJobTemplateInput: UpdateJobTemplateInput
    UpdateJobTemplateOutput: UpdateJobTemplateOutput
    UpdatePresetInput: UpdatePresetInput
    UpdatePresetOutput: UpdatePresetOutput
    UpdateQueueInput: UpdateQueueInput
    UpdateQueueOutput: UpdateQueueOutput
end

return M
