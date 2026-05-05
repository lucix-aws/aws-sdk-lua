local record AssociateResourceInput
    GroupIdentifier: string
    ResourceArn: string
end

local record AssociateResourceOutput
end

local record CreateCanaryInput
    Name: string
    Code: CanaryCodeInput
    ArtifactS3Location: string
    ExecutionRoleArn: string
    Schedule: CanaryScheduleInput
    RunConfig: CanaryRunConfigInput
    SuccessRetentionPeriodInDays: number
    FailureRetentionPeriodInDays: number
    RuntimeVersion: string
    VpcConfig: VpcConfigInput
    ResourcesToReplicateTags: {string}
    ProvisionedResourceCleanup: string
    BrowserConfigs: {BrowserConfig}
    Tags: {string : string}
    ArtifactConfig: ArtifactConfigInput
end

local record CreateCanaryOutput
    Canary: Canary
end

local record CreateGroupInput
    Name: string
    Tags: {string : string}
end

local record CreateGroupOutput
    Group: Group
end

local record DeleteCanaryInput
    Name: string
    DeleteLambda: boolean
end

local record DeleteCanaryOutput
end

local record DeleteGroupInput
    GroupIdentifier: string
end

local record DeleteGroupOutput
end

local record DescribeCanariesInput
    NextToken: string
    MaxResults: number
    Names: {string}
end

local record DescribeCanariesOutput
    Canaries: {Canary}
    NextToken: string
end

local record DescribeCanariesLastRunInput
    NextToken: string
    MaxResults: number
    Names: {string}
    BrowserType: string
end

local record DescribeCanariesLastRunOutput
    CanariesLastRun: {CanaryLastRun}
    NextToken: string
end

local record DescribeRuntimeVersionsInput
    NextToken: string
    MaxResults: number
end

local record DescribeRuntimeVersionsOutput
    RuntimeVersions: {RuntimeVersion}
    NextToken: string
end

local record DisassociateResourceInput
    GroupIdentifier: string
    ResourceArn: string
end

local record DisassociateResourceOutput
end

local record GetCanaryInput
    Name: string
    DryRunId: string
end

local record GetCanaryOutput
    Canary: Canary
end

local record GetCanaryRunsInput
    Name: string
    NextToken: string
    MaxResults: number
    DryRunId: string
    RunType: string
end

local record GetCanaryRunsOutput
    CanaryRuns: {CanaryRun}
    NextToken: string
end

local record GetGroupInput
    GroupIdentifier: string
end

local record GetGroupOutput
    Group: Group
end

local record ListAssociatedGroupsInput
    NextToken: string
    MaxResults: number
    ResourceArn: string
end

local record ListAssociatedGroupsOutput
    Groups: {GroupSummary}
    NextToken: string
end

local record ListGroupResourcesInput
    NextToken: string
    MaxResults: number
    GroupIdentifier: string
end

local record ListGroupResourcesOutput
    Resources: {string}
    NextToken: string
end

local record ListGroupsInput
    NextToken: string
    MaxResults: number
end

local record ListGroupsOutput
    Groups: {GroupSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record StartCanaryInput
    Name: string
end

local record StartCanaryOutput
end

local record StartCanaryDryRunInput
    Name: string
    Code: CanaryCodeInput
    RuntimeVersion: string
    RunConfig: CanaryRunConfigInput
    VpcConfig: VpcConfigInput
    ExecutionRoleArn: string
    SuccessRetentionPeriodInDays: number
    FailureRetentionPeriodInDays: number
    VisualReference: VisualReferenceInput
    ArtifactS3Location: string
    ArtifactConfig: ArtifactConfigInput
    ProvisionedResourceCleanup: string
    BrowserConfigs: {BrowserConfig}
    VisualReferences: {VisualReferenceInput}
end

local record StartCanaryDryRunOutput
    DryRunConfig: DryRunConfigOutput
end

local record StopCanaryInput
    Name: string
end

local record StopCanaryOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCanaryInput
    Name: string
    Code: CanaryCodeInput
    ExecutionRoleArn: string
    RuntimeVersion: string
    Schedule: CanaryScheduleInput
    RunConfig: CanaryRunConfigInput
    SuccessRetentionPeriodInDays: number
    FailureRetentionPeriodInDays: number
    VpcConfig: VpcConfigInput
    VisualReference: VisualReferenceInput
    ArtifactS3Location: string
    ArtifactConfig: ArtifactConfigInput
    ProvisionedResourceCleanup: string
    DryRunId: string
    VisualReferences: {VisualReferenceInput}
    BrowserConfigs: {BrowserConfig}
end

local record UpdateCanaryOutput
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record RequestEntityTooLargeException
    Message: string
end

local record ValidationException
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

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
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

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record NotFoundException
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

local record InternalFailureException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
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

local record RequestEntityTooLargeException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local type BrowserType = "CHROME" | "FIREFOX"

local type ProvisionedResourceCleanupSetting = "AUTOMATIC" | "OFF"

local type RunType = "CANARY_RUN" | "DRY_RUN"

local record M
    AssociateResourceInput: AssociateResourceInput
    AssociateResourceOutput: AssociateResourceOutput
    CreateCanaryInput: CreateCanaryInput
    CreateCanaryOutput: CreateCanaryOutput
    CreateGroupInput: CreateGroupInput
    CreateGroupOutput: CreateGroupOutput
    DeleteCanaryInput: DeleteCanaryInput
    DeleteCanaryOutput: DeleteCanaryOutput
    DeleteGroupInput: DeleteGroupInput
    DeleteGroupOutput: DeleteGroupOutput
    DescribeCanariesInput: DescribeCanariesInput
    DescribeCanariesOutput: DescribeCanariesOutput
    DescribeCanariesLastRunInput: DescribeCanariesLastRunInput
    DescribeCanariesLastRunOutput: DescribeCanariesLastRunOutput
    DescribeRuntimeVersionsInput: DescribeRuntimeVersionsInput
    DescribeRuntimeVersionsOutput: DescribeRuntimeVersionsOutput
    DisassociateResourceInput: DisassociateResourceInput
    DisassociateResourceOutput: DisassociateResourceOutput
    GetCanaryInput: GetCanaryInput
    GetCanaryOutput: GetCanaryOutput
    GetCanaryRunsInput: GetCanaryRunsInput
    GetCanaryRunsOutput: GetCanaryRunsOutput
    GetGroupInput: GetGroupInput
    GetGroupOutput: GetGroupOutput
    ListAssociatedGroupsInput: ListAssociatedGroupsInput
    ListAssociatedGroupsOutput: ListAssociatedGroupsOutput
    ListGroupResourcesInput: ListGroupResourcesInput
    ListGroupResourcesOutput: ListGroupResourcesOutput
    ListGroupsInput: ListGroupsInput
    ListGroupsOutput: ListGroupsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartCanaryInput: StartCanaryInput
    StartCanaryOutput: StartCanaryOutput
    StartCanaryDryRunInput: StartCanaryDryRunInput
    StartCanaryDryRunOutput: StartCanaryDryRunOutput
    StopCanaryInput: StopCanaryInput
    StopCanaryOutput: StopCanaryOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCanaryInput: UpdateCanaryInput
    UpdateCanaryOutput: UpdateCanaryOutput
end

return M
