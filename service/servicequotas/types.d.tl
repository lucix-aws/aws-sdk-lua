local record AssociateServiceQuotaTemplateInput
end

local record AssociateServiceQuotaTemplateOutput
end

local record CreateSupportCaseInput
    RequestId: string
end

local record CreateSupportCaseOutput
end

local record DeleteServiceQuotaIncreaseRequestFromTemplateInput
    ServiceCode: string
    QuotaCode: string
    AwsRegion: string
end

local record DeleteServiceQuotaIncreaseRequestFromTemplateOutput
end

local record DisassociateServiceQuotaTemplateInput
end

local record DisassociateServiceQuotaTemplateOutput
end

local record GetAssociationForServiceQuotaTemplateInput
end

local record GetAssociationForServiceQuotaTemplateOutput
    ServiceQuotaTemplateAssociationStatus: string
end

local record GetAutoManagementConfigurationInput
end

local record GetAutoManagementConfigurationOutput
    OptInLevel: string
    OptInType: string
    NotificationArn: string
    OptInStatus: string
    ExclusionList: {string : {QuotaInfo}}
end

local record GetAWSDefaultServiceQuotaInput
    ServiceCode: string
    QuotaCode: string
end

local record GetAWSDefaultServiceQuotaOutput
    Quota: ServiceQuota
end

local record GetQuotaUtilizationReportInput
    ReportId: string
    NextToken: string
    MaxResults: number
end

local record GetQuotaUtilizationReportOutput
    ReportId: string
    Status: string
    GeneratedAt: number
    TotalCount: number
    Quotas: {QuotaUtilizationInfo}
    NextToken: string
    ErrorCode: string
    ErrorMessage: string
end

local record GetRequestedServiceQuotaChangeInput
    RequestId: string
end

local record GetRequestedServiceQuotaChangeOutput
    RequestedQuota: RequestedServiceQuotaChange
end

local record GetServiceQuotaInput
    ServiceCode: string
    QuotaCode: string
    ContextId: string
end

local record GetServiceQuotaOutput
    Quota: ServiceQuota
end

local record GetServiceQuotaIncreaseRequestFromTemplateInput
    ServiceCode: string
    QuotaCode: string
    AwsRegion: string
end

local record GetServiceQuotaIncreaseRequestFromTemplateOutput
    ServiceQuotaIncreaseRequestInTemplate: ServiceQuotaIncreaseRequestInTemplate
end

local record ListAWSDefaultServiceQuotasInput
    ServiceCode: string
    NextToken: string
    MaxResults: number
end

local record ListAWSDefaultServiceQuotasOutput
    NextToken: string
    Quotas: {ServiceQuota}
end

local record ListRequestedServiceQuotaChangeHistoryInput
    ServiceCode: string
    Status: string
    NextToken: string
    MaxResults: number
    QuotaRequestedAtLevel: string
end

local record ListRequestedServiceQuotaChangeHistoryOutput
    NextToken: string
    RequestedQuotas: {RequestedServiceQuotaChange}
end

local record ListRequestedServiceQuotaChangeHistoryByQuotaInput
    ServiceCode: string
    QuotaCode: string
    Status: string
    NextToken: string
    MaxResults: number
    QuotaRequestedAtLevel: string
end

local record ListRequestedServiceQuotaChangeHistoryByQuotaOutput
    NextToken: string
    RequestedQuotas: {RequestedServiceQuotaChange}
end

local record ListServiceQuotaIncreaseRequestsInTemplateInput
    ServiceCode: string
    AwsRegion: string
    NextToken: string
    MaxResults: number
end

local record ListServiceQuotaIncreaseRequestsInTemplateOutput
    ServiceQuotaIncreaseRequestInTemplateList: {ServiceQuotaIncreaseRequestInTemplate}
    NextToken: string
end

local record ListServiceQuotasInput
    ServiceCode: string
    NextToken: string
    MaxResults: number
    QuotaCode: string
    QuotaAppliedAtLevel: string
end

local record ListServiceQuotasOutput
    NextToken: string
    Quotas: {ServiceQuota}
end

local record ListServicesInput
    NextToken: string
    MaxResults: number
end

local record ListServicesOutput
    NextToken: string
    Services: {ServiceInfo}
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutServiceQuotaIncreaseRequestIntoTemplateInput
    QuotaCode: string
    ServiceCode: string
    AwsRegion: string
    DesiredValue: number
end

local record PutServiceQuotaIncreaseRequestIntoTemplateOutput
    ServiceQuotaIncreaseRequestInTemplate: ServiceQuotaIncreaseRequestInTemplate
end

local record RequestServiceQuotaIncreaseInput
    ServiceCode: string
    QuotaCode: string
    DesiredValue: number
    ContextId: string
    SupportCaseAllowed: boolean
end

local record RequestServiceQuotaIncreaseOutput
    RequestedQuota: RequestedServiceQuotaChange
end

local record StartAutoManagementInput
    OptInLevel: string
    OptInType: string
    NotificationArn: string
    ExclusionList: {string : {string}}
end

local record StartAutoManagementOutput
end

local record StartQuotaUtilizationReportInput
end

local record StartQuotaUtilizationReportOutput
    ReportId: string
    Status: string
    Message: string
end

local record StopAutoManagementInput
end

local record StopAutoManagementOutput
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

local record UpdateAutoManagementInput
    OptInType: string
    NotificationArn: string
    ExclusionList: {string : {string}}
end

local record UpdateAutoManagementOutput
end

local record AccessDeniedException
    Message: string
end

local record AWSServiceAccessNotEnabledException
    Message: string
end

local record DependencyAccessDeniedException
    Message: string
end

local record NoAvailableOrganizationException
    Message: string
end

local record OrganizationNotInAllFeaturesModeException
    Message: string
end

local record ServiceException
    Message: string
end

local record TemplatesNotAvailableInRegionException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DependencyAccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record InvalidResourceStateException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AWSServiceAccessNotEnabledException
    Message: string
end

local record DependencyAccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoAvailableOrganizationException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TemplatesNotAvailableInRegionException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AWSServiceAccessNotEnabledException
    Message: string
end

local record DependencyAccessDeniedException
    Message: string
end

local record NoAvailableOrganizationException
    Message: string
end

local record ServiceException
    Message: string
end

local record ServiceQuotaTemplateNotInUseException
    Message: string
end

local record TemplatesNotAvailableInRegionException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AWSServiceAccessNotEnabledException
    Message: string
end

local record DependencyAccessDeniedException
    Message: string
end

local record NoAvailableOrganizationException
    Message: string
end

local record ServiceException
    Message: string
end

local record ServiceQuotaTemplateNotInUseException
    Message: string
end

local record TemplatesNotAvailableInRegionException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AWSServiceAccessNotEnabledException
    Message: string
end

local record DependencyAccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoAvailableOrganizationException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TemplatesNotAvailableInRegionException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record InvalidPaginationTokenException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record InvalidPaginationTokenException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record InvalidPaginationTokenException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AWSServiceAccessNotEnabledException
    Message: string
end

local record DependencyAccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoAvailableOrganizationException
    Message: string
end

local record ServiceException
    Message: string
end

local record TemplatesNotAvailableInRegionException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record InvalidPaginationTokenException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record InvalidPaginationTokenException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AWSServiceAccessNotEnabledException
    Message: string
end

local record DependencyAccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoAvailableOrganizationException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record QuotaExceededException
    Message: string
end

local record ServiceException
    Message: string
end

local record TemplatesNotAvailableInRegionException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DependencyAccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record InvalidResourceStateException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record QuotaExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record InvalidPaginationTokenException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TagPolicyViolationException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record TooManyTagsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IllegalArgumentException
    Message: string
end

local record NoSuchResourceException
    Message: string
end

local record ServiceException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local type RequestStatus = "PENDING" | "CASE_OPENED" | "APPROVED" | "DENIED" | "CASE_CLOSED" | "NOT_APPROVED" | "INVALID_REQUEST"

local type OptInLevel = "ACCOUNT"

local type AppliedLevelEnum = "ACCOUNT" | "RESOURCE" | "ALL"

local type OptInType = "NotifyOnly" | "NotifyAndAdjust"

local type ServiceQuotaTemplateAssociationStatus = "ASSOCIATED" | "DISASSOCIATED"

local type ReportStatus = "PENDING" | "IN_PROGRESS" | "COMPLETED" | "FAILED"

local type OptInStatus = "ENABLED" | "DISABLED"

local record M
    AssociateServiceQuotaTemplateInput: AssociateServiceQuotaTemplateInput
    AssociateServiceQuotaTemplateOutput: AssociateServiceQuotaTemplateOutput
    CreateSupportCaseInput: CreateSupportCaseInput
    CreateSupportCaseOutput: CreateSupportCaseOutput
    DeleteServiceQuotaIncreaseRequestFromTemplateInput: DeleteServiceQuotaIncreaseRequestFromTemplateInput
    DeleteServiceQuotaIncreaseRequestFromTemplateOutput: DeleteServiceQuotaIncreaseRequestFromTemplateOutput
    DisassociateServiceQuotaTemplateInput: DisassociateServiceQuotaTemplateInput
    DisassociateServiceQuotaTemplateOutput: DisassociateServiceQuotaTemplateOutput
    GetAssociationForServiceQuotaTemplateInput: GetAssociationForServiceQuotaTemplateInput
    GetAssociationForServiceQuotaTemplateOutput: GetAssociationForServiceQuotaTemplateOutput
    GetAutoManagementConfigurationInput: GetAutoManagementConfigurationInput
    GetAutoManagementConfigurationOutput: GetAutoManagementConfigurationOutput
    GetAWSDefaultServiceQuotaInput: GetAWSDefaultServiceQuotaInput
    GetAWSDefaultServiceQuotaOutput: GetAWSDefaultServiceQuotaOutput
    GetQuotaUtilizationReportInput: GetQuotaUtilizationReportInput
    GetQuotaUtilizationReportOutput: GetQuotaUtilizationReportOutput
    GetRequestedServiceQuotaChangeInput: GetRequestedServiceQuotaChangeInput
    GetRequestedServiceQuotaChangeOutput: GetRequestedServiceQuotaChangeOutput
    GetServiceQuotaInput: GetServiceQuotaInput
    GetServiceQuotaOutput: GetServiceQuotaOutput
    GetServiceQuotaIncreaseRequestFromTemplateInput: GetServiceQuotaIncreaseRequestFromTemplateInput
    GetServiceQuotaIncreaseRequestFromTemplateOutput: GetServiceQuotaIncreaseRequestFromTemplateOutput
    ListAWSDefaultServiceQuotasInput: ListAWSDefaultServiceQuotasInput
    ListAWSDefaultServiceQuotasOutput: ListAWSDefaultServiceQuotasOutput
    ListRequestedServiceQuotaChangeHistoryInput: ListRequestedServiceQuotaChangeHistoryInput
    ListRequestedServiceQuotaChangeHistoryOutput: ListRequestedServiceQuotaChangeHistoryOutput
    ListRequestedServiceQuotaChangeHistoryByQuotaInput: ListRequestedServiceQuotaChangeHistoryByQuotaInput
    ListRequestedServiceQuotaChangeHistoryByQuotaOutput: ListRequestedServiceQuotaChangeHistoryByQuotaOutput
    ListServiceQuotaIncreaseRequestsInTemplateInput: ListServiceQuotaIncreaseRequestsInTemplateInput
    ListServiceQuotaIncreaseRequestsInTemplateOutput: ListServiceQuotaIncreaseRequestsInTemplateOutput
    ListServiceQuotasInput: ListServiceQuotasInput
    ListServiceQuotasOutput: ListServiceQuotasOutput
    ListServicesInput: ListServicesInput
    ListServicesOutput: ListServicesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutServiceQuotaIncreaseRequestIntoTemplateInput: PutServiceQuotaIncreaseRequestIntoTemplateInput
    PutServiceQuotaIncreaseRequestIntoTemplateOutput: PutServiceQuotaIncreaseRequestIntoTemplateOutput
    RequestServiceQuotaIncreaseInput: RequestServiceQuotaIncreaseInput
    RequestServiceQuotaIncreaseOutput: RequestServiceQuotaIncreaseOutput
    StartAutoManagementInput: StartAutoManagementInput
    StartAutoManagementOutput: StartAutoManagementOutput
    StartQuotaUtilizationReportInput: StartQuotaUtilizationReportInput
    StartQuotaUtilizationReportOutput: StartQuotaUtilizationReportOutput
    StopAutoManagementInput: StopAutoManagementInput
    StopAutoManagementOutput: StopAutoManagementOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAutoManagementInput: UpdateAutoManagementInput
    UpdateAutoManagementOutput: UpdateAutoManagementOutput
end

return M
