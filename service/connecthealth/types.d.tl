local record ActivateSubscriptionInput
    domainId: string
    subscriptionId: string
end

local record ActivateSubscriptionOutput
    subscription: SubscriptionDescription
end

local record CreateDomainInput
    name: string
    kmsKeyArn: string
    webAppSetupConfiguration: CreateWebAppConfiguration
    tags: {string : string}
end

local record CreateDomainOutput
    domainId: string
    arn: string
    name: string
    kmsKeyArn: string
    encryptionContext: EncryptionContext
    status: string
    webAppUrl: string
    webAppConfiguration: WebAppConfiguration
    createdAt: number
end

local record CreateSubscriptionInput
    domainId: string
end

local record CreateSubscriptionOutput
    domainId: string
    subscriptionId: string
    arn: string
    status: string
    createdAt: number
    lastUpdatedAt: number
    activatedAt: number
    deactivatedAt: number
end

local record DeactivateSubscriptionInput
    domainId: string
    subscriptionId: string
end

local record DeactivateSubscriptionOutput
    subscription: SubscriptionDescription
end

local record DeleteDomainInput
    domainId: string
end

local record DeleteDomainOutput
    domainId: string
    arn: string
    status: string
end

local record GetDomainInput
    domainId: string
end

local record GetDomainOutput
    domainId: string
    arn: string
    name: string
    kmsKeyArn: string
    encryptionContext: EncryptionContext
    status: string
    webAppUrl: string
    webAppConfiguration: WebAppConfiguration
    createdAt: number
    tags: {string : string}
end

local record GetMedicalScribeListeningSessionInput
    sessionId: string
    domainId: string
    subscriptionId: string
end

local record GetMedicalScribeListeningSessionOutput
    medicalScribeListeningSessionDetails: MedicalScribeListeningSessionDetails
end

local record GetPatientInsightsJobInput
    domainId: string
    jobId: string
end

local record GetPatientInsightsJobOutput
    jobId: string
    jobArn: string
    jobStatus: string
    creationTime: number
    updatedTime: number
    insightsOutput: InsightsOutput
    statusDetails: string
    patientContext: PatientInsightsPatientContext
    insightsContext: InsightsContext
    encounterContext: PatientInsightsEncounterContext
    userContext: UserContext
    inputDataConfig: InputDataConfig
    outputDataConfig: OutputDataConfig
end

local record GetSubscriptionInput
    domainId: string
    subscriptionId: string
end

local record GetSubscriptionOutput
    subscription: SubscriptionDescription
end

local record ListDomainsInput
    status: string
    maxResults: number
    nextToken: string
end

local record ListDomainsOutput
    domains: {DomainSummary}
    nextToken: string
end

local record ListSubscriptionsInput
    domainId: string
    maxResults: number
    nextToken: string
end

local record ListSubscriptionsOutput
    subscriptions: {SubscriptionDescription}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record StartMedicalScribeListeningSessionInput
    sessionId: string
    domainId: string
    subscriptionId: string
    languageCode: string
    mediaSampleRateHertz: number
    mediaEncoding: string
    inputStream: MedicalScribeInputStream
end

local record StartMedicalScribeListeningSessionOutput
    sessionId: string
    domainId: string
    subscriptionId: string
    requestId: string
    languageCode: string
    mediaSampleRateHertz: number
    mediaEncoding: string
    responseStream: MedicalScribeOutputStream
end

local record StartPatientInsightsJobInput
    domainId: string
    patientContext: PatientInsightsPatientContext
    insightsContext: InsightsContext
    encounterContext: PatientInsightsEncounterContext
    userContext: UserContext
    inputDataConfig: InputDataConfig
    outputDataConfig: OutputDataConfig
    clientToken: string
end

local record StartPatientInsightsJobOutput
    jobArn: string
    jobId: string
    creationTime: number
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

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ServiceQuotaExceededException
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

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceNotFoundException
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

local type SubscriptionStatus = "ACTIVE" | "INACTIVE" | "DELETED"

local type DomainStatus = "ACTIVE" | "DELETING" | "DELETED"

local type JobStatus = "SUBMITTED" | "IN_PROGRESS" | "FAILED" | "SUCCEEDED"

local type MedicalScribeMediaEncoding = "pcm" | "flac"

local type MedicalScribeLanguageCode = "en-US"

local record M
    ActivateSubscriptionInput: ActivateSubscriptionInput
    ActivateSubscriptionOutput: ActivateSubscriptionOutput
    CreateDomainInput: CreateDomainInput
    CreateDomainOutput: CreateDomainOutput
    CreateSubscriptionInput: CreateSubscriptionInput
    CreateSubscriptionOutput: CreateSubscriptionOutput
    DeactivateSubscriptionInput: DeactivateSubscriptionInput
    DeactivateSubscriptionOutput: DeactivateSubscriptionOutput
    DeleteDomainInput: DeleteDomainInput
    DeleteDomainOutput: DeleteDomainOutput
    GetDomainInput: GetDomainInput
    GetDomainOutput: GetDomainOutput
    GetMedicalScribeListeningSessionInput: GetMedicalScribeListeningSessionInput
    GetMedicalScribeListeningSessionOutput: GetMedicalScribeListeningSessionOutput
    GetPatientInsightsJobInput: GetPatientInsightsJobInput
    GetPatientInsightsJobOutput: GetPatientInsightsJobOutput
    GetSubscriptionInput: GetSubscriptionInput
    GetSubscriptionOutput: GetSubscriptionOutput
    ListDomainsInput: ListDomainsInput
    ListDomainsOutput: ListDomainsOutput
    ListSubscriptionsInput: ListSubscriptionsInput
    ListSubscriptionsOutput: ListSubscriptionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartMedicalScribeListeningSessionInput: StartMedicalScribeListeningSessionInput
    StartMedicalScribeListeningSessionOutput: StartMedicalScribeListeningSessionOutput
    StartPatientInsightsJobInput: StartPatientInsightsJobInput
    StartPatientInsightsJobOutput: StartPatientInsightsJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
