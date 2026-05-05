local record CreateCertificateAuthorityInput
    CertificateAuthorityConfiguration: CertificateAuthorityConfiguration
    RevocationConfiguration: RevocationConfiguration
    CertificateAuthorityType: string
    IdempotencyToken: string
    KeyStorageSecurityStandard: string
    Tags: {Tag}
    UsageMode: string
end

local record CreateCertificateAuthorityOutput
    CertificateAuthorityArn: string
end

local record CreateCertificateAuthorityAuditReportInput
    CertificateAuthorityArn: string
    S3BucketName: string
    AuditReportResponseFormat: string
end

local record CreateCertificateAuthorityAuditReportOutput
    AuditReportId: string
    S3Key: string
end

local record CreatePermissionInput
    CertificateAuthorityArn: string
    Principal: string
    SourceAccount: string
    Actions: {string}
end

local record CreatePermissionOutput
end

local record DeleteCertificateAuthorityInput
    CertificateAuthorityArn: string
    PermanentDeletionTimeInDays: number
end

local record DeleteCertificateAuthorityOutput
end

local record DeletePermissionInput
    CertificateAuthorityArn: string
    Principal: string
    SourceAccount: string
end

local record DeletePermissionOutput
end

local record DeletePolicyInput
    ResourceArn: string
end

local record DeletePolicyOutput
end

local record DescribeCertificateAuthorityInput
    CertificateAuthorityArn: string
end

local record DescribeCertificateAuthorityOutput
    CertificateAuthority: CertificateAuthority
end

local record DescribeCertificateAuthorityAuditReportInput
    CertificateAuthorityArn: string
    AuditReportId: string
end

local record DescribeCertificateAuthorityAuditReportOutput
    AuditReportStatus: string
    S3BucketName: string
    S3Key: string
    CreatedAt: number
end

local record GetCertificateInput
    CertificateAuthorityArn: string
    CertificateArn: string
end

local record GetCertificateOutput
    Certificate: string
    CertificateChain: string
end

local record GetCertificateAuthorityCertificateInput
    CertificateAuthorityArn: string
end

local record GetCertificateAuthorityCertificateOutput
    Certificate: string
    CertificateChain: string
end

local record GetCertificateAuthorityCsrInput
    CertificateAuthorityArn: string
end

local record GetCertificateAuthorityCsrOutput
    Csr: string
end

local record GetPolicyInput
    ResourceArn: string
end

local record GetPolicyOutput
    Policy: string
end

local record ImportCertificateAuthorityCertificateInput
    CertificateAuthorityArn: string
    Certificate: string
    CertificateChain: string
end

local record ImportCertificateAuthorityCertificateOutput
end

local record IssueCertificateInput
    ApiPassthrough: ApiPassthrough
    CertificateAuthorityArn: string
    Csr: string
    SigningAlgorithm: string
    TemplateArn: string
    Validity: Validity
    ValidityNotBefore: Validity
    IdempotencyToken: string
end

local record IssueCertificateOutput
    CertificateArn: string
end

local record ListCertificateAuthoritiesInput
    MaxResults: number
    NextToken: string
    ResourceOwner: string
end

local record ListCertificateAuthoritiesOutput
    NextToken: string
    CertificateAuthorities: {CertificateAuthority}
end

local record ListPermissionsInput
    MaxResults: number
    NextToken: string
    CertificateAuthorityArn: string
end

local record ListPermissionsOutput
    NextToken: string
    Permissions: {Permission}
end

local record ListTagsInput
    MaxResults: number
    NextToken: string
    CertificateAuthorityArn: string
end

local record ListTagsOutput
    NextToken: string
    Tags: {Tag}
end

local record PutPolicyInput
    ResourceArn: string
    Policy: string
end

local record PutPolicyOutput
end

local record RestoreCertificateAuthorityInput
    CertificateAuthorityArn: string
end

local record RestoreCertificateAuthorityOutput
end

local record RevokeCertificateInput
    CertificateAuthorityArn: string
    CertificateSerial: string
    RevocationReason: string
end

local record RevokeCertificateOutput
end

local record TagCertificateAuthorityInput
    CertificateAuthorityArn: string
    Tags: {Tag}
end

local record TagCertificateAuthorityOutput
end

local record UntagCertificateAuthorityInput
    CertificateAuthorityArn: string
    Tags: {Tag}
end

local record UntagCertificateAuthorityOutput
end

local record UpdateCertificateAuthorityInput
    CertificateAuthorityArn: string
    RevocationConfiguration: RevocationConfiguration
    Status: string
end

local record UpdateCertificateAuthorityOutput
end

local record InvalidArgsException
    message: string
end

local record InvalidPolicyException
    message: string
end

local record InvalidTagException
    message: string
end

local record LimitExceededException
    message: string
end

local record InvalidArgsException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidStateException
    message: string
end

local record RequestFailedException
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

local record InvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record PermissionAlreadyExistsException
    message: string
end

local record RequestFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidStateException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidStateException
    message: string
end

local record RequestFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidStateException
    message: string
end

local record LockoutPreventedException
    message: string
end

local record RequestFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArnException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgsException
    message: string
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

local record InvalidStateException
    message: string
end

local record RequestFailedException
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

local record InvalidStateException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidStateException
    message: string
end

local record RequestFailedException
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

local record InvalidStateException
    message: string
end

local record RequestFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record CertificateMismatchException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidStateException
    message: string
end

local record MalformedCertificateException
    message: string
end

local record RequestFailedException
    message: string
end

local record RequestInProgressException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgsException
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

local record MalformedCSRException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidStateException
    message: string
end

local record RequestFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidStateException
    message: string
end

local record RequestFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidPolicyException
    message: string
end

local record InvalidStateException
    message: string
end

local record LockoutPreventedException
    message: string
end

local record RequestFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidStateException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record RequestAlreadyProcessedException
    message: string
end

local record RequestFailedException
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

local record InvalidStateException
    message: string
end

local record InvalidTagException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidStateException
    message: string
end

local record InvalidTagException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidArgsException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidPolicyException
    message: string
end

local record InvalidStateException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local type AuditReportStatus = "CREATING" | "SUCCESS" | "FAILED"

local type CertificateAuthorityStatus = "CREATING" | "PENDING_CERTIFICATE" | "ACTIVE" | "DELETED" | "DISABLED" | "EXPIRED" | "FAILED"

local type KeyStorageSecurityStandard = "FIPS_140_2_LEVEL_2_OR_HIGHER" | "FIPS_140_2_LEVEL_3_OR_HIGHER" | "CCPC_LEVEL_1_OR_HIGHER"

local type ResourceOwner = "SELF" | "OTHER_ACCOUNTS"

local type SigningAlgorithm = "SHA256WITHECDSA" | "SHA384WITHECDSA" | "SHA512WITHECDSA" | "SHA256WITHRSA" | "SHA384WITHRSA" | "SHA512WITHRSA" | "SM3WITHSM2" | "ML_DSA_44" | "ML_DSA_65" | "ML_DSA_87"

local type CertificateAuthorityType = "ROOT" | "SUBORDINATE"

local type RevocationReason = "UNSPECIFIED" | "KEY_COMPROMISE" | "CERTIFICATE_AUTHORITY_COMPROMISE" | "AFFILIATION_CHANGED" | "SUPERSEDED" | "CESSATION_OF_OPERATION" | "PRIVILEGE_WITHDRAWN" | "A_A_COMPROMISE"

local type AuditReportResponseFormat = "JSON" | "CSV"

local type CertificateAuthorityUsageMode = "GENERAL_PURPOSE" | "SHORT_LIVED_CERTIFICATE"

local record M
    CreateCertificateAuthorityInput: CreateCertificateAuthorityInput
    CreateCertificateAuthorityOutput: CreateCertificateAuthorityOutput
    CreateCertificateAuthorityAuditReportInput: CreateCertificateAuthorityAuditReportInput
    CreateCertificateAuthorityAuditReportOutput: CreateCertificateAuthorityAuditReportOutput
    CreatePermissionInput: CreatePermissionInput
    CreatePermissionOutput: CreatePermissionOutput
    DeleteCertificateAuthorityInput: DeleteCertificateAuthorityInput
    DeleteCertificateAuthorityOutput: DeleteCertificateAuthorityOutput
    DeletePermissionInput: DeletePermissionInput
    DeletePermissionOutput: DeletePermissionOutput
    DeletePolicyInput: DeletePolicyInput
    DeletePolicyOutput: DeletePolicyOutput
    DescribeCertificateAuthorityInput: DescribeCertificateAuthorityInput
    DescribeCertificateAuthorityOutput: DescribeCertificateAuthorityOutput
    DescribeCertificateAuthorityAuditReportInput: DescribeCertificateAuthorityAuditReportInput
    DescribeCertificateAuthorityAuditReportOutput: DescribeCertificateAuthorityAuditReportOutput
    GetCertificateInput: GetCertificateInput
    GetCertificateOutput: GetCertificateOutput
    GetCertificateAuthorityCertificateInput: GetCertificateAuthorityCertificateInput
    GetCertificateAuthorityCertificateOutput: GetCertificateAuthorityCertificateOutput
    GetCertificateAuthorityCsrInput: GetCertificateAuthorityCsrInput
    GetCertificateAuthorityCsrOutput: GetCertificateAuthorityCsrOutput
    GetPolicyInput: GetPolicyInput
    GetPolicyOutput: GetPolicyOutput
    ImportCertificateAuthorityCertificateInput: ImportCertificateAuthorityCertificateInput
    ImportCertificateAuthorityCertificateOutput: ImportCertificateAuthorityCertificateOutput
    IssueCertificateInput: IssueCertificateInput
    IssueCertificateOutput: IssueCertificateOutput
    ListCertificateAuthoritiesInput: ListCertificateAuthoritiesInput
    ListCertificateAuthoritiesOutput: ListCertificateAuthoritiesOutput
    ListPermissionsInput: ListPermissionsInput
    ListPermissionsOutput: ListPermissionsOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    PutPolicyInput: PutPolicyInput
    PutPolicyOutput: PutPolicyOutput
    RestoreCertificateAuthorityInput: RestoreCertificateAuthorityInput
    RestoreCertificateAuthorityOutput: RestoreCertificateAuthorityOutput
    RevokeCertificateInput: RevokeCertificateInput
    RevokeCertificateOutput: RevokeCertificateOutput
    TagCertificateAuthorityInput: TagCertificateAuthorityInput
    TagCertificateAuthorityOutput: TagCertificateAuthorityOutput
    UntagCertificateAuthorityInput: UntagCertificateAuthorityInput
    UntagCertificateAuthorityOutput: UntagCertificateAuthorityOutput
    UpdateCertificateAuthorityInput: UpdateCertificateAuthorityInput
    UpdateCertificateAuthorityOutput: UpdateCertificateAuthorityOutput
end

return M
