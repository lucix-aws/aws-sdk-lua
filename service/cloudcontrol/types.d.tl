local record CancelResourceRequestInput
    RequestToken: string
end

local record CancelResourceRequestOutput
    ProgressEvent: ProgressEvent
end

local record CreateResourceInput
    TypeName: string
    TypeVersionId: string
    RoleArn: string
    ClientToken: string
    DesiredState: string
end

local record CreateResourceOutput
    ProgressEvent: ProgressEvent
end

local record DeleteResourceInput
    TypeName: string
    TypeVersionId: string
    RoleArn: string
    ClientToken: string
    Identifier: string
end

local record DeleteResourceOutput
    ProgressEvent: ProgressEvent
end

local record GetResourceInput
    TypeName: string
    TypeVersionId: string
    RoleArn: string
    Identifier: string
end

local record GetResourceOutput
    TypeName: string
    ResourceDescription: ResourceDescription
end

local record GetResourceRequestStatusInput
    RequestToken: string
end

local record GetResourceRequestStatusOutput
    ProgressEvent: ProgressEvent
    HooksProgressEvent: {HookProgressEvent}
end

local record ListResourceRequestsInput
    MaxResults: number
    NextToken: string
    ResourceRequestStatusFilter: ResourceRequestStatusFilter
end

local record ListResourceRequestsOutput
    ResourceRequestStatusSummaries: {ProgressEvent}
    NextToken: string
end

local record ListResourcesInput
    TypeName: string
    TypeVersionId: string
    RoleArn: string
    NextToken: string
    MaxResults: number
    ResourceModel: string
end

local record ListResourcesOutput
    TypeName: string
    ResourceDescriptions: {ResourceDescription}
    NextToken: string
end

local record UpdateResourceInput
    TypeName: string
    TypeVersionId: string
    RoleArn: string
    ClientToken: string
    Identifier: string
    PatchDocument: string
end

local record UpdateResourceOutput
    ProgressEvent: ProgressEvent
end

local record ConcurrentModificationException
    Message: string
end

local record RequestTokenNotFoundException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ClientTokenConflictException
    Message: string
end

local record ConcurrentOperationException
    Message: string
end

local record GeneralServiceException
    Message: string
end

local record HandlerFailureException
    Message: string
end

local record HandlerInternalFailureException
    Message: string
end

local record InvalidCredentialsException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NetworkFailureException
    Message: string
end

local record NotStabilizedException
    Message: string
end

local record NotUpdatableException
    Message: string
end

local record PrivateTypeException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceInternalErrorException
    Message: string
end

local record ServiceLimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record UnsupportedActionException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ClientTokenConflictException
    Message: string
end

local record ConcurrentOperationException
    Message: string
end

local record GeneralServiceException
    Message: string
end

local record HandlerFailureException
    Message: string
end

local record HandlerInternalFailureException
    Message: string
end

local record InvalidCredentialsException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NetworkFailureException
    Message: string
end

local record NotStabilizedException
    Message: string
end

local record NotUpdatableException
    Message: string
end

local record PrivateTypeException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceInternalErrorException
    Message: string
end

local record ServiceLimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record UnsupportedActionException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record GeneralServiceException
    Message: string
end

local record HandlerFailureException
    Message: string
end

local record HandlerInternalFailureException
    Message: string
end

local record InvalidCredentialsException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NetworkFailureException
    Message: string
end

local record NotStabilizedException
    Message: string
end

local record NotUpdatableException
    Message: string
end

local record PrivateTypeException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceInternalErrorException
    Message: string
end

local record ServiceLimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record UnsupportedActionException
    Message: string
end

local record RequestTokenNotFoundException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record GeneralServiceException
    Message: string
end

local record HandlerFailureException
    Message: string
end

local record HandlerInternalFailureException
    Message: string
end

local record InvalidCredentialsException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NetworkFailureException
    Message: string
end

local record NotStabilizedException
    Message: string
end

local record NotUpdatableException
    Message: string
end

local record PrivateTypeException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceInternalErrorException
    Message: string
end

local record ServiceLimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record UnsupportedActionException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ClientTokenConflictException
    Message: string
end

local record ConcurrentOperationException
    Message: string
end

local record GeneralServiceException
    Message: string
end

local record HandlerFailureException
    Message: string
end

local record HandlerInternalFailureException
    Message: string
end

local record InvalidCredentialsException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NetworkFailureException
    Message: string
end

local record NotStabilizedException
    Message: string
end

local record NotUpdatableException
    Message: string
end

local record PrivateTypeException
    Message: string
end

local record ResourceConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceInternalErrorException
    Message: string
end

local record ServiceLimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record TypeNotFoundException
    Message: string
end

local record UnsupportedActionException
    Message: string
end

local record M
    CancelResourceRequestInput: CancelResourceRequestInput
    CancelResourceRequestOutput: CancelResourceRequestOutput
    CreateResourceInput: CreateResourceInput
    CreateResourceOutput: CreateResourceOutput
    DeleteResourceInput: DeleteResourceInput
    DeleteResourceOutput: DeleteResourceOutput
    GetResourceInput: GetResourceInput
    GetResourceOutput: GetResourceOutput
    GetResourceRequestStatusInput: GetResourceRequestStatusInput
    GetResourceRequestStatusOutput: GetResourceRequestStatusOutput
    ListResourceRequestsInput: ListResourceRequestsInput
    ListResourceRequestsOutput: ListResourceRequestsOutput
    ListResourcesInput: ListResourcesInput
    ListResourcesOutput: ListResourcesOutput
    UpdateResourceInput: UpdateResourceInput
    UpdateResourceOutput: UpdateResourceOutput
end

return M
