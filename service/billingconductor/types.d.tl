local record AssociateAccountsInput
    Arn: string
    AccountIds: {string}
end

local record AssociateAccountsOutput
    Arn: string
end

local record AssociatePricingRulesInput
    Arn: string
    PricingRuleArns: {string}
end

local record AssociatePricingRulesOutput
    Arn: string
end

local record BatchAssociateResourcesToCustomLineItemInput
    TargetArn: string
    ResourceArns: {string}
    BillingPeriodRange: CustomLineItemBillingPeriodRange
end

local record BatchAssociateResourcesToCustomLineItemOutput
    SuccessfullyAssociatedResources: {AssociateResourceResponseElement}
    FailedAssociatedResources: {AssociateResourceResponseElement}
end

local record BatchDisassociateResourcesFromCustomLineItemInput
    TargetArn: string
    ResourceArns: {string}
    BillingPeriodRange: CustomLineItemBillingPeriodRange
end

local record BatchDisassociateResourcesFromCustomLineItemOutput
    SuccessfullyDisassociatedResources: {DisassociateResourceResponseElement}
    FailedDisassociatedResources: {DisassociateResourceResponseElement}
end

local record CreateBillingGroupInput
    ClientToken: string
    Name: string
    AccountGrouping: AccountGrouping
    ComputationPreference: ComputationPreference
    PrimaryAccountId: string
    Description: string
    Tags: {string : string}
end

local record CreateBillingGroupOutput
    Arn: string
end

local record CreateCustomLineItemInput
    ClientToken: string
    Name: string
    Description: string
    BillingGroupArn: string
    BillingPeriodRange: CustomLineItemBillingPeriodRange
    Tags: {string : string}
    ChargeDetails: CustomLineItemChargeDetails
    AccountId: string
    ComputationRule: string
    PresentationDetails: PresentationObject
end

local record CreateCustomLineItemOutput
    Arn: string
end

local record CreatePricingPlanInput
    ClientToken: string
    Name: string
    Description: string
    PricingRuleArns: {string}
    Tags: {string : string}
end

local record CreatePricingPlanOutput
    Arn: string
end

local record CreatePricingRuleInput
    ClientToken: string
    Name: string
    Description: string
    Scope: string
    Type: string
    ModifierPercentage: number
    Service: string
    Tags: {string : string}
    BillingEntity: string
    Tiering: CreateTieringInput
    UsageType: string
    Operation: string
end

local record CreatePricingRuleOutput
    Arn: string
end

local record DeleteBillingGroupInput
    Arn: string
end

local record DeleteBillingGroupOutput
    Arn: string
end

local record DeleteCustomLineItemInput
    Arn: string
    BillingPeriodRange: CustomLineItemBillingPeriodRange
end

local record DeleteCustomLineItemOutput
    Arn: string
end

local record DeletePricingPlanInput
    Arn: string
end

local record DeletePricingPlanOutput
    Arn: string
end

local record DeletePricingRuleInput
    Arn: string
end

local record DeletePricingRuleOutput
    Arn: string
end

local record DisassociateAccountsInput
    Arn: string
    AccountIds: {string}
end

local record DisassociateAccountsOutput
    Arn: string
end

local record DisassociatePricingRulesInput
    Arn: string
    PricingRuleArns: {string}
end

local record DisassociatePricingRulesOutput
    Arn: string
end

local record GetBillingGroupCostReportInput
    Arn: string
    BillingPeriodRange: BillingPeriodRange
    GroupBy: {string}
    MaxResults: number
    NextToken: string
end

local record GetBillingGroupCostReportOutput
    BillingGroupCostReportResults: {BillingGroupCostReportResultElement}
    NextToken: string
end

local record ListAccountAssociationsInput
    BillingPeriod: string
    Filters: ListAccountAssociationsFilter
    NextToken: string
end

local record ListAccountAssociationsOutput
    LinkedAccounts: {AccountAssociationsListElement}
    NextToken: string
end

local record ListBillingGroupCostReportsInput
    BillingPeriod: string
    MaxResults: number
    NextToken: string
    Filters: ListBillingGroupCostReportsFilter
end

local record ListBillingGroupCostReportsOutput
    BillingGroupCostReports: {BillingGroupCostReportElement}
    NextToken: string
end

local record ListBillingGroupsInput
    BillingPeriod: string
    MaxResults: number
    NextToken: string
    Filters: ListBillingGroupsFilter
end

local record ListBillingGroupsOutput
    BillingGroups: {BillingGroupListElement}
    NextToken: string
end

local record ListCustomLineItemsInput
    BillingPeriod: string
    MaxResults: number
    NextToken: string
    Filters: ListCustomLineItemsFilter
end

local record ListCustomLineItemsOutput
    CustomLineItems: {CustomLineItemListElement}
    NextToken: string
end

local record ListCustomLineItemVersionsInput
    Arn: string
    MaxResults: number
    NextToken: string
    Filters: ListCustomLineItemVersionsFilter
end

local record ListCustomLineItemVersionsOutput
    CustomLineItemVersions: {CustomLineItemVersionListElement}
    NextToken: string
end

local record ListPricingPlansInput
    BillingPeriod: string
    Filters: ListPricingPlansFilter
    MaxResults: number
    NextToken: string
end

local record ListPricingPlansOutput
    BillingPeriod: string
    PricingPlans: {PricingPlanListElement}
    NextToken: string
end

local record ListPricingPlansAssociatedWithPricingRuleInput
    BillingPeriod: string
    PricingRuleArn: string
    MaxResults: number
    NextToken: string
end

local record ListPricingPlansAssociatedWithPricingRuleOutput
    BillingPeriod: string
    PricingRuleArn: string
    PricingPlanArns: {string}
    NextToken: string
end

local record ListPricingRulesInput
    BillingPeriod: string
    Filters: ListPricingRulesFilter
    MaxResults: number
    NextToken: string
end

local record ListPricingRulesOutput
    BillingPeriod: string
    PricingRules: {PricingRuleListElement}
    NextToken: string
end

local record ListPricingRulesAssociatedToPricingPlanInput
    BillingPeriod: string
    PricingPlanArn: string
    MaxResults: number
    NextToken: string
end

local record ListPricingRulesAssociatedToPricingPlanOutput
    BillingPeriod: string
    PricingPlanArn: string
    PricingRuleArns: {string}
    NextToken: string
end

local record ListResourcesAssociatedToCustomLineItemInput
    BillingPeriod: string
    Arn: string
    MaxResults: number
    NextToken: string
    Filters: ListResourcesAssociatedToCustomLineItemFilter
end

local record ListResourcesAssociatedToCustomLineItemOutput
    Arn: string
    AssociatedResources: {ListResourcesAssociatedToCustomLineItemResponseElement}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
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

local record UpdateBillingGroupInput
    Arn: string
    Name: string
    Status: string
    ComputationPreference: ComputationPreference
    Description: string
    AccountGrouping: UpdateBillingGroupAccountGrouping
end

local record UpdateBillingGroupOutput
    Arn: string
    Name: string
    Description: string
    PrimaryAccountId: string
    PricingPlanArn: string
    Size: number
    LastModifiedTime: number
    Status: string
    StatusReason: string
    AccountGrouping: UpdateBillingGroupAccountGrouping
end

local record UpdateCustomLineItemInput
    Arn: string
    Name: string
    Description: string
    ChargeDetails: UpdateCustomLineItemChargeDetails
    BillingPeriodRange: CustomLineItemBillingPeriodRange
end

local record UpdateCustomLineItemOutput
    Arn: string
    BillingGroupArn: string
    Name: string
    Description: string
    ChargeDetails: ListCustomLineItemChargeDetails
    LastModifiedTime: number
    AssociationSize: number
end

local record UpdatePricingPlanInput
    Arn: string
    Name: string
    Description: string
end

local record UpdatePricingPlanOutput
    Arn: string
    Name: string
    Description: string
    Size: number
    LastModifiedTime: number
end

local record UpdatePricingRuleInput
    Arn: string
    Name: string
    Description: string
    Type: string
    ModifierPercentage: number
    Tiering: UpdateTieringInput
end

local record UpdatePricingRuleOutput
    Arn: string
    Name: string
    Description: string
    Scope: string
    Type: string
    ModifierPercentage: number
    Service: string
    AssociatedPricingPlanCount: number
    LastModifiedTime: number
    BillingEntity: string
    Tiering: UpdateTieringInput
    UsageType: string
    Operation: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceLimitExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceLimitExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceLimitExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceLimitExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceLimitExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceLimitExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceLimitExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
    Reason: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local type PricingRuleType = "MARKUP" | "DISCOUNT" | "TIERING"

local type ComputationRuleEnum = "ITEMIZED" | "CONSOLIDATED"

local type PricingRuleScope = "GLOBAL" | "SERVICE" | "BILLING_ENTITY" | "SKU"

local type BillingGroupStatus = "ACTIVE" | "PRIMARY_ACCOUNT_MISSING" | "PENDING"

local record M
    AssociateAccountsInput: AssociateAccountsInput
    AssociateAccountsOutput: AssociateAccountsOutput
    AssociatePricingRulesInput: AssociatePricingRulesInput
    AssociatePricingRulesOutput: AssociatePricingRulesOutput
    BatchAssociateResourcesToCustomLineItemInput: BatchAssociateResourcesToCustomLineItemInput
    BatchAssociateResourcesToCustomLineItemOutput: BatchAssociateResourcesToCustomLineItemOutput
    BatchDisassociateResourcesFromCustomLineItemInput: BatchDisassociateResourcesFromCustomLineItemInput
    BatchDisassociateResourcesFromCustomLineItemOutput: BatchDisassociateResourcesFromCustomLineItemOutput
    CreateBillingGroupInput: CreateBillingGroupInput
    CreateBillingGroupOutput: CreateBillingGroupOutput
    CreateCustomLineItemInput: CreateCustomLineItemInput
    CreateCustomLineItemOutput: CreateCustomLineItemOutput
    CreatePricingPlanInput: CreatePricingPlanInput
    CreatePricingPlanOutput: CreatePricingPlanOutput
    CreatePricingRuleInput: CreatePricingRuleInput
    CreatePricingRuleOutput: CreatePricingRuleOutput
    DeleteBillingGroupInput: DeleteBillingGroupInput
    DeleteBillingGroupOutput: DeleteBillingGroupOutput
    DeleteCustomLineItemInput: DeleteCustomLineItemInput
    DeleteCustomLineItemOutput: DeleteCustomLineItemOutput
    DeletePricingPlanInput: DeletePricingPlanInput
    DeletePricingPlanOutput: DeletePricingPlanOutput
    DeletePricingRuleInput: DeletePricingRuleInput
    DeletePricingRuleOutput: DeletePricingRuleOutput
    DisassociateAccountsInput: DisassociateAccountsInput
    DisassociateAccountsOutput: DisassociateAccountsOutput
    DisassociatePricingRulesInput: DisassociatePricingRulesInput
    DisassociatePricingRulesOutput: DisassociatePricingRulesOutput
    GetBillingGroupCostReportInput: GetBillingGroupCostReportInput
    GetBillingGroupCostReportOutput: GetBillingGroupCostReportOutput
    ListAccountAssociationsInput: ListAccountAssociationsInput
    ListAccountAssociationsOutput: ListAccountAssociationsOutput
    ListBillingGroupCostReportsInput: ListBillingGroupCostReportsInput
    ListBillingGroupCostReportsOutput: ListBillingGroupCostReportsOutput
    ListBillingGroupsInput: ListBillingGroupsInput
    ListBillingGroupsOutput: ListBillingGroupsOutput
    ListCustomLineItemsInput: ListCustomLineItemsInput
    ListCustomLineItemsOutput: ListCustomLineItemsOutput
    ListCustomLineItemVersionsInput: ListCustomLineItemVersionsInput
    ListCustomLineItemVersionsOutput: ListCustomLineItemVersionsOutput
    ListPricingPlansInput: ListPricingPlansInput
    ListPricingPlansOutput: ListPricingPlansOutput
    ListPricingPlansAssociatedWithPricingRuleInput: ListPricingPlansAssociatedWithPricingRuleInput
    ListPricingPlansAssociatedWithPricingRuleOutput: ListPricingPlansAssociatedWithPricingRuleOutput
    ListPricingRulesInput: ListPricingRulesInput
    ListPricingRulesOutput: ListPricingRulesOutput
    ListPricingRulesAssociatedToPricingPlanInput: ListPricingRulesAssociatedToPricingPlanInput
    ListPricingRulesAssociatedToPricingPlanOutput: ListPricingRulesAssociatedToPricingPlanOutput
    ListResourcesAssociatedToCustomLineItemInput: ListResourcesAssociatedToCustomLineItemInput
    ListResourcesAssociatedToCustomLineItemOutput: ListResourcesAssociatedToCustomLineItemOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBillingGroupInput: UpdateBillingGroupInput
    UpdateBillingGroupOutput: UpdateBillingGroupOutput
    UpdateCustomLineItemInput: UpdateCustomLineItemInput
    UpdateCustomLineItemOutput: UpdateCustomLineItemOutput
    UpdatePricingPlanInput: UpdatePricingPlanInput
    UpdatePricingPlanOutput: UpdatePricingPlanOutput
    UpdatePricingRuleInput: UpdatePricingRuleInput
    UpdatePricingRuleOutput: UpdatePricingRuleOutput
end

return M
