local record CreateSuiteDefinitionInput
    suiteDefinitionConfiguration: SuiteDefinitionConfiguration
    tags: {string : string}
    clientToken: string
end

local record CreateSuiteDefinitionOutput
    suiteDefinitionId: string
    suiteDefinitionArn: string
    suiteDefinitionName: string
    createdAt: number
end

local record DeleteSuiteDefinitionInput
    suiteDefinitionId: string
end

local record DeleteSuiteDefinitionOutput
end

local record GetEndpointInput
    thingArn: string
    certificateArn: string
    deviceRoleArn: string
    authenticationMethod: string
end

local record GetEndpointOutput
    endpoint: string
end

local record GetSuiteDefinitionInput
    suiteDefinitionId: string
    suiteDefinitionVersion: string
end

local record GetSuiteDefinitionOutput
    suiteDefinitionId: string
    suiteDefinitionArn: string
    suiteDefinitionVersion: string
    latestVersion: string
    suiteDefinitionConfiguration: SuiteDefinitionConfiguration
    createdAt: number
    lastModifiedAt: number
    tags: {string : string}
end

local record GetSuiteRunInput
    suiteDefinitionId: string
    suiteRunId: string
end

local record GetSuiteRunOutput
    suiteDefinitionId: string
    suiteDefinitionVersion: string
    suiteRunId: string
    suiteRunArn: string
    suiteRunConfiguration: SuiteRunConfiguration
    testResult: TestResult
    startTime: number
    endTime: number
    status: string
    errorReason: string
    tags: {string : string}
end

local record GetSuiteRunReportInput
    suiteDefinitionId: string
    suiteRunId: string
end

local record GetSuiteRunReportOutput
    qualificationReportDownloadUrl: string
end

local record ListSuiteDefinitionsInput
    maxResults: number
    nextToken: string
end

local record ListSuiteDefinitionsOutput
    suiteDefinitionInformationList: {SuiteDefinitionInformation}
    nextToken: string
end

local record ListSuiteRunsInput
    suiteDefinitionId: string
    suiteDefinitionVersion: string
    maxResults: number
    nextToken: string
end

local record ListSuiteRunsOutput
    suiteRunsList: {SuiteRunInformation}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record StartSuiteRunInput
    suiteDefinitionId: string
    suiteDefinitionVersion: string
    suiteRunConfiguration: SuiteRunConfiguration
    tags: {string : string}
end

local record StartSuiteRunOutput
    suiteRunId: string
    suiteRunArn: string
    createdAt: number
    endpoint: string
end

local record StopSuiteRunInput
    suiteDefinitionId: string
    suiteRunId: string
end

local record StopSuiteRunOutput
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

local record UpdateSuiteDefinitionInput
    suiteDefinitionId: string
    suiteDefinitionConfiguration: SuiteDefinitionConfiguration
end

local record UpdateSuiteDefinitionOutput
    suiteDefinitionId: string
    suiteDefinitionArn: string
    suiteDefinitionName: string
    suiteDefinitionVersion: string
    createdAt: number
    lastUpdatedAt: number
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
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

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
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

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
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

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
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

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local type AuthenticationMethod = "X509ClientCertificate" | "SignatureVersion4"

local type SuiteRunStatus = "PASS" | "FAIL" | "CANCELED" | "PENDING" | "RUNNING" | "STOPPING" | "STOPPED" | "PASS_WITH_WARNINGS" | "ERROR"

local record M
    CreateSuiteDefinitionInput: CreateSuiteDefinitionInput
    CreateSuiteDefinitionOutput: CreateSuiteDefinitionOutput
    DeleteSuiteDefinitionInput: DeleteSuiteDefinitionInput
    DeleteSuiteDefinitionOutput: DeleteSuiteDefinitionOutput
    GetEndpointInput: GetEndpointInput
    GetEndpointOutput: GetEndpointOutput
    GetSuiteDefinitionInput: GetSuiteDefinitionInput
    GetSuiteDefinitionOutput: GetSuiteDefinitionOutput
    GetSuiteRunInput: GetSuiteRunInput
    GetSuiteRunOutput: GetSuiteRunOutput
    GetSuiteRunReportInput: GetSuiteRunReportInput
    GetSuiteRunReportOutput: GetSuiteRunReportOutput
    ListSuiteDefinitionsInput: ListSuiteDefinitionsInput
    ListSuiteDefinitionsOutput: ListSuiteDefinitionsOutput
    ListSuiteRunsInput: ListSuiteRunsInput
    ListSuiteRunsOutput: ListSuiteRunsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartSuiteRunInput: StartSuiteRunInput
    StartSuiteRunOutput: StartSuiteRunOutput
    StopSuiteRunInput: StopSuiteRunInput
    StopSuiteRunOutput: StopSuiteRunOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateSuiteDefinitionInput: UpdateSuiteDefinitionInput
    UpdateSuiteDefinitionOutput: UpdateSuiteDefinitionOutput
end

return M
