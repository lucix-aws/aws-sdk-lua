local record BatchGetInvoiceProfileInput
    AccountIds: {string}
end

local record BatchGetInvoiceProfileOutput
    Profiles: {InvoiceProfile}
end

local record CreateInvoiceUnitInput
    Name: string
    InvoiceReceiver: string
    Description: string
    TaxInheritanceDisabled: boolean
    Rule: InvoiceUnitRule
    ResourceTags: {ResourceTag}
end

local record CreateInvoiceUnitOutput
    InvoiceUnitArn: string
end

local record CreateProcurementPortalPreferenceInput
    ProcurementPortalName: string
    BuyerDomain: string
    BuyerIdentifier: string
    SupplierDomain: string
    SupplierIdentifier: string
    Selector: ProcurementPortalPreferenceSelector
    ProcurementPortalSharedSecret: string
    ProcurementPortalInstanceEndpoint: string
    TestEnvPreference: TestEnvPreferenceInput
    EinvoiceDeliveryEnabled: boolean
    EinvoiceDeliveryPreference: EinvoiceDeliveryPreference
    PurchaseOrderRetrievalEnabled: boolean
    Contacts: {Contact}
    ResourceTags: {ResourceTag}
    ClientToken: string
end

local record CreateProcurementPortalPreferenceOutput
    ProcurementPortalPreferenceArn: string
end

local record DeleteInvoiceUnitInput
    InvoiceUnitArn: string
end

local record DeleteInvoiceUnitOutput
    InvoiceUnitArn: string
end

local record DeleteProcurementPortalPreferenceInput
    ProcurementPortalPreferenceArn: string
end

local record DeleteProcurementPortalPreferenceOutput
    ProcurementPortalPreferenceArn: string
end

local record GetInvoicePDFInput
    InvoiceId: string
end

local record GetInvoicePDFOutput
    InvoicePDF: InvoicePDF
end

local record GetInvoiceUnitInput
    InvoiceUnitArn: string
    AsOf: number
end

local record GetInvoiceUnitOutput
    InvoiceUnitArn: string
    InvoiceReceiver: string
    Name: string
    Description: string
    TaxInheritanceDisabled: boolean
    Rule: InvoiceUnitRule
    LastModified: number
end

local record GetProcurementPortalPreferenceInput
    ProcurementPortalPreferenceArn: string
end

local record GetProcurementPortalPreferenceOutput
    ProcurementPortalPreference: ProcurementPortalPreference
end

local record ListInvoiceSummariesInput
    Selector: InvoiceSummariesSelector
    Filter: InvoiceSummariesFilter
    NextToken: string
    MaxResults: number
end

local record ListInvoiceSummariesOutput
    InvoiceSummaries: {InvoiceSummary}
    NextToken: string
end

local record ListInvoiceUnitsInput
    Filters: Filters
    NextToken: string
    MaxResults: number
    AsOf: number
end

local record ListInvoiceUnitsOutput
    InvoiceUnits: {InvoiceUnit}
    NextToken: string
end

local record ListProcurementPortalPreferencesInput
    NextToken: string
    MaxResults: number
end

local record ListProcurementPortalPreferencesOutput
    ProcurementPortalPreferences: {ProcurementPortalPreferenceSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    ResourceTags: {ResourceTag}
end

local record PutProcurementPortalPreferenceInput
    ProcurementPortalPreferenceArn: string
    Selector: ProcurementPortalPreferenceSelector
    ProcurementPortalSharedSecret: string
    ProcurementPortalInstanceEndpoint: string
    TestEnvPreference: TestEnvPreferenceInput
    EinvoiceDeliveryEnabled: boolean
    EinvoiceDeliveryPreference: EinvoiceDeliveryPreference
    PurchaseOrderRetrievalEnabled: boolean
    Contacts: {Contact}
end

local record PutProcurementPortalPreferenceOutput
    ProcurementPortalPreferenceArn: string
end

local record TagResourceInput
    ResourceArn: string
    ResourceTags: {ResourceTag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    ResourceTagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateInvoiceUnitInput
    InvoiceUnitArn: string
    Description: string
    TaxInheritanceDisabled: boolean
    Rule: InvoiceUnitRule
end

local record UpdateInvoiceUnitOutput
    InvoiceUnitArn: string
end

local record UpdateProcurementPortalPreferenceStatusInput
    ProcurementPortalPreferenceArn: string
    EinvoiceDeliveryPreferenceStatus: string
    EinvoiceDeliveryPreferenceStatusReason: string
    PurchaseOrderRetrievalPreferenceStatus: string
    PurchaseOrderRetrievalPreferenceStatusReason: string
end

local record UpdateProcurementPortalPreferenceStatusOutput
    ProcurementPortalPreferenceArn: string
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    retryAfterSeconds: number
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
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    retryAfterSeconds: number
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
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    retryAfterSeconds: number
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    resourceName: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type SupplierDomain = "NetworkID"

local type BuyerDomain = "NetworkID"

local type ProcurementPortalName = "SAP_BUSINESS_NETWORK" | "COUPA"

local type ProcurementPortalPreferenceStatus = "PENDING_VERIFICATION" | "TEST_INITIALIZED" | "TEST_INITIALIZATION_FAILED" | "TEST_FAILED" | "ACTIVE" | "SUSPENDED"

local record M
    BatchGetInvoiceProfileInput: BatchGetInvoiceProfileInput
    BatchGetInvoiceProfileOutput: BatchGetInvoiceProfileOutput
    CreateInvoiceUnitInput: CreateInvoiceUnitInput
    CreateInvoiceUnitOutput: CreateInvoiceUnitOutput
    CreateProcurementPortalPreferenceInput: CreateProcurementPortalPreferenceInput
    CreateProcurementPortalPreferenceOutput: CreateProcurementPortalPreferenceOutput
    DeleteInvoiceUnitInput: DeleteInvoiceUnitInput
    DeleteInvoiceUnitOutput: DeleteInvoiceUnitOutput
    DeleteProcurementPortalPreferenceInput: DeleteProcurementPortalPreferenceInput
    DeleteProcurementPortalPreferenceOutput: DeleteProcurementPortalPreferenceOutput
    GetInvoicePDFInput: GetInvoicePDFInput
    GetInvoicePDFOutput: GetInvoicePDFOutput
    GetInvoiceUnitInput: GetInvoiceUnitInput
    GetInvoiceUnitOutput: GetInvoiceUnitOutput
    GetProcurementPortalPreferenceInput: GetProcurementPortalPreferenceInput
    GetProcurementPortalPreferenceOutput: GetProcurementPortalPreferenceOutput
    ListInvoiceSummariesInput: ListInvoiceSummariesInput
    ListInvoiceSummariesOutput: ListInvoiceSummariesOutput
    ListInvoiceUnitsInput: ListInvoiceUnitsInput
    ListInvoiceUnitsOutput: ListInvoiceUnitsOutput
    ListProcurementPortalPreferencesInput: ListProcurementPortalPreferencesInput
    ListProcurementPortalPreferencesOutput: ListProcurementPortalPreferencesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutProcurementPortalPreferenceInput: PutProcurementPortalPreferenceInput
    PutProcurementPortalPreferenceOutput: PutProcurementPortalPreferenceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateInvoiceUnitInput: UpdateInvoiceUnitInput
    UpdateInvoiceUnitOutput: UpdateInvoiceUnitOutput
    UpdateProcurementPortalPreferenceStatusInput: UpdateProcurementPortalPreferenceStatusInput
    UpdateProcurementPortalPreferenceStatusOutput: UpdateProcurementPortalPreferenceStatusOutput
end

return M
