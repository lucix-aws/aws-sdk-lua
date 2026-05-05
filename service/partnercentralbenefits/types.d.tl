local record AmendBenefitApplicationInput
    Catalog: string
    ClientToken: string
    Revision: string
    Identifier: string
    AmendmentReason: string
    Amendments: {Amendment}
end

local record AmendBenefitApplicationOutput
end

local record AssociateBenefitApplicationResourceInput
    Catalog: string
    BenefitApplicationIdentifier: string
    ResourceArn: string
end

local record AssociateBenefitApplicationResourceOutput
    Id: string
    Arn: string
    Revision: string
end

local record CancelBenefitApplicationInput
    Catalog: string
    ClientToken: string
    Identifier: string
    Reason: string
end

local record CancelBenefitApplicationOutput
end

local record CreateBenefitApplicationInput
    Catalog: string
    ClientToken: string
    Name: string
    Description: string
    BenefitIdentifier: string
    FulfillmentTypes: {string}
    BenefitApplicationDetails: any
    Tags: {Tag}
    AssociatedResources: {string}
    PartnerContacts: {Contact}
    FileDetails: {FileInput}
end

local record CreateBenefitApplicationOutput
    Id: string
    Arn: string
    Revision: string
end

local record DisassociateBenefitApplicationResourceInput
    Catalog: string
    BenefitApplicationIdentifier: string
    ResourceArn: string
end

local record DisassociateBenefitApplicationResourceOutput
    Id: string
    Arn: string
    Revision: string
end

local record GetBenefitInput
    Catalog: string
    Identifier: string
end

local record GetBenefitOutput
    Id: string
    Catalog: string
    Arn: string
    Name: string
    Description: string
    Programs: {string}
    FulfillmentTypes: {string}
    BenefitRequestSchema: any
    Status: string
end

local record GetBenefitAllocationInput
    Catalog: string
    Identifier: string
end

local record GetBenefitAllocationOutput
    Id: string
    Catalog: string
    Arn: string
    Name: string
    Description: string
    Status: string
    StatusReason: string
    BenefitApplicationId: string
    BenefitId: string
    FulfillmentType: string
    ApplicableBenefitIds: {string}
    FulfillmentDetail: FulfillmentDetails
    CreatedAt: number
    UpdatedAt: number
    StartsAt: number
    ExpiresAt: number
end

local record GetBenefitApplicationInput
    Catalog: string
    Identifier: string
end

local record GetBenefitApplicationOutput
    Id: string
    Arn: string
    Catalog: string
    BenefitId: string
    Name: string
    Description: string
    FulfillmentTypes: {string}
    BenefitApplicationDetails: any
    Programs: {string}
    Status: string
    Stage: string
    StatusReason: string
    StatusReasonCode: string
    StatusReasonCodes: {string}
    CreatedAt: number
    UpdatedAt: number
    Revision: string
    AssociatedResources: {string}
    PartnerContacts: {Contact}
    FileDetails: {FileDetail}
end

local record ListBenefitAllocationsInput
    Catalog: string
    FulfillmentTypes: {string}
    BenefitIdentifiers: {string}
    BenefitApplicationIdentifiers: {string}
    Status: {string}
    MaxResults: number
    NextToken: string
end

local record ListBenefitAllocationsOutput
    BenefitAllocationSummaries: {BenefitAllocationSummary}
    NextToken: string
end

local record ListBenefitApplicationsInput
    Catalog: string
    Programs: {string}
    FulfillmentTypes: {string}
    BenefitIdentifiers: {string}
    Status: {string}
    Stages: {string}
    AssociatedResources: {AssociatedResource}
    AssociatedResourceArns: {string}
    MaxResults: number
    NextToken: string
end

local record ListBenefitApplicationsOutput
    BenefitApplicationSummaries: {BenefitApplicationSummary}
    NextToken: string
end

local record ListBenefitsInput
    Catalog: string
    Programs: {string}
    FulfillmentTypes: {string}
    Status: {string}
    MaxResults: number
    NextToken: string
end

local record ListBenefitsOutput
    BenefitSummaries: {BenefitSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record RecallBenefitApplicationInput
    Catalog: string
    ClientToken: string
    Identifier: string
    Reason: string
end

local record RecallBenefitApplicationOutput
end

local record SubmitBenefitApplicationInput
    Catalog: string
    Identifier: string
end

local record SubmitBenefitApplicationOutput
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateBenefitApplicationInput
    Catalog: string
    ClientToken: string
    Name: string
    Description: string
    Identifier: string
    Revision: string
    BenefitApplicationDetails: any
    PartnerContacts: {Contact}
    FileDetails: {FileInput}
end

local record UpdateBenefitApplicationOutput
    Id: string
    Arn: string
    Revision: string
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

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    QuotaCode: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    QuotaCode: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local type FulfillmentType = "CREDITS" | "CASH" | "ACCESS"

local type BenefitApplicationStatus = "PENDING_SUBMISSION" | "IN_REVIEW" | "ACTION_REQUIRED" | "APPROVED" | "REJECTED" | "CANCELED"

local type BenefitAllocationStatus = "ACTIVE" | "INACTIVE" | "FULFILLED"

local type BenefitStatus = "ACTIVE" | "INACTIVE"

local record M
    AmendBenefitApplicationInput: AmendBenefitApplicationInput
    AmendBenefitApplicationOutput: AmendBenefitApplicationOutput
    AssociateBenefitApplicationResourceInput: AssociateBenefitApplicationResourceInput
    AssociateBenefitApplicationResourceOutput: AssociateBenefitApplicationResourceOutput
    CancelBenefitApplicationInput: CancelBenefitApplicationInput
    CancelBenefitApplicationOutput: CancelBenefitApplicationOutput
    CreateBenefitApplicationInput: CreateBenefitApplicationInput
    CreateBenefitApplicationOutput: CreateBenefitApplicationOutput
    DisassociateBenefitApplicationResourceInput: DisassociateBenefitApplicationResourceInput
    DisassociateBenefitApplicationResourceOutput: DisassociateBenefitApplicationResourceOutput
    GetBenefitInput: GetBenefitInput
    GetBenefitOutput: GetBenefitOutput
    GetBenefitAllocationInput: GetBenefitAllocationInput
    GetBenefitAllocationOutput: GetBenefitAllocationOutput
    GetBenefitApplicationInput: GetBenefitApplicationInput
    GetBenefitApplicationOutput: GetBenefitApplicationOutput
    ListBenefitAllocationsInput: ListBenefitAllocationsInput
    ListBenefitAllocationsOutput: ListBenefitAllocationsOutput
    ListBenefitApplicationsInput: ListBenefitApplicationsInput
    ListBenefitApplicationsOutput: ListBenefitApplicationsOutput
    ListBenefitsInput: ListBenefitsInput
    ListBenefitsOutput: ListBenefitsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RecallBenefitApplicationInput: RecallBenefitApplicationInput
    RecallBenefitApplicationOutput: RecallBenefitApplicationOutput
    SubmitBenefitApplicationInput: SubmitBenefitApplicationInput
    SubmitBenefitApplicationOutput: SubmitBenefitApplicationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBenefitApplicationInput: UpdateBenefitApplicationInput
    UpdateBenefitApplicationOutput: UpdateBenefitApplicationOutput
end

return M
