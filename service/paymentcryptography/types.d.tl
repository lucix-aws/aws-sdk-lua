local record AddKeyReplicationRegionsInput
    KeyIdentifier: string
    ReplicationRegions: {string}
end

local record AddKeyReplicationRegionsOutput
    Key: Key
end

local record AssociateMpaTeamInput
    Action: string
    MpaTeamArn: string
    RequesterComment: string
end

local record AssociateMpaTeamOutput
    MpaTeamAssociation: MpaTeamAssociation
end

local record CreateAliasInput
    AliasName: string
    KeyArn: string
end

local record CreateAliasOutput
    Alias: Alias
end

local record CreateKeyInput
    KeyAttributes: KeyAttributes
    KeyCheckValueAlgorithm: string
    Exportable: boolean
    Enabled: boolean
    Tags: {Tag}
    DeriveKeyUsage: string
    ReplicationRegions: {string}
end

local record CreateKeyOutput
    Key: Key
end

local record DeleteAliasInput
    AliasName: string
end

local record DeleteAliasOutput
end

local record DeleteKeyInput
    KeyIdentifier: string
    DeleteKeyInDays: number
end

local record DeleteKeyOutput
    Key: Key
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DisableDefaultKeyReplicationRegionsInput
    ReplicationRegions: {string}
end

local record DisableDefaultKeyReplicationRegionsOutput
    EnabledReplicationRegions: {string}
end

local record DisassociateMpaTeamInput
    Action: string
    RequesterComment: string
end

local record DisassociateMpaTeamOutput
    MpaTeamAssociation: MpaTeamAssociation
end

local record EnableDefaultKeyReplicationRegionsInput
    ReplicationRegions: {string}
end

local record EnableDefaultKeyReplicationRegionsOutput
    EnabledReplicationRegions: {string}
end

local record ExportKeyInput
    KeyMaterial: ExportKeyMaterial
    ExportKeyIdentifier: string
    ExportAttributes: ExportAttributes
end

local record ExportKeyOutput
    WrappedKey: WrappedKey
end

local record GetAliasInput
    AliasName: string
end

local record GetAliasOutput
    Alias: Alias
end

local record GetCertificateSigningRequestInput
    KeyIdentifier: string
    SigningAlgorithm: string
    CertificateSubject: CertificateSubjectType
end

local record GetCertificateSigningRequestOutput
    CertificateSigningRequest: string
end

local record GetDefaultKeyReplicationRegionsInput
end

local record GetDefaultKeyReplicationRegionsOutput
    EnabledReplicationRegions: {string}
end

local record GetKeyInput
    KeyIdentifier: string
end

local record GetKeyOutput
    Key: Key
end

local record GetMpaTeamAssociationInput
    Action: string
end

local record GetMpaTeamAssociationOutput
    MpaTeamAssociation: MpaTeamAssociation
end

local record GetParametersForExportInput
    KeyMaterialType: string
    SigningKeyAlgorithm: string
    ReuseLastGeneratedToken: boolean
end

local record GetParametersForExportOutput
    SigningKeyCertificate: string
    SigningKeyCertificateChain: string
    SigningKeyAlgorithm: string
    ExportToken: string
    ParametersValidUntilTimestamp: number
end

local record GetParametersForImportInput
    KeyMaterialType: string
    WrappingKeyAlgorithm: string
    ReuseLastGeneratedToken: boolean
end

local record GetParametersForImportOutput
    WrappingKeyCertificate: string
    WrappingKeyCertificateChain: string
    WrappingKeyAlgorithm: string
    ImportToken: string
    ParametersValidUntilTimestamp: number
end

local record GetPublicKeyCertificateInput
    KeyIdentifier: string
end

local record GetPublicKeyCertificateOutput
    KeyCertificate: string
    KeyCertificateChain: string
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    ResourceArn: string
    Policy: string
end

local record ImportKeyInput
    KeyMaterial: ImportKeyMaterial
    KeyCheckValueAlgorithm: string
    Enabled: boolean
    Tags: {Tag}
    ReplicationRegions: {string}
    RequesterComment: string
end

local record ImportKeyOutput
    Key: Key
end

local record ListAliasesInput
    KeyArn: string
    NextToken: string
    MaxResults: number
end

local record ListAliasesOutput
    Aliases: {Alias}
    NextToken: string
end

local record ListKeysInput
    KeyState: string
    NextToken: string
    MaxResults: number
end

local record ListKeysOutput
    Keys: {KeySummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
    NextToken: string
    MaxResults: number
end

local record ListTagsForResourceOutput
    Tags: {Tag}
    NextToken: string
end

local record PutResourcePolicyInput
    ResourceArn: string
    Policy: string
end

local record PutResourcePolicyOutput
    ResourceArn: string
    Policy: string
end

local record RemoveKeyReplicationRegionsInput
    KeyIdentifier: string
    ReplicationRegions: {string}
end

local record RemoveKeyReplicationRegionsOutput
    Key: Key
end

local record RestoreKeyInput
    KeyIdentifier: string
end

local record RestoreKeyOutput
    Key: Key
end

local record StartKeyUsageInput
    KeyIdentifier: string
end

local record StartKeyUsageOutput
    Key: Key
end

local record StopKeyUsageInput
    KeyIdentifier: string
end

local record StopKeyUsageOutput
    Key: Key
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

local record UpdateAliasInput
    AliasName: string
    KeyArn: string
end

local record UpdateAliasOutput
    Alias: Alias
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
    ResourceId: string
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record PublicPolicyException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
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

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    ResourceId: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record M
    AddKeyReplicationRegionsInput: AddKeyReplicationRegionsInput
    AddKeyReplicationRegionsOutput: AddKeyReplicationRegionsOutput
    AssociateMpaTeamInput: AssociateMpaTeamInput
    AssociateMpaTeamOutput: AssociateMpaTeamOutput
    CreateAliasInput: CreateAliasInput
    CreateAliasOutput: CreateAliasOutput
    CreateKeyInput: CreateKeyInput
    CreateKeyOutput: CreateKeyOutput
    DeleteAliasInput: DeleteAliasInput
    DeleteAliasOutput: DeleteAliasOutput
    DeleteKeyInput: DeleteKeyInput
    DeleteKeyOutput: DeleteKeyOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DisableDefaultKeyReplicationRegionsInput: DisableDefaultKeyReplicationRegionsInput
    DisableDefaultKeyReplicationRegionsOutput: DisableDefaultKeyReplicationRegionsOutput
    DisassociateMpaTeamInput: DisassociateMpaTeamInput
    DisassociateMpaTeamOutput: DisassociateMpaTeamOutput
    EnableDefaultKeyReplicationRegionsInput: EnableDefaultKeyReplicationRegionsInput
    EnableDefaultKeyReplicationRegionsOutput: EnableDefaultKeyReplicationRegionsOutput
    ExportKeyInput: ExportKeyInput
    ExportKeyOutput: ExportKeyOutput
    GetAliasInput: GetAliasInput
    GetAliasOutput: GetAliasOutput
    GetCertificateSigningRequestInput: GetCertificateSigningRequestInput
    GetCertificateSigningRequestOutput: GetCertificateSigningRequestOutput
    GetDefaultKeyReplicationRegionsInput: GetDefaultKeyReplicationRegionsInput
    GetDefaultKeyReplicationRegionsOutput: GetDefaultKeyReplicationRegionsOutput
    GetKeyInput: GetKeyInput
    GetKeyOutput: GetKeyOutput
    GetMpaTeamAssociationInput: GetMpaTeamAssociationInput
    GetMpaTeamAssociationOutput: GetMpaTeamAssociationOutput
    GetParametersForExportInput: GetParametersForExportInput
    GetParametersForExportOutput: GetParametersForExportOutput
    GetParametersForImportInput: GetParametersForImportInput
    GetParametersForImportOutput: GetParametersForImportOutput
    GetPublicKeyCertificateInput: GetPublicKeyCertificateInput
    GetPublicKeyCertificateOutput: GetPublicKeyCertificateOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    ImportKeyInput: ImportKeyInput
    ImportKeyOutput: ImportKeyOutput
    ListAliasesInput: ListAliasesInput
    ListAliasesOutput: ListAliasesOutput
    ListKeysInput: ListKeysInput
    ListKeysOutput: ListKeysOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RemoveKeyReplicationRegionsInput: RemoveKeyReplicationRegionsInput
    RemoveKeyReplicationRegionsOutput: RemoveKeyReplicationRegionsOutput
    RestoreKeyInput: RestoreKeyInput
    RestoreKeyOutput: RestoreKeyOutput
    StartKeyUsageInput: StartKeyUsageInput
    StartKeyUsageOutput: StartKeyUsageOutput
    StopKeyUsageInput: StopKeyUsageInput
    StopKeyUsageOutput: StopKeyUsageOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAliasInput: UpdateAliasInput
    UpdateAliasOutput: UpdateAliasOutput
end

return M
