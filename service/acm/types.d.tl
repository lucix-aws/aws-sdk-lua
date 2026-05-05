local record AddTagsToCertificateInput
    CertificateArn: string
    Tags: {Tag}
end

local record AddTagsToCertificateOutput
end

local record DeleteCertificateInput
    CertificateArn: string
end

local record DeleteCertificateOutput
end

local record DescribeCertificateInput
    CertificateArn: string
end

local record DescribeCertificateOutput
    Certificate: CertificateDetail
end

local record ExportCertificateInput
    CertificateArn: string
    Passphrase: string
end

local record ExportCertificateOutput
    Certificate: string
    CertificateChain: string
    PrivateKey: string
end

local record GetAccountConfigurationInput
end

local record GetAccountConfigurationOutput
    ExpiryEvents: ExpiryEventsConfiguration
end

local record GetCertificateInput
    CertificateArn: string
end

local record GetCertificateOutput
    Certificate: string
    CertificateChain: string
end

local record ImportCertificateInput
    CertificateArn: string
    Certificate: string
    PrivateKey: string
    CertificateChain: string
    Tags: {Tag}
end

local record ImportCertificateOutput
    CertificateArn: string
end

local record ListCertificatesInput
    CertificateStatuses: {string}
    Includes: Filters
    NextToken: string
    MaxItems: number
    SortBy: string
    SortOrder: string
end

local record ListCertificatesOutput
    NextToken: string
    CertificateSummaryList: {CertificateSummary}
end

local record ListTagsForCertificateInput
    CertificateArn: string
end

local record ListTagsForCertificateOutput
    Tags: {Tag}
end

local record PutAccountConfigurationInput
    ExpiryEvents: ExpiryEventsConfiguration
    IdempotencyToken: string
end

local record PutAccountConfigurationOutput
end

local record RemoveTagsFromCertificateInput
    CertificateArn: string
    Tags: {Tag}
end

local record RemoveTagsFromCertificateOutput
end

local record RenewCertificateInput
    CertificateArn: string
end

local record RenewCertificateOutput
end

local record RequestCertificateInput
    DomainName: string
    ValidationMethod: string
    SubjectAlternativeNames: {string}
    IdempotencyToken: string
    DomainValidationOptions: {DomainValidationOption}
    Options: CertificateOptions
    CertificateAuthorityArn: string
    Tags: {Tag}
    KeyAlgorithm: string
    ManagedBy: string
end

local record RequestCertificateOutput
    CertificateArn: string
end

local record ResendValidationEmailInput
    CertificateArn: string
    Domain: string
    ValidationDomain: string
end

local record ResendValidationEmailOutput
end

local record RevokeCertificateInput
    CertificateArn: string
    RevocationReason: string
end

local record RevokeCertificateOutput
    CertificateArn: string
end

local record SearchCertificatesInput
    FilterStatement: CertificateFilterStatement
    MaxResults: number
    NextToken: string
    SortBy: string
    SortOrder: string
end

local record SearchCertificatesOutput
    Results: {CertificateSearchResult}
    NextToken: string
end

local record UpdateCertificateOptionsInput
    CertificateArn: string
    Options: CertificateOptions
end

local record UpdateCertificateOptionsOutput
end

local record InvalidArnException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidTagException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TagPolicyException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record TooManyTagsException
    message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    message: string
end

local record InvalidArnException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record InvalidArnException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArnException
    message: string
end

local record RequestInProgressException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record AccessDeniedException
    Message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record InvalidArnException
    message: string
end

local record RequestInProgressException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConflictException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidTagException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TagPolicyException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidArgsException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidArnException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record ValidationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidTagException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TagPolicyException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record InvalidArnException
    message: string
end

local record RequestInProgressException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidDomainValidationOptionsException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidTagException
    message: string
end

local record LimitExceededException
    message: string
end

local record TagPolicyException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidDomainValidationOptionsException
    message: string
end

local record InvalidStateException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    message: string
end

local record InvalidArnException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record AccessDeniedException
    Message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record ValidationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local type RevocationReason = "UNSPECIFIED" | "KEY_COMPROMISE" | "CA_COMPROMISE" | "AFFILIATION_CHANGED" | "SUPERCEDED" | "SUPERSEDED" | "CESSATION_OF_OPERATION" | "CERTIFICATE_HOLD" | "REMOVE_FROM_CRL" | "PRIVILEGE_WITHDRAWN" | "A_A_COMPROMISE"

local type SearchCertificatesSortBy = "CREATED_AT" | "NOT_AFTER" | "STATUS" | "RENEWAL_STATUS" | "EXPORTED" | "IN_USE" | "NOT_BEFORE" | "KEY_ALGORITHM" | "TYPE" | "CERTIFICATE_ARN" | "COMMON_NAME" | "REVOKED_AT" | "RENEWAL_ELIGIBILITY" | "ISSUED_AT" | "MANAGED_BY" | "EXPORT_OPTION" | "VALIDATION_METHOD" | "IMPORTED_AT"

local type SortBy = "CREATED_AT"

local type SortOrder = "ASCENDING" | "DESCENDING"

local type SearchCertificatesSortOrder = "ASCENDING" | "DESCENDING"

local type ValidationMethod = "EMAIL" | "DNS" | "HTTP"

local type KeyAlgorithm = "RSA_1024" | "RSA_2048" | "RSA_3072" | "RSA_4096" | "EC_prime256v1" | "EC_secp384r1" | "EC_secp521r1"

local type CertificateManagedBy = "CLOUDFRONT"

local record M
    AddTagsToCertificateInput: AddTagsToCertificateInput
    AddTagsToCertificateOutput: AddTagsToCertificateOutput
    DeleteCertificateInput: DeleteCertificateInput
    DeleteCertificateOutput: DeleteCertificateOutput
    DescribeCertificateInput: DescribeCertificateInput
    DescribeCertificateOutput: DescribeCertificateOutput
    ExportCertificateInput: ExportCertificateInput
    ExportCertificateOutput: ExportCertificateOutput
    GetAccountConfigurationInput: GetAccountConfigurationInput
    GetAccountConfigurationOutput: GetAccountConfigurationOutput
    GetCertificateInput: GetCertificateInput
    GetCertificateOutput: GetCertificateOutput
    ImportCertificateInput: ImportCertificateInput
    ImportCertificateOutput: ImportCertificateOutput
    ListCertificatesInput: ListCertificatesInput
    ListCertificatesOutput: ListCertificatesOutput
    ListTagsForCertificateInput: ListTagsForCertificateInput
    ListTagsForCertificateOutput: ListTagsForCertificateOutput
    PutAccountConfigurationInput: PutAccountConfigurationInput
    PutAccountConfigurationOutput: PutAccountConfigurationOutput
    RemoveTagsFromCertificateInput: RemoveTagsFromCertificateInput
    RemoveTagsFromCertificateOutput: RemoveTagsFromCertificateOutput
    RenewCertificateInput: RenewCertificateInput
    RenewCertificateOutput: RenewCertificateOutput
    RequestCertificateInput: RequestCertificateInput
    RequestCertificateOutput: RequestCertificateOutput
    ResendValidationEmailInput: ResendValidationEmailInput
    ResendValidationEmailOutput: ResendValidationEmailOutput
    RevokeCertificateInput: RevokeCertificateInput
    RevokeCertificateOutput: RevokeCertificateOutput
    SearchCertificatesInput: SearchCertificatesInput
    SearchCertificatesOutput: SearchCertificatesOutput
    UpdateCertificateOptionsInput: UpdateCertificateOptionsInput
    UpdateCertificateOptionsOutput: UpdateCertificateOptionsOutput
end

return M
