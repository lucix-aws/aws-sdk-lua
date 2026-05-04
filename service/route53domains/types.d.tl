local record AcceptDomainTransferFromAnotherAwsAccountInput
    DomainName: string
    Password: string
end

local record AcceptDomainTransferFromAnotherAwsAccountOutput
    OperationId: string
end

local record AssociateDelegationSignerToDomainInput
    DomainName: string
    SigningAttributes: DnssecSigningAttributes
end

local record AssociateDelegationSignerToDomainOutput
    OperationId: string
end

local record CancelDomainTransferToAnotherAwsAccountInput
    DomainName: string
end

local record CancelDomainTransferToAnotherAwsAccountOutput
    OperationId: string
end

local record CheckDomainAvailabilityInput
    DomainName: string
    IdnLangCode: string
end

local record CheckDomainAvailabilityOutput
    Availability: string
end

local record CheckDomainTransferabilityInput
    DomainName: string
    AuthCode: string
end

local record CheckDomainTransferabilityOutput
    Transferability: DomainTransferability
    Message: string
end

local record DeleteDomainInput
    DomainName: string
end

local record DeleteDomainOutput
    OperationId: string
end

local record DeleteTagsForDomainInput
    DomainName: string
    TagsToDelete: {string}
end

local record DeleteTagsForDomainOutput
end

local record DisableDomainAutoRenewInput
    DomainName: string
end

local record DisableDomainAutoRenewOutput
end

local record DisableDomainTransferLockInput
    DomainName: string
end

local record DisableDomainTransferLockOutput
    OperationId: string
end

local record DisassociateDelegationSignerFromDomainInput
    DomainName: string
    Id: string
end

local record DisassociateDelegationSignerFromDomainOutput
    OperationId: string
end

local record EnableDomainAutoRenewInput
    DomainName: string
end

local record EnableDomainAutoRenewOutput
end

local record EnableDomainTransferLockInput
    DomainName: string
end

local record EnableDomainTransferLockOutput
    OperationId: string
end

local record GetContactReachabilityStatusInput
    domainName: string
end

local record GetContactReachabilityStatusOutput
    domainName: string
    status: string
end

local record GetDomainDetailInput
    DomainName: string
end

local record GetDomainDetailOutput
    DomainName: string
    Nameservers: {Nameserver}
    AutoRenew: boolean
    AdminContact: ContactDetail
    RegistrantContact: ContactDetail
    TechContact: ContactDetail
    AdminPrivacy: boolean
    RegistrantPrivacy: boolean
    TechPrivacy: boolean
    RegistrarName: string
    WhoIsServer: string
    RegistrarUrl: string
    AbuseContactEmail: string
    AbuseContactPhone: string
    RegistryDomainId: string
    CreationDate: number
    UpdatedDate: number
    ExpirationDate: number
    Reseller: string
    DnsSec: string
    StatusList: {string}
    DnssecKeys: {DnssecKey}
    BillingContact: ContactDetail
    BillingPrivacy: boolean
end

local record GetDomainSuggestionsInput
    DomainName: string
    SuggestionCount: number
    OnlyAvailable: boolean
end

local record GetDomainSuggestionsOutput
    SuggestionsList: {DomainSuggestion}
end

local record GetOperationDetailInput
    OperationId: string
end

local record GetOperationDetailOutput
    OperationId: string
    Status: string
    Message: string
    DomainName: string
    Type: string
    SubmittedDate: number
    LastUpdatedDate: number
    StatusFlag: string
end

local record ListDomainsInput
    FilterConditions: {FilterCondition}
    SortCondition: SortCondition
    Marker: string
    MaxItems: number
end

local record ListDomainsOutput
    Domains: {DomainSummary}
    NextPageMarker: string
end

local record ListOperationsInput
    SubmittedSince: number
    Marker: string
    MaxItems: number
    Status: {string}
    Type: {string}
    SortBy: string
    SortOrder: string
end

local record ListOperationsOutput
    Operations: {OperationSummary}
    NextPageMarker: string
end

local record ListPricesInput
    Tld: string
    Marker: string
    MaxItems: number
end

local record ListPricesOutput
    Prices: {DomainPrice}
    NextPageMarker: string
end

local record ListTagsForDomainInput
    DomainName: string
end

local record ListTagsForDomainOutput
    TagList: {Tag}
end

local record PushDomainInput
    DomainName: string
    Target: string
end

local record PushDomainOutput
end

local record RegisterDomainInput
    DomainName: string
    IdnLangCode: string
    DurationInYears: number
    AutoRenew: boolean
    AdminContact: ContactDetail
    RegistrantContact: ContactDetail
    TechContact: ContactDetail
    PrivacyProtectAdminContact: boolean
    PrivacyProtectRegistrantContact: boolean
    PrivacyProtectTechContact: boolean
    BillingContact: ContactDetail
    PrivacyProtectBillingContact: boolean
end

local record RegisterDomainOutput
    OperationId: string
end

local record RejectDomainTransferFromAnotherAwsAccountInput
    DomainName: string
end

local record RejectDomainTransferFromAnotherAwsAccountOutput
    OperationId: string
end

local record RenewDomainInput
    DomainName: string
    DurationInYears: number
    CurrentExpiryYear: number
end

local record RenewDomainOutput
    OperationId: string
end

local record ResendContactReachabilityEmailInput
    domainName: string
end

local record ResendContactReachabilityEmailOutput
    domainName: string
    emailAddress: string
    isAlreadyVerified: boolean
end

local record ResendOperationAuthorizationInput
    OperationId: string
end

local record ResendOperationAuthorizationOutput
end

local record RetrieveDomainAuthCodeInput
    DomainName: string
end

local record RetrieveDomainAuthCodeOutput
    AuthCode: string
end

local record TransferDomainInput
    DomainName: string
    IdnLangCode: string
    DurationInYears: number
    Nameservers: {Nameserver}
    AuthCode: string
    AutoRenew: boolean
    AdminContact: ContactDetail
    RegistrantContact: ContactDetail
    TechContact: ContactDetail
    PrivacyProtectAdminContact: boolean
    PrivacyProtectRegistrantContact: boolean
    PrivacyProtectTechContact: boolean
    BillingContact: ContactDetail
    PrivacyProtectBillingContact: boolean
end

local record TransferDomainOutput
    OperationId: string
end

local record TransferDomainToAnotherAwsAccountInput
    DomainName: string
    AccountId: string
end

local record TransferDomainToAnotherAwsAccountOutput
    OperationId: string
    Password: string
end

local record UpdateDomainContactInput
    DomainName: string
    AdminContact: ContactDetail
    RegistrantContact: ContactDetail
    TechContact: ContactDetail
    Consent: Consent
    BillingContact: ContactDetail
end

local record UpdateDomainContactOutput
    OperationId: string
end

local record UpdateDomainContactPrivacyInput
    DomainName: string
    AdminPrivacy: boolean
    RegistrantPrivacy: boolean
    TechPrivacy: boolean
    BillingPrivacy: boolean
end

local record UpdateDomainContactPrivacyOutput
    OperationId: string
end

local record UpdateDomainNameserversInput
    DomainName: string
    FIAuthKey: string
    Nameservers: {Nameserver}
end

local record UpdateDomainNameserversOutput
    OperationId: string
end

local record UpdateTagsForDomainInput
    DomainName: string
    TagsToUpdate: {Tag}
end

local record UpdateTagsForDomainOutput
end

local record ViewBillingInput
    Start: number
    End: number
    Marker: string
    MaxItems: number
end

local record ViewBillingOutput
    NextPageMarker: string
    BillingRecords: {BillingRecord}
end

local record DomainLimitExceeded
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DnssecLimitExceeded
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidInput
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DomainLimitExceeded
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidInput
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DomainLimitExceeded
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record DuplicateRequest
    requestId: string
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record TLDRulesViolation
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local record OperationLimitExceeded
    message: string
end

local record UnsupportedTLD
    message: string
end

local record InvalidInput
    message: string
end

local type SortOrder = "ASC" | "DESC"

local type ReachabilityStatus = "PENDING" | "DONE" | "EXPIRED"

local type DomainAvailability = "AVAILABLE" | "AVAILABLE_RESERVED" | "AVAILABLE_PREORDER" | "UNAVAILABLE" | "UNAVAILABLE_PREMIUM" | "UNAVAILABLE_RESTRICTED" | "RESERVED" | "DONT_KNOW" | "INVALID_NAME_FOR_TLD" | "PENDING"

local type OperationType = "REGISTER_DOMAIN" | "DELETE_DOMAIN" | "TRANSFER_IN_DOMAIN" | "UPDATE_DOMAIN_CONTACT" | "UPDATE_NAMESERVER" | "CHANGE_PRIVACY_PROTECTION" | "DOMAIN_LOCK" | "ENABLE_AUTORENEW" | "DISABLE_AUTORENEW" | "ADD_DNSSEC" | "REMOVE_DNSSEC" | "EXPIRE_DOMAIN" | "TRANSFER_OUT_DOMAIN" | "CHANGE_DOMAIN_OWNER" | "RENEW_DOMAIN" | "PUSH_DOMAIN" | "INTERNAL_TRANSFER_OUT_DOMAIN" | "INTERNAL_TRANSFER_IN_DOMAIN" | "RELEASE_TO_GANDI" | "TRANSFER_ON_RENEW" | "RESTORE_DOMAIN"

local type ListOperationsSortAttributeName = "SubmittedDate"

local type StatusFlag = "PENDING_ACCEPTANCE" | "PENDING_CUSTOMER_ACTION" | "PENDING_AUTHORIZATION" | "PENDING_PAYMENT_VERIFICATION" | "PENDING_SUPPORT_CASE"

local type OperationStatus = "SUBMITTED" | "IN_PROGRESS" | "ERROR" | "SUCCESSFUL" | "FAILED"

local record M
    AcceptDomainTransferFromAnotherAwsAccountInput: AcceptDomainTransferFromAnotherAwsAccountInput
    AcceptDomainTransferFromAnotherAwsAccountOutput: AcceptDomainTransferFromAnotherAwsAccountOutput
    AssociateDelegationSignerToDomainInput: AssociateDelegationSignerToDomainInput
    AssociateDelegationSignerToDomainOutput: AssociateDelegationSignerToDomainOutput
    CancelDomainTransferToAnotherAwsAccountInput: CancelDomainTransferToAnotherAwsAccountInput
    CancelDomainTransferToAnotherAwsAccountOutput: CancelDomainTransferToAnotherAwsAccountOutput
    CheckDomainAvailabilityInput: CheckDomainAvailabilityInput
    CheckDomainAvailabilityOutput: CheckDomainAvailabilityOutput
    CheckDomainTransferabilityInput: CheckDomainTransferabilityInput
    CheckDomainTransferabilityOutput: CheckDomainTransferabilityOutput
    DeleteDomainInput: DeleteDomainInput
    DeleteDomainOutput: DeleteDomainOutput
    DeleteTagsForDomainInput: DeleteTagsForDomainInput
    DeleteTagsForDomainOutput: DeleteTagsForDomainOutput
    DisableDomainAutoRenewInput: DisableDomainAutoRenewInput
    DisableDomainAutoRenewOutput: DisableDomainAutoRenewOutput
    DisableDomainTransferLockInput: DisableDomainTransferLockInput
    DisableDomainTransferLockOutput: DisableDomainTransferLockOutput
    DisassociateDelegationSignerFromDomainInput: DisassociateDelegationSignerFromDomainInput
    DisassociateDelegationSignerFromDomainOutput: DisassociateDelegationSignerFromDomainOutput
    EnableDomainAutoRenewInput: EnableDomainAutoRenewInput
    EnableDomainAutoRenewOutput: EnableDomainAutoRenewOutput
    EnableDomainTransferLockInput: EnableDomainTransferLockInput
    EnableDomainTransferLockOutput: EnableDomainTransferLockOutput
    GetContactReachabilityStatusInput: GetContactReachabilityStatusInput
    GetContactReachabilityStatusOutput: GetContactReachabilityStatusOutput
    GetDomainDetailInput: GetDomainDetailInput
    GetDomainDetailOutput: GetDomainDetailOutput
    GetDomainSuggestionsInput: GetDomainSuggestionsInput
    GetDomainSuggestionsOutput: GetDomainSuggestionsOutput
    GetOperationDetailInput: GetOperationDetailInput
    GetOperationDetailOutput: GetOperationDetailOutput
    ListDomainsInput: ListDomainsInput
    ListDomainsOutput: ListDomainsOutput
    ListOperationsInput: ListOperationsInput
    ListOperationsOutput: ListOperationsOutput
    ListPricesInput: ListPricesInput
    ListPricesOutput: ListPricesOutput
    ListTagsForDomainInput: ListTagsForDomainInput
    ListTagsForDomainOutput: ListTagsForDomainOutput
    PushDomainInput: PushDomainInput
    PushDomainOutput: PushDomainOutput
    RegisterDomainInput: RegisterDomainInput
    RegisterDomainOutput: RegisterDomainOutput
    RejectDomainTransferFromAnotherAwsAccountInput: RejectDomainTransferFromAnotherAwsAccountInput
    RejectDomainTransferFromAnotherAwsAccountOutput: RejectDomainTransferFromAnotherAwsAccountOutput
    RenewDomainInput: RenewDomainInput
    RenewDomainOutput: RenewDomainOutput
    ResendContactReachabilityEmailInput: ResendContactReachabilityEmailInput
    ResendContactReachabilityEmailOutput: ResendContactReachabilityEmailOutput
    ResendOperationAuthorizationInput: ResendOperationAuthorizationInput
    ResendOperationAuthorizationOutput: ResendOperationAuthorizationOutput
    RetrieveDomainAuthCodeInput: RetrieveDomainAuthCodeInput
    RetrieveDomainAuthCodeOutput: RetrieveDomainAuthCodeOutput
    TransferDomainInput: TransferDomainInput
    TransferDomainOutput: TransferDomainOutput
    TransferDomainToAnotherAwsAccountInput: TransferDomainToAnotherAwsAccountInput
    TransferDomainToAnotherAwsAccountOutput: TransferDomainToAnotherAwsAccountOutput
    UpdateDomainContactInput: UpdateDomainContactInput
    UpdateDomainContactOutput: UpdateDomainContactOutput
    UpdateDomainContactPrivacyInput: UpdateDomainContactPrivacyInput
    UpdateDomainContactPrivacyOutput: UpdateDomainContactPrivacyOutput
    UpdateDomainNameserversInput: UpdateDomainNameserversInput
    UpdateDomainNameserversOutput: UpdateDomainNameserversOutput
    UpdateTagsForDomainInput: UpdateTagsForDomainInput
    UpdateTagsForDomainOutput: UpdateTagsForDomainOutput
    ViewBillingInput: ViewBillingInput
    ViewBillingOutput: ViewBillingOutput
end

return M
