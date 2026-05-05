local record BatchDescribeEntitiesInput
    EntityRequestList: {EntityRequest}
end

local record BatchDescribeEntitiesOutput
    EntityDetails: {string : EntityDetail}
    Errors: {string : BatchDescribeErrorDetail}
end

local record CancelChangeSetInput
    Catalog: string
    ChangeSetId: string
end

local record CancelChangeSetOutput
    ChangeSetId: string
    ChangeSetArn: string
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DescribeChangeSetInput
    Catalog: string
    ChangeSetId: string
end

local record DescribeChangeSetOutput
    ChangeSetId: string
    ChangeSetArn: string
    ChangeSetName: string
    Intent: string
    StartTime: string
    EndTime: string
    Status: string
    FailureCode: string
    FailureDescription: string
    ChangeSet: {ChangeSummary}
end

local record DescribeEntityInput
    Catalog: string
    EntityId: string
end

local record DescribeEntityOutput
    EntityType: string
    EntityIdentifier: string
    EntityArn: string
    LastModifiedDate: string
    Details: string
    DetailsDocument: any
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    Policy: string
end

local record ListChangeSetsInput
    Catalog: string
    FilterList: {Filter}
    Sort: Sort
    MaxResults: number
    NextToken: string
end

local record ListChangeSetsOutput
    ChangeSetSummaryList: {ChangeSetSummaryListItem}
    NextToken: string
end

local record ListEntitiesInput
    Catalog: string
    EntityType: string
    FilterList: {Filter}
    Sort: Sort
    NextToken: string
    MaxResults: number
    OwnershipType: string
    EntityTypeFilters: EntityTypeFilters
    EntityTypeSort: EntityTypeSort
end

local record ListEntitiesOutput
    EntitySummaryList: {EntitySummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    ResourceArn: string
    Tags: {Tag}
end

local record PutResourcePolicyInput
    ResourceArn: string
    Policy: string
end

local record PutResourcePolicyOutput
end

local record StartChangeSetInput
    Catalog: string
    ChangeSet: {Change}
    ChangeSetName: string
    ClientRequestToken: string
    ChangeSetTags: {Tag}
    Intent: string
end

local record StartChangeSetOutput
    ChangeSetId: string
    ChangeSetArn: string
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

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
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

local record InternalServiceException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
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

local record InternalServiceException
    Message: string
end

local record ResourceNotFoundException
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

local record InternalServiceException
    Message: string
end

local record ResourceNotFoundException
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

local record InternalServiceException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotSupportedException
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

local record InternalServiceException
    Message: string
end

local record ResourceNotFoundException
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

local record InternalServiceException
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

local record InternalServiceException
    Message: string
end

local record ResourceNotFoundException
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

local record InternalServiceException
    Message: string
end

local record ResourceNotFoundException
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

local record InternalServiceException
    Message: string
end

local record ResourceNotFoundException
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

local record InternalServiceException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
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

local record InternalServiceException
    Message: string
end

local record ResourceNotFoundException
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

local record InternalServiceException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local type Intent = "VALIDATE" | "APPLY"

local type OwnershipType = "SELF" | "SHARED"

local type ChangeStatus = "PREPARING" | "APPLYING" | "SUCCEEDED" | "CANCELLED" | "FAILED"

local type FailureCode = "CLIENT_ERROR" | "SERVER_FAULT"

local record M
    BatchDescribeEntitiesInput: BatchDescribeEntitiesInput
    BatchDescribeEntitiesOutput: BatchDescribeEntitiesOutput
    CancelChangeSetInput: CancelChangeSetInput
    CancelChangeSetOutput: CancelChangeSetOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DescribeChangeSetInput: DescribeChangeSetInput
    DescribeChangeSetOutput: DescribeChangeSetOutput
    DescribeEntityInput: DescribeEntityInput
    DescribeEntityOutput: DescribeEntityOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    ListChangeSetsInput: ListChangeSetsInput
    ListChangeSetsOutput: ListChangeSetsOutput
    ListEntitiesInput: ListEntitiesInput
    ListEntitiesOutput: ListEntitiesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    StartChangeSetInput: StartChangeSetInput
    StartChangeSetOutput: StartChangeSetOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
