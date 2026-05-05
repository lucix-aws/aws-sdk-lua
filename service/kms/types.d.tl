local record CancelKeyDeletionInput
    KeyId: string
end

local record CancelKeyDeletionOutput
    KeyId: string
end

local record ConnectCustomKeyStoreInput
    CustomKeyStoreId: string
end

local record ConnectCustomKeyStoreOutput
end

local record CreateAliasInput
    AliasName: string
    TargetKeyId: string
end

local record CreateAliasOutput
end

local record CreateCustomKeyStoreInput
    CustomKeyStoreName: string
    CloudHsmClusterId: string
    TrustAnchorCertificate: string
    KeyStorePassword: string
    CustomKeyStoreType: string
    XksProxyUriEndpoint: string
    XksProxyUriPath: string
    XksProxyVpcEndpointServiceName: string
    XksProxyVpcEndpointServiceOwner: string
    XksProxyAuthenticationCredential: XksProxyAuthenticationCredentialType
    XksProxyConnectivity: string
end

local record CreateCustomKeyStoreOutput
    CustomKeyStoreId: string
end

local record CreateGrantInput
    KeyId: string
    GranteePrincipal: string
    RetiringPrincipal: string
    Operations: {string}
    Constraints: GrantConstraints
    GrantTokens: {string}
    Name: string
    DryRun: boolean
end

local record CreateGrantOutput
    GrantToken: string
    GrantId: string
end

local record CreateKeyInput
    Policy: string
    Description: string
    KeyUsage: string
    CustomerMasterKeySpec: string
    KeySpec: string
    Origin: string
    CustomKeyStoreId: string
    BypassPolicyLockoutSafetyCheck: boolean
    Tags: {Tag}
    MultiRegion: boolean
    XksKeyId: string
end

local record CreateKeyOutput
    KeyMetadata: KeyMetadata
end

local record DecryptInput
    CiphertextBlob: string
    EncryptionContext: {string : string}
    GrantTokens: {string}
    KeyId: string
    EncryptionAlgorithm: string
    Recipient: RecipientInfo
    DryRun: boolean
    DryRunModifiers: {string}
end

local record DecryptOutput
    KeyId: string
    Plaintext: string
    EncryptionAlgorithm: string
    CiphertextForRecipient: string
    KeyMaterialId: string
end

local record DeleteAliasInput
    AliasName: string
end

local record DeleteAliasOutput
end

local record DeleteCustomKeyStoreInput
    CustomKeyStoreId: string
end

local record DeleteCustomKeyStoreOutput
end

local record DeleteImportedKeyMaterialInput
    KeyId: string
    KeyMaterialId: string
end

local record DeleteImportedKeyMaterialOutput
    KeyId: string
    KeyMaterialId: string
end

local record DeriveSharedSecretInput
    KeyId: string
    KeyAgreementAlgorithm: string
    PublicKey: string
    GrantTokens: {string}
    DryRun: boolean
    Recipient: RecipientInfo
end

local record DeriveSharedSecretOutput
    KeyId: string
    SharedSecret: string
    CiphertextForRecipient: string
    KeyAgreementAlgorithm: string
    KeyOrigin: string
end

local record DescribeCustomKeyStoresInput
    CustomKeyStoreId: string
    CustomKeyStoreName: string
    Limit: number
    Marker: string
end

local record DescribeCustomKeyStoresOutput
    CustomKeyStores: {CustomKeyStoresListEntry}
    NextMarker: string
    Truncated: boolean
end

local record DescribeKeyInput
    KeyId: string
    GrantTokens: {string}
end

local record DescribeKeyOutput
    KeyMetadata: KeyMetadata
end

local record DisableKeyInput
    KeyId: string
end

local record DisableKeyOutput
end

local record DisableKeyRotationInput
    KeyId: string
end

local record DisableKeyRotationOutput
end

local record DisconnectCustomKeyStoreInput
    CustomKeyStoreId: string
end

local record DisconnectCustomKeyStoreOutput
end

local record EnableKeyInput
    KeyId: string
end

local record EnableKeyOutput
end

local record EnableKeyRotationInput
    KeyId: string
    RotationPeriodInDays: number
end

local record EnableKeyRotationOutput
end

local record EncryptInput
    KeyId: string
    Plaintext: string
    EncryptionContext: {string : string}
    GrantTokens: {string}
    EncryptionAlgorithm: string
    DryRun: boolean
end

local record EncryptOutput
    CiphertextBlob: string
    KeyId: string
    EncryptionAlgorithm: string
end

local record GenerateDataKeyInput
    KeyId: string
    EncryptionContext: {string : string}
    NumberOfBytes: number
    KeySpec: string
    GrantTokens: {string}
    Recipient: RecipientInfo
    DryRun: boolean
end

local record GenerateDataKeyOutput
    CiphertextBlob: string
    Plaintext: string
    KeyId: string
    CiphertextForRecipient: string
    KeyMaterialId: string
end

local record GenerateDataKeyPairInput
    EncryptionContext: {string : string}
    KeyId: string
    KeyPairSpec: string
    GrantTokens: {string}
    Recipient: RecipientInfo
    DryRun: boolean
end

local record GenerateDataKeyPairOutput
    PrivateKeyCiphertextBlob: string
    PrivateKeyPlaintext: string
    PublicKey: string
    KeyId: string
    KeyPairSpec: string
    CiphertextForRecipient: string
    KeyMaterialId: string
end

local record GenerateDataKeyPairWithoutPlaintextInput
    EncryptionContext: {string : string}
    KeyId: string
    KeyPairSpec: string
    GrantTokens: {string}
    DryRun: boolean
end

local record GenerateDataKeyPairWithoutPlaintextOutput
    PrivateKeyCiphertextBlob: string
    PublicKey: string
    KeyId: string
    KeyPairSpec: string
    KeyMaterialId: string
end

local record GenerateDataKeyWithoutPlaintextInput
    KeyId: string
    EncryptionContext: {string : string}
    KeySpec: string
    NumberOfBytes: number
    GrantTokens: {string}
    DryRun: boolean
end

local record GenerateDataKeyWithoutPlaintextOutput
    CiphertextBlob: string
    KeyId: string
    KeyMaterialId: string
end

local record GenerateMacInput
    Message: string
    KeyId: string
    MacAlgorithm: string
    GrantTokens: {string}
    DryRun: boolean
end

local record GenerateMacOutput
    Mac: string
    MacAlgorithm: string
    KeyId: string
end

local record GenerateRandomInput
    NumberOfBytes: number
    CustomKeyStoreId: string
    Recipient: RecipientInfo
end

local record GenerateRandomOutput
    Plaintext: string
    CiphertextForRecipient: string
end

local record GetKeyLastUsageInput
    KeyId: string
end

local record GetKeyLastUsageOutput
    KeyId: string
    KeyLastUsage: KeyLastUsageData
    TrackingStartDate: number
    KeyCreationDate: number
end

local record GetKeyPolicyInput
    KeyId: string
    PolicyName: string
end

local record GetKeyPolicyOutput
    Policy: string
    PolicyName: string
end

local record GetKeyRotationStatusInput
    KeyId: string
end

local record GetKeyRotationStatusOutput
    KeyRotationEnabled: boolean
    KeyId: string
    RotationPeriodInDays: number
    NextRotationDate: number
    OnDemandRotationStartDate: number
end

local record GetParametersForImportInput
    KeyId: string
    WrappingAlgorithm: string
    WrappingKeySpec: string
end

local record GetParametersForImportOutput
    KeyId: string
    ImportToken: string
    PublicKey: string
    ParametersValidTo: number
end

local record GetPublicKeyInput
    KeyId: string
    GrantTokens: {string}
end

local record GetPublicKeyOutput
    KeyId: string
    PublicKey: string
    CustomerMasterKeySpec: string
    KeySpec: string
    KeyUsage: string
    EncryptionAlgorithms: {string}
    SigningAlgorithms: {string}
    KeyAgreementAlgorithms: {string}
end

local record ImportKeyMaterialInput
    KeyId: string
    ImportToken: string
    EncryptedKeyMaterial: string
    ValidTo: number
    ExpirationModel: string
    ImportType: string
    KeyMaterialDescription: string
    KeyMaterialId: string
end

local record ImportKeyMaterialOutput
    KeyId: string
    KeyMaterialId: string
end

local record ListAliasesInput
    KeyId: string
    Limit: number
    Marker: string
end

local record ListAliasesOutput
    Aliases: {AliasListEntry}
    NextMarker: string
    Truncated: boolean
end

local record ListGrantsInput
    Limit: number
    Marker: string
    KeyId: string
    GrantId: string
    GranteePrincipal: string
end

local record ListGrantsOutput
    Grants: {GrantListEntry}
    NextMarker: string
    Truncated: boolean
end

local record ListKeyPoliciesInput
    KeyId: string
    Limit: number
    Marker: string
end

local record ListKeyPoliciesOutput
    PolicyNames: {string}
    NextMarker: string
    Truncated: boolean
end

local record ListKeyRotationsInput
    KeyId: string
    IncludeKeyMaterial: string
    Limit: number
    Marker: string
end

local record ListKeyRotationsOutput
    Rotations: {RotationsListEntry}
    NextMarker: string
    Truncated: boolean
end

local record ListKeysInput
    Limit: number
    Marker: string
end

local record ListKeysOutput
    Keys: {KeyListEntry}
    NextMarker: string
    Truncated: boolean
end

local record ListResourceTagsInput
    KeyId: string
    Limit: number
    Marker: string
end

local record ListResourceTagsOutput
    Tags: {Tag}
    NextMarker: string
    Truncated: boolean
end

local record ListRetirableGrantsInput
    Limit: number
    Marker: string
    RetiringPrincipal: string
end

local record ListRetirableGrantsOutput
    Grants: {GrantListEntry}
    NextMarker: string
    Truncated: boolean
end

local record PutKeyPolicyInput
    KeyId: string
    PolicyName: string
    Policy: string
    BypassPolicyLockoutSafetyCheck: boolean
end

local record PutKeyPolicyOutput
end

local record ReEncryptInput
    CiphertextBlob: string
    SourceEncryptionContext: {string : string}
    SourceKeyId: string
    DestinationKeyId: string
    DestinationEncryptionContext: {string : string}
    SourceEncryptionAlgorithm: string
    DestinationEncryptionAlgorithm: string
    GrantTokens: {string}
    DryRun: boolean
    DryRunModifiers: {string}
end

local record ReEncryptOutput
    CiphertextBlob: string
    SourceKeyId: string
    KeyId: string
    SourceEncryptionAlgorithm: string
    DestinationEncryptionAlgorithm: string
    SourceKeyMaterialId: string
    DestinationKeyMaterialId: string
end

local record ReplicateKeyInput
    KeyId: string
    ReplicaRegion: string
    Policy: string
    BypassPolicyLockoutSafetyCheck: boolean
    Description: string
    Tags: {Tag}
end

local record ReplicateKeyOutput
    ReplicaKeyMetadata: KeyMetadata
    ReplicaPolicy: string
    ReplicaTags: {Tag}
end

local record RetireGrantInput
    GrantToken: string
    KeyId: string
    GrantId: string
    DryRun: boolean
end

local record RetireGrantOutput
end

local record RevokeGrantInput
    KeyId: string
    GrantId: string
    DryRun: boolean
end

local record RevokeGrantOutput
end

local record RotateKeyOnDemandInput
    KeyId: string
end

local record RotateKeyOnDemandOutput
    KeyId: string
end

local record ScheduleKeyDeletionInput
    KeyId: string
    PendingWindowInDays: number
end

local record ScheduleKeyDeletionOutput
    KeyId: string
    DeletionDate: number
    KeyState: string
    PendingWindowInDays: number
end

local record SignInput
    KeyId: string
    Message: string
    MessageType: string
    GrantTokens: {string}
    SigningAlgorithm: string
    DryRun: boolean
end

local record SignOutput
    KeyId: string
    Signature: string
    SigningAlgorithm: string
end

local record TagResourceInput
    KeyId: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    KeyId: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAliasInput
    AliasName: string
    TargetKeyId: string
end

local record UpdateAliasOutput
end

local record UpdateCustomKeyStoreInput
    CustomKeyStoreId: string
    NewCustomKeyStoreName: string
    KeyStorePassword: string
    CloudHsmClusterId: string
    XksProxyUriEndpoint: string
    XksProxyUriPath: string
    XksProxyVpcEndpointServiceName: string
    XksProxyVpcEndpointServiceOwner: string
    XksProxyAuthenticationCredential: XksProxyAuthenticationCredentialType
    XksProxyConnectivity: string
end

local record UpdateCustomKeyStoreOutput
end

local record UpdateKeyDescriptionInput
    KeyId: string
    Description: string
end

local record UpdateKeyDescriptionOutput
end

local record UpdatePrimaryRegionInput
    KeyId: string
    PrimaryRegion: string
end

local record UpdatePrimaryRegionOutput
end

local record VerifyInput
    KeyId: string
    Message: string
    MessageType: string
    Signature: string
    SigningAlgorithm: string
    GrantTokens: {string}
    DryRun: boolean
end

local record VerifyOutput
    KeyId: string
    SignatureValid: boolean
    SigningAlgorithm: string
end

local record VerifyMacInput
    Message: string
    KeyId: string
    MacAlgorithm: string
    Mac: string
    GrantTokens: {string}
    DryRun: boolean
end

local record VerifyMacOutput
    KeyId: string
    MacValid: boolean
    MacAlgorithm: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record CloudHsmClusterInvalidConfigurationException
    message: string
end

local record CloudHsmClusterNotActiveException
    message: string
end

local record CustomKeyStoreInvalidStateException
    message: string
end

local record CustomKeyStoreNotFoundException
    message: string
end

local record KMSInternalException
    message: string
end

local record AlreadyExistsException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidAliasNameException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record CloudHsmClusterInUseException
    message: string
end

local record CloudHsmClusterInvalidConfigurationException
    message: string
end

local record CloudHsmClusterNotActiveException
    message: string
end

local record CloudHsmClusterNotFoundException
    message: string
end

local record CustomKeyStoreNameInUseException
    message: string
end

local record IncorrectTrustAnchorException
    message: string
end

local record KMSInternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record XksProxyIncorrectAuthenticationCredentialException
    message: string
end

local record XksProxyInvalidConfigurationException
    message: string
end

local record XksProxyInvalidResponseException
    message: string
end

local record XksProxyUriEndpointInUseException
    message: string
end

local record XksProxyUriInUseException
    message: string
end

local record XksProxyUriUnreachableException
    message: string
end

local record XksProxyVpcEndpointServiceInUseException
    message: string
end

local record XksProxyVpcEndpointServiceInvalidConfigurationException
    message: string
end

local record XksProxyVpcEndpointServiceNotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record CloudHsmClusterInvalidConfigurationException
    message: string
end

local record CustomKeyStoreInvalidStateException
    message: string
end

local record CustomKeyStoreNotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record TagException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record XksKeyAlreadyInUseException
    message: string
end

local record XksKeyInvalidConfigurationException
    message: string
end

local record XksKeyNotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record IncorrectKeyException
    message: string
end

local record InvalidCiphertextException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record CustomKeyStoreHasCMKsException
    message: string
end

local record CustomKeyStoreInvalidStateException
    message: string
end

local record CustomKeyStoreNotFoundException
    message: string
end

local record KMSInternalException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record CustomKeyStoreNotFoundException
    message: string
end

local record InvalidMarkerException
    message: string
end

local record KMSInternalException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record CustomKeyStoreInvalidStateException
    message: string
end

local record CustomKeyStoreNotFoundException
    message: string
end

local record KMSInternalException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record CustomKeyStoreInvalidStateException
    message: string
end

local record CustomKeyStoreNotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record KMSInternalException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record ExpiredImportTokenException
    message: string
end

local record IncorrectKeyMaterialException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidCiphertextException
    message: string
end

local record InvalidImportTokenException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidMarkerException
    message: string
end

local record KMSInternalException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidGrantIdException
    message: string
end

local record InvalidMarkerException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidMarkerException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidMarkerException
    message: string
end

local record KMSInternalException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidMarkerException
    message: string
end

local record KMSInternalException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidMarkerException
    message: string
end

local record KMSInternalException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record IncorrectKeyException
    message: string
end

local record InvalidCiphertextException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record AlreadyExistsException
    message: string
end

local record DisabledException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedPolicyDocumentException
    message: string
end

local record NotFoundException
    message: string
end

local record TagException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidGrantIdException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidGrantIdException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record ConflictException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record TagException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record TagException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record CloudHsmClusterInvalidConfigurationException
    message: string
end

local record CloudHsmClusterNotActiveException
    message: string
end

local record CloudHsmClusterNotFoundException
    message: string
end

local record CloudHsmClusterNotRelatedException
    message: string
end

local record CustomKeyStoreInvalidStateException
    message: string
end

local record CustomKeyStoreNameInUseException
    message: string
end

local record CustomKeyStoreNotFoundException
    message: string
end

local record KMSInternalException
    message: string
end

local record XksProxyIncorrectAuthenticationCredentialException
    message: string
end

local record XksProxyInvalidConfigurationException
    message: string
end

local record XksProxyInvalidResponseException
    message: string
end

local record XksProxyUriEndpointInUseException
    message: string
end

local record XksProxyUriInUseException
    message: string
end

local record XksProxyUriUnreachableException
    message: string
end

local record XksProxyVpcEndpointServiceInUseException
    message: string
end

local record XksProxyVpcEndpointServiceInvalidConfigurationException
    message: string
end

local record XksProxyVpcEndpointServiceNotFoundException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DisabledException
    message: string
end

local record InvalidArnException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record DependencyTimeoutException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidSignatureException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local record DisabledException
    message: string
end

local record DryRunOperationException
    message: string
end

local record InvalidGrantTokenException
    message: string
end

local record InvalidKeyUsageException
    message: string
end

local record KeyUnavailableException
    message: string
end

local record KMSInternalException
    message: string
end

local record KMSInvalidMacException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record NotFoundException
    message: string
end

local type KeyState = "Creating" | "Enabled" | "Disabled" | "PendingDeletion" | "PendingImport" | "PendingReplicaDeletion" | "Unavailable" | "Updating"

local type ImportType = "NEW_KEY_MATERIAL" | "EXISTING_KEY_MATERIAL"

local type DataKeyPairSpec = "RSA_2048" | "RSA_3072" | "RSA_4096" | "ECC_NIST_P256" | "ECC_NIST_P384" | "ECC_NIST_P521" | "ECC_SECG_P256K1" | "SM2" | "ECC_NIST_EDWARDS25519"

local type WrappingKeySpec = "RSA_2048" | "RSA_3072" | "RSA_4096" | "SM2"

local type XksProxyConnectivityType = "PUBLIC_ENDPOINT" | "VPC_ENDPOINT_SERVICE"

local type CustomerMasterKeySpec = "RSA_2048" | "RSA_3072" | "RSA_4096" | "ECC_NIST_P256" | "ECC_NIST_P384" | "ECC_NIST_P521" | "ECC_SECG_P256K1" | "SYMMETRIC_DEFAULT" | "HMAC_224" | "HMAC_256" | "HMAC_384" | "HMAC_512" | "SM2"

local type DataKeySpec = "AES_256" | "AES_128"

local type KeyAgreementAlgorithmSpec = "ECDH"

local type OriginType = "AWS_KMS" | "EXTERNAL" | "AWS_CLOUDHSM" | "EXTERNAL_KEY_STORE"

local type KeyUsageType = "SIGN_VERIFY" | "ENCRYPT_DECRYPT" | "GENERATE_VERIFY_MAC" | "KEY_AGREEMENT"

local type MacAlgorithmSpec = "HMAC_SHA_224" | "HMAC_SHA_256" | "HMAC_SHA_384" | "HMAC_SHA_512"

local type EncryptionAlgorithmSpec = "SYMMETRIC_DEFAULT" | "RSAES_OAEP_SHA_1" | "RSAES_OAEP_SHA_256" | "SM2PKE"

local type ExpirationModelType = "KEY_MATERIAL_EXPIRES" | "KEY_MATERIAL_DOES_NOT_EXPIRE"

local type AlgorithmSpec = "RSAES_PKCS1_V1_5" | "RSAES_OAEP_SHA_1" | "RSAES_OAEP_SHA_256" | "RSA_AES_KEY_WRAP_SHA_1" | "RSA_AES_KEY_WRAP_SHA_256" | "SM2PKE"

local type IncludeKeyMaterial = "ALL_KEY_MATERIAL" | "ROTATIONS_ONLY"

local type KeySpec = "RSA_2048" | "RSA_3072" | "RSA_4096" | "ECC_NIST_P256" | "ECC_NIST_P384" | "ECC_NIST_P521" | "ECC_SECG_P256K1" | "SYMMETRIC_DEFAULT" | "HMAC_224" | "HMAC_256" | "HMAC_384" | "HMAC_512" | "SM2" | "ML_DSA_44" | "ML_DSA_65" | "ML_DSA_87" | "ECC_NIST_EDWARDS25519"

local type SigningAlgorithmSpec = "RSASSA_PSS_SHA_256" | "RSASSA_PSS_SHA_384" | "RSASSA_PSS_SHA_512" | "RSASSA_PKCS1_V1_5_SHA_256" | "RSASSA_PKCS1_V1_5_SHA_384" | "RSASSA_PKCS1_V1_5_SHA_512" | "ECDSA_SHA_256" | "ECDSA_SHA_384" | "ECDSA_SHA_512" | "SM2DSA" | "ML_DSA_SHAKE_256" | "ED25519_SHA_512" | "ED25519_PH_SHA_512"

local type MessageType = "RAW" | "DIGEST" | "EXTERNAL_MU"

local type CustomKeyStoreType = "AWS_CLOUDHSM" | "EXTERNAL_KEY_STORE"

local record M
    CancelKeyDeletionInput: CancelKeyDeletionInput
    CancelKeyDeletionOutput: CancelKeyDeletionOutput
    ConnectCustomKeyStoreInput: ConnectCustomKeyStoreInput
    ConnectCustomKeyStoreOutput: ConnectCustomKeyStoreOutput
    CreateAliasInput: CreateAliasInput
    CreateAliasOutput: CreateAliasOutput
    CreateCustomKeyStoreInput: CreateCustomKeyStoreInput
    CreateCustomKeyStoreOutput: CreateCustomKeyStoreOutput
    CreateGrantInput: CreateGrantInput
    CreateGrantOutput: CreateGrantOutput
    CreateKeyInput: CreateKeyInput
    CreateKeyOutput: CreateKeyOutput
    DecryptInput: DecryptInput
    DecryptOutput: DecryptOutput
    DeleteAliasInput: DeleteAliasInput
    DeleteAliasOutput: DeleteAliasOutput
    DeleteCustomKeyStoreInput: DeleteCustomKeyStoreInput
    DeleteCustomKeyStoreOutput: DeleteCustomKeyStoreOutput
    DeleteImportedKeyMaterialInput: DeleteImportedKeyMaterialInput
    DeleteImportedKeyMaterialOutput: DeleteImportedKeyMaterialOutput
    DeriveSharedSecretInput: DeriveSharedSecretInput
    DeriveSharedSecretOutput: DeriveSharedSecretOutput
    DescribeCustomKeyStoresInput: DescribeCustomKeyStoresInput
    DescribeCustomKeyStoresOutput: DescribeCustomKeyStoresOutput
    DescribeKeyInput: DescribeKeyInput
    DescribeKeyOutput: DescribeKeyOutput
    DisableKeyInput: DisableKeyInput
    DisableKeyOutput: DisableKeyOutput
    DisableKeyRotationInput: DisableKeyRotationInput
    DisableKeyRotationOutput: DisableKeyRotationOutput
    DisconnectCustomKeyStoreInput: DisconnectCustomKeyStoreInput
    DisconnectCustomKeyStoreOutput: DisconnectCustomKeyStoreOutput
    EnableKeyInput: EnableKeyInput
    EnableKeyOutput: EnableKeyOutput
    EnableKeyRotationInput: EnableKeyRotationInput
    EnableKeyRotationOutput: EnableKeyRotationOutput
    EncryptInput: EncryptInput
    EncryptOutput: EncryptOutput
    GenerateDataKeyInput: GenerateDataKeyInput
    GenerateDataKeyOutput: GenerateDataKeyOutput
    GenerateDataKeyPairInput: GenerateDataKeyPairInput
    GenerateDataKeyPairOutput: GenerateDataKeyPairOutput
    GenerateDataKeyPairWithoutPlaintextInput: GenerateDataKeyPairWithoutPlaintextInput
    GenerateDataKeyPairWithoutPlaintextOutput: GenerateDataKeyPairWithoutPlaintextOutput
    GenerateDataKeyWithoutPlaintextInput: GenerateDataKeyWithoutPlaintextInput
    GenerateDataKeyWithoutPlaintextOutput: GenerateDataKeyWithoutPlaintextOutput
    GenerateMacInput: GenerateMacInput
    GenerateMacOutput: GenerateMacOutput
    GenerateRandomInput: GenerateRandomInput
    GenerateRandomOutput: GenerateRandomOutput
    GetKeyLastUsageInput: GetKeyLastUsageInput
    GetKeyLastUsageOutput: GetKeyLastUsageOutput
    GetKeyPolicyInput: GetKeyPolicyInput
    GetKeyPolicyOutput: GetKeyPolicyOutput
    GetKeyRotationStatusInput: GetKeyRotationStatusInput
    GetKeyRotationStatusOutput: GetKeyRotationStatusOutput
    GetParametersForImportInput: GetParametersForImportInput
    GetParametersForImportOutput: GetParametersForImportOutput
    GetPublicKeyInput: GetPublicKeyInput
    GetPublicKeyOutput: GetPublicKeyOutput
    ImportKeyMaterialInput: ImportKeyMaterialInput
    ImportKeyMaterialOutput: ImportKeyMaterialOutput
    ListAliasesInput: ListAliasesInput
    ListAliasesOutput: ListAliasesOutput
    ListGrantsInput: ListGrantsInput
    ListGrantsOutput: ListGrantsOutput
    ListKeyPoliciesInput: ListKeyPoliciesInput
    ListKeyPoliciesOutput: ListKeyPoliciesOutput
    ListKeyRotationsInput: ListKeyRotationsInput
    ListKeyRotationsOutput: ListKeyRotationsOutput
    ListKeysInput: ListKeysInput
    ListKeysOutput: ListKeysOutput
    ListResourceTagsInput: ListResourceTagsInput
    ListResourceTagsOutput: ListResourceTagsOutput
    ListRetirableGrantsInput: ListRetirableGrantsInput
    ListRetirableGrantsOutput: ListRetirableGrantsOutput
    PutKeyPolicyInput: PutKeyPolicyInput
    PutKeyPolicyOutput: PutKeyPolicyOutput
    ReEncryptInput: ReEncryptInput
    ReEncryptOutput: ReEncryptOutput
    ReplicateKeyInput: ReplicateKeyInput
    ReplicateKeyOutput: ReplicateKeyOutput
    RetireGrantInput: RetireGrantInput
    RetireGrantOutput: RetireGrantOutput
    RevokeGrantInput: RevokeGrantInput
    RevokeGrantOutput: RevokeGrantOutput
    RotateKeyOnDemandInput: RotateKeyOnDemandInput
    RotateKeyOnDemandOutput: RotateKeyOnDemandOutput
    ScheduleKeyDeletionInput: ScheduleKeyDeletionInput
    ScheduleKeyDeletionOutput: ScheduleKeyDeletionOutput
    SignInput: SignInput
    SignOutput: SignOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAliasInput: UpdateAliasInput
    UpdateAliasOutput: UpdateAliasOutput
    UpdateCustomKeyStoreInput: UpdateCustomKeyStoreInput
    UpdateCustomKeyStoreOutput: UpdateCustomKeyStoreOutput
    UpdateKeyDescriptionInput: UpdateKeyDescriptionInput
    UpdateKeyDescriptionOutput: UpdateKeyDescriptionOutput
    UpdatePrimaryRegionInput: UpdatePrimaryRegionInput
    UpdatePrimaryRegionOutput: UpdatePrimaryRegionOutput
    VerifyInput: VerifyInput
    VerifyOutput: VerifyOutput
    VerifyMacInput: VerifyMacInput
    VerifyMacOutput: VerifyMacOutput
end

return M
