local M = {}

M.AlgorithmSpec = {
    RSAES_PKCS1_V1_5 = "RSAES_PKCS1_V1_5",
    RSAES_OAEP_SHA_1 = "RSAES_OAEP_SHA_1",
    RSAES_OAEP_SHA_256 = "RSAES_OAEP_SHA_256",
    RSA_AES_KEY_WRAP_SHA_1 = "RSA_AES_KEY_WRAP_SHA_1",
    RSA_AES_KEY_WRAP_SHA_256 = "RSA_AES_KEY_WRAP_SHA_256",
    SM2PKE = "SM2PKE",
}

M.AliasListEntry = {
    type = "structure",
    members = {
        AliasName = {
            type = "string",
        },
        AliasArn = {
            type = "string",
        },
        TargetKeyId = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        LastUpdatedDate = {
            type = "timestamp",
        },
    },
}

M.AlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelKeyDeletionInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelKeyDeletionOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
    },
}

M.DependencyTimeoutException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidArnException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInternalException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudHsmClusterInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudHsmClusterInvalidConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudHsmClusterNotActiveException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudHsmClusterNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudHsmClusterNotRelatedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConnectCustomKeyStoreInput = {
    type = "structure",
    members = {
        CustomKeyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectCustomKeyStoreOutput = {
    type = "structure",
}

M.CustomKeyStoreInvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomKeyStoreNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConnectionErrorCodeType = {
    INVALID_CREDENTIALS = "INVALID_CREDENTIALS",
    CLUSTER_NOT_FOUND = "CLUSTER_NOT_FOUND",
    NETWORK_ERRORS = "NETWORK_ERRORS",
    INTERNAL_ERROR = "INTERNAL_ERROR",
    INSUFFICIENT_CLOUDHSM_HSMS = "INSUFFICIENT_CLOUDHSM_HSMS",
    USER_LOCKED_OUT = "USER_LOCKED_OUT",
    USER_NOT_FOUND = "USER_NOT_FOUND",
    USER_LOGGED_IN = "USER_LOGGED_IN",
    SUBNET_NOT_FOUND = "SUBNET_NOT_FOUND",
    INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET = "INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET",
    XKS_PROXY_ACCESS_DENIED = "XKS_PROXY_ACCESS_DENIED",
    XKS_PROXY_NOT_REACHABLE = "XKS_PROXY_NOT_REACHABLE",
    XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND = "XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND",
    XKS_PROXY_INVALID_RESPONSE = "XKS_PROXY_INVALID_RESPONSE",
    XKS_PROXY_INVALID_CONFIGURATION = "XKS_PROXY_INVALID_CONFIGURATION",
    XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION = "XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION",
    XKS_PROXY_TIMED_OUT = "XKS_PROXY_TIMED_OUT",
    XKS_PROXY_INVALID_TLS_CONFIGURATION = "XKS_PROXY_INVALID_TLS_CONFIGURATION",
}

M.ConnectionStateType = {
    CONNECTED = "CONNECTED",
    CONNECTING = "CONNECTING",
    FAILED = "FAILED",
    DISCONNECTED = "DISCONNECTED",
    DISCONNECTING = "DISCONNECTING",
}

M.CreateAliasInput = {
    type = "structure",
    members = {
        AliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAliasOutput = {
    type = "structure",
}

M.InvalidAliasNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomKeyStoreType = {
    AWS_CLOUDHSM = "AWS_CLOUDHSM",
    EXTERNAL_KEY_STORE = "EXTERNAL_KEY_STORE",
}

M.XksProxyAuthenticationCredentialType = {
    type = "structure",
    members = {
        AccessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RawSecretAccessKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.XksProxyConnectivityType = {
    PUBLIC_ENDPOINT = "PUBLIC_ENDPOINT",
    VPC_ENDPOINT_SERVICE = "VPC_ENDPOINT_SERVICE",
}

M.CreateCustomKeyStoreInput = {
    type = "structure",
    members = {
        CustomKeyStoreName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudHsmClusterId = {
            type = "string",
        },
        TrustAnchorCertificate = {
            type = "string",
        },
        KeyStorePassword = {
            type = "string",
        },
        CustomKeyStoreType = {
            type = "string",
        },
        XksProxyUriEndpoint = {
            type = "string",
        },
        XksProxyUriPath = {
            type = "string",
        },
        XksProxyVpcEndpointServiceName = {
            type = "string",
        },
        XksProxyVpcEndpointServiceOwner = {
            type = "string",
        },
        XksProxyAuthenticationCredential = {
            type = "structure",
        },
        XksProxyConnectivity = {
            type = "string",
        },
    },
}

M.CreateCustomKeyStoreOutput = {
    type = "structure",
    members = {
        CustomKeyStoreId = {
            type = "string",
        },
    },
}

M.CustomKeyStoreNameInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IncorrectTrustAnchorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyIncorrectAuthenticationCredentialException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyInvalidConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyInvalidResponseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyUriEndpointInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyUriInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyUriUnreachableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyVpcEndpointServiceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyVpcEndpointServiceInvalidConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyVpcEndpointServiceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GrantConstraints = {
    type = "structure",
    members = {
        EncryptionContextSubset = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        EncryptionContextEquals = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GrantOperation = {
    Decrypt = "Decrypt",
    Encrypt = "Encrypt",
    GenerateDataKey = "GenerateDataKey",
    GenerateDataKeyWithoutPlaintext = "GenerateDataKeyWithoutPlaintext",
    ReEncryptFrom = "ReEncryptFrom",
    ReEncryptTo = "ReEncryptTo",
    Sign = "Sign",
    Verify = "Verify",
    GetPublicKey = "GetPublicKey",
    CreateGrant = "CreateGrant",
    RetireGrant = "RetireGrant",
    DescribeKey = "DescribeKey",
    GenerateDataKeyPair = "GenerateDataKeyPair",
    GenerateDataKeyPairWithoutPlaintext = "GenerateDataKeyPairWithoutPlaintext",
    GenerateMac = "GenerateMac",
    VerifyMac = "VerifyMac",
    DeriveSharedSecret = "DeriveSharedSecret",
}

M.CreateGrantInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GranteePrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetiringPrincipal = {
            type = "string",
        },
        Operations = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Constraints = {
            type = "structure",
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        Name = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.CreateGrantOutput = {
    type = "structure",
    members = {
        GrantToken = {
            type = "string",
        },
        GrantId = {
            type = "string",
        },
    },
}

M.DisabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DryRunOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidGrantTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomerMasterKeySpec = {
    RSA_2048 = "RSA_2048",
    RSA_3072 = "RSA_3072",
    RSA_4096 = "RSA_4096",
    ECC_NIST_P256 = "ECC_NIST_P256",
    ECC_NIST_P384 = "ECC_NIST_P384",
    ECC_NIST_P521 = "ECC_NIST_P521",
    ECC_SECG_P256K1 = "ECC_SECG_P256K1",
    SYMMETRIC_DEFAULT = "SYMMETRIC_DEFAULT",
    HMAC_224 = "HMAC_224",
    HMAC_256 = "HMAC_256",
    HMAC_384 = "HMAC_384",
    HMAC_512 = "HMAC_512",
    SM2 = "SM2",
}

M.KeySpec = {
    RSA_2048 = "RSA_2048",
    RSA_3072 = "RSA_3072",
    RSA_4096 = "RSA_4096",
    ECC_NIST_P256 = "ECC_NIST_P256",
    ECC_NIST_P384 = "ECC_NIST_P384",
    ECC_NIST_P521 = "ECC_NIST_P521",
    ECC_SECG_P256K1 = "ECC_SECG_P256K1",
    SYMMETRIC_DEFAULT = "SYMMETRIC_DEFAULT",
    HMAC_224 = "HMAC_224",
    HMAC_256 = "HMAC_256",
    HMAC_384 = "HMAC_384",
    HMAC_512 = "HMAC_512",
    SM2 = "SM2",
    ML_DSA_44 = "ML_DSA_44",
    ML_DSA_65 = "ML_DSA_65",
    ML_DSA_87 = "ML_DSA_87",
    ECC_NIST_EDWARDS25519 = "ECC_NIST_EDWARDS25519",
}

M.KeyUsageType = {
    SIGN_VERIFY = "SIGN_VERIFY",
    ENCRYPT_DECRYPT = "ENCRYPT_DECRYPT",
    GENERATE_VERIFY_MAC = "GENERATE_VERIFY_MAC",
    KEY_AGREEMENT = "KEY_AGREEMENT",
}

M.OriginType = {
    AWS_KMS = "AWS_KMS",
    EXTERNAL = "EXTERNAL",
    AWS_CLOUDHSM = "AWS_CLOUDHSM",
    EXTERNAL_KEY_STORE = "EXTERNAL_KEY_STORE",
}

M.Tag = {
    type = "structure",
    members = {
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateKeyInput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        KeyUsage = {
            type = "string",
        },
        CustomerMasterKeySpec = {
            type = "string",
        },
        KeySpec = {
            type = "string",
        },
        Origin = {
            type = "string",
        },
        CustomKeyStoreId = {
            type = "string",
        },
        BypassPolicyLockoutSafetyCheck = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        MultiRegion = {
            type = "boolean",
        },
        XksKeyId = {
            type = "string",
        },
    },
}

M.EncryptionAlgorithmSpec = {
    SYMMETRIC_DEFAULT = "SYMMETRIC_DEFAULT",
    RSAES_OAEP_SHA_1 = "RSAES_OAEP_SHA_1",
    RSAES_OAEP_SHA_256 = "RSAES_OAEP_SHA_256",
    SM2PKE = "SM2PKE",
}

M.ExpirationModelType = {
    KEY_MATERIAL_EXPIRES = "KEY_MATERIAL_EXPIRES",
    KEY_MATERIAL_DOES_NOT_EXPIRE = "KEY_MATERIAL_DOES_NOT_EXPIRE",
}

M.KeyAgreementAlgorithmSpec = {
    ECDH = "ECDH",
}

M.KeyManagerType = {
    AWS = "AWS",
    CUSTOMER = "CUSTOMER",
}

M.KeyState = {
    Creating = "Creating",
    Enabled = "Enabled",
    Disabled = "Disabled",
    PendingDeletion = "PendingDeletion",
    PendingImport = "PendingImport",
    PendingReplicaDeletion = "PendingReplicaDeletion",
    Unavailable = "Unavailable",
    Updating = "Updating",
}

M.MacAlgorithmSpec = {
    HMAC_SHA_224 = "HMAC_SHA_224",
    HMAC_SHA_256 = "HMAC_SHA_256",
    HMAC_SHA_384 = "HMAC_SHA_384",
    HMAC_SHA_512 = "HMAC_SHA_512",
}

M.MultiRegionKeyType = {
    PRIMARY = "PRIMARY",
    REPLICA = "REPLICA",
}

M.MultiRegionKey = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.MultiRegionConfiguration = {
    type = "structure",
    members = {
        MultiRegionKeyType = {
            type = "string",
        },
        PrimaryKey = {
            type = "structure",
        },
        ReplicaKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SigningAlgorithmSpec = {
    RSASSA_PSS_SHA_256 = "RSASSA_PSS_SHA_256",
    RSASSA_PSS_SHA_384 = "RSASSA_PSS_SHA_384",
    RSASSA_PSS_SHA_512 = "RSASSA_PSS_SHA_512",
    RSASSA_PKCS1_V1_5_SHA_256 = "RSASSA_PKCS1_V1_5_SHA_256",
    RSASSA_PKCS1_V1_5_SHA_384 = "RSASSA_PKCS1_V1_5_SHA_384",
    RSASSA_PKCS1_V1_5_SHA_512 = "RSASSA_PKCS1_V1_5_SHA_512",
    ECDSA_SHA_256 = "ECDSA_SHA_256",
    ECDSA_SHA_384 = "ECDSA_SHA_384",
    ECDSA_SHA_512 = "ECDSA_SHA_512",
    SM2DSA = "SM2DSA",
    ML_DSA_SHAKE_256 = "ML_DSA_SHAKE_256",
    ED25519_SHA_512 = "ED25519_SHA_512",
    ED25519_PH_SHA_512 = "ED25519_PH_SHA_512",
}

M.XksKeyConfigurationType = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.KeyMetadata = {
    type = "structure",
    members = {
        AWSAccountId = {
            type = "string",
        },
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        Enabled = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        KeyUsage = {
            type = "string",
        },
        KeyState = {
            type = "string",
        },
        DeletionDate = {
            type = "timestamp",
        },
        ValidTo = {
            type = "timestamp",
        },
        Origin = {
            type = "string",
        },
        CustomKeyStoreId = {
            type = "string",
        },
        CloudHsmClusterId = {
            type = "string",
        },
        ExpirationModel = {
            type = "string",
        },
        KeyManager = {
            type = "string",
        },
        CustomerMasterKeySpec = {
            type = "string",
        },
        KeySpec = {
            type = "string",
        },
        EncryptionAlgorithms = {
            type = "list",
            member_type = "string",
        },
        SigningAlgorithms = {
            type = "list",
            member_type = "string",
        },
        KeyAgreementAlgorithms = {
            type = "list",
            member_type = "string",
        },
        MultiRegion = {
            type = "boolean",
        },
        MultiRegionConfiguration = {
            type = "structure",
        },
        PendingDeletionWindowInDays = {
            type = "number",
        },
        MacAlgorithms = {
            type = "list",
            member_type = "string",
        },
        XksKeyConfiguration = {
            type = "structure",
        },
        CurrentKeyMaterialId = {
            type = "string",
        },
    },
}

M.CreateKeyOutput = {
    type = "structure",
    members = {
        KeyMetadata = {
            type = "structure",
        },
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksKeyAlreadyInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksKeyInvalidConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksKeyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomKeyStoreHasCMKsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyConfigurationType = {
    type = "structure",
    members = {
        Connectivity = {
            type = "string",
        },
        AccessKeyId = {
            type = "string",
        },
        UriEndpoint = {
            type = "string",
        },
        UriPath = {
            type = "string",
        },
        VpcEndpointServiceName = {
            type = "string",
        },
        VpcEndpointServiceOwner = {
            type = "string",
        },
    },
}

M.CustomKeyStoresListEntry = {
    type = "structure",
    members = {
        CustomKeyStoreId = {
            type = "string",
        },
        CustomKeyStoreName = {
            type = "string",
        },
        CloudHsmClusterId = {
            type = "string",
        },
        TrustAnchorCertificate = {
            type = "string",
        },
        ConnectionState = {
            type = "string",
        },
        ConnectionErrorCode = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        CustomKeyStoreType = {
            type = "string",
        },
        XksProxyConfiguration = {
            type = "structure",
        },
    },
}

M.DataKeyPairSpec = {
    RSA_2048 = "RSA_2048",
    RSA_3072 = "RSA_3072",
    RSA_4096 = "RSA_4096",
    ECC_NIST_P256 = "ECC_NIST_P256",
    ECC_NIST_P384 = "ECC_NIST_P384",
    ECC_NIST_P521 = "ECC_NIST_P521",
    ECC_SECG_P256K1 = "ECC_SECG_P256K1",
    SM2 = "SM2",
    ECC_NIST_EDWARDS25519 = "ECC_NIST_EDWARDS25519",
}

M.DataKeySpec = {
    AES_256 = "AES_256",
    AES_128 = "AES_128",
}

M.DryRunModifierType = {
    IGNORE_CIPHERTEXT = "IGNORE_CIPHERTEXT",
}

M.KeyEncryptionMechanism = {
    RSAES_OAEP_SHA_256 = "RSAES_OAEP_SHA_256",
}

M.RecipientInfo = {
    type = "structure",
    members = {
        KeyEncryptionAlgorithm = {
            type = "string",
        },
        AttestationDocument = {
            type = "blob",
        },
    },
}

M.DecryptInput = {
    type = "structure",
    members = {
        CiphertextBlob = {
            type = "blob",
        },
        EncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        KeyId = {
            type = "string",
        },
        EncryptionAlgorithm = {
            type = "string",
        },
        Recipient = {
            type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
        DryRunModifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DecryptOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        Plaintext = {
            type = "blob",
        },
        EncryptionAlgorithm = {
            type = "string",
        },
        CiphertextForRecipient = {
            type = "blob",
        },
        KeyMaterialId = {
            type = "string",
        },
    },
}

M.IncorrectKeyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCiphertextException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKeyUsageException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KeyUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAliasInput = {
    type = "structure",
    members = {
        AliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAliasOutput = {
    type = "structure",
}

M.DeleteCustomKeyStoreInput = {
    type = "structure",
    members = {
        CustomKeyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomKeyStoreOutput = {
    type = "structure",
}

M.DeleteImportedKeyMaterialInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyMaterialId = {
            type = "string",
        },
    },
}

M.DeleteImportedKeyMaterialOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        KeyMaterialId = {
            type = "string",
        },
    },
}

M.DeriveSharedSecretInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyAgreementAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicKey = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        DryRun = {
            type = "boolean",
        },
        Recipient = {
            type = "structure",
        },
    },
}

M.DeriveSharedSecretOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        SharedSecret = {
            type = "blob",
        },
        CiphertextForRecipient = {
            type = "blob",
        },
        KeyAgreementAlgorithm = {
            type = "string",
        },
        KeyOrigin = {
            type = "string",
        },
    },
}

M.DescribeCustomKeyStoresInput = {
    type = "structure",
    members = {
        CustomKeyStoreId = {
            type = "string",
        },
        CustomKeyStoreName = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeCustomKeyStoresOutput = {
    type = "structure",
    members = {
        CustomKeyStores = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.InvalidMarkerException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeKeyInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeKeyOutput = {
    type = "structure",
    members = {
        KeyMetadata = {
            type = "structure",
        },
    },
}

M.DisableKeyInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableKeyOutput = {
    type = "structure",
}

M.DisableKeyRotationInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableKeyRotationOutput = {
    type = "structure",
}

M.DisconnectCustomKeyStoreInput = {
    type = "structure",
    members = {
        CustomKeyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisconnectCustomKeyStoreOutput = {
    type = "structure",
}

M.EnableKeyInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableKeyOutput = {
    type = "structure",
}

M.EnableKeyRotationInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RotationPeriodInDays = {
            type = "number",
        },
    },
}

M.EnableKeyRotationOutput = {
    type = "structure",
}

M.EncryptInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Plaintext = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        EncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        EncryptionAlgorithm = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.EncryptOutput = {
    type = "structure",
    members = {
        CiphertextBlob = {
            type = "blob",
        },
        KeyId = {
            type = "string",
        },
        EncryptionAlgorithm = {
            type = "string",
        },
    },
}

M.ExpiredImportTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GenerateDataKeyInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NumberOfBytes = {
            type = "number",
        },
        KeySpec = {
            type = "string",
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        Recipient = {
            type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.GenerateDataKeyOutput = {
    type = "structure",
    members = {
        CiphertextBlob = {
            type = "blob",
        },
        Plaintext = {
            type = "blob",
        },
        KeyId = {
            type = "string",
        },
        CiphertextForRecipient = {
            type = "blob",
        },
        KeyMaterialId = {
            type = "string",
        },
    },
}

M.GenerateDataKeyPairInput = {
    type = "structure",
    members = {
        EncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyPairSpec = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        Recipient = {
            type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.GenerateDataKeyPairOutput = {
    type = "structure",
    members = {
        PrivateKeyCiphertextBlob = {
            type = "blob",
        },
        PrivateKeyPlaintext = {
            type = "blob",
        },
        PublicKey = {
            type = "blob",
        },
        KeyId = {
            type = "string",
        },
        KeyPairSpec = {
            type = "string",
        },
        CiphertextForRecipient = {
            type = "blob",
        },
        KeyMaterialId = {
            type = "string",
        },
    },
}

M.GenerateDataKeyPairWithoutPlaintextInput = {
    type = "structure",
    members = {
        EncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyPairSpec = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.GenerateDataKeyPairWithoutPlaintextOutput = {
    type = "structure",
    members = {
        PrivateKeyCiphertextBlob = {
            type = "blob",
        },
        PublicKey = {
            type = "blob",
        },
        KeyId = {
            type = "string",
        },
        KeyPairSpec = {
            type = "string",
        },
        KeyMaterialId = {
            type = "string",
        },
    },
}

M.GenerateDataKeyWithoutPlaintextInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        KeySpec = {
            type = "string",
        },
        NumberOfBytes = {
            type = "number",
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.GenerateDataKeyWithoutPlaintextOutput = {
    type = "structure",
    members = {
        CiphertextBlob = {
            type = "blob",
        },
        KeyId = {
            type = "string",
        },
        KeyMaterialId = {
            type = "string",
        },
    },
}

M.GenerateMacInput = {
    type = "structure",
    members = {
        Message = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MacAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.GenerateMacOutput = {
    type = "structure",
    members = {
        Mac = {
            type = "blob",
        },
        MacAlgorithm = {
            type = "string",
        },
        KeyId = {
            type = "string",
        },
    },
}

M.GenerateRandomInput = {
    type = "structure",
    members = {
        NumberOfBytes = {
            type = "number",
        },
        CustomKeyStoreId = {
            type = "string",
        },
        Recipient = {
            type = "structure",
        },
    },
}

M.GenerateRandomOutput = {
    type = "structure",
    members = {
        Plaintext = {
            type = "blob",
        },
        CiphertextForRecipient = {
            type = "blob",
        },
    },
}

M.GetKeyLastUsageInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyLastUsageTrackingOperation = {
    Decrypt = "Decrypt",
    DeriveSharedSecret = "DeriveSharedSecret",
    Encrypt = "Encrypt",
    GenerateDataKey = "GenerateDataKey",
    GenerateDataKeyPair = "GenerateDataKeyPair",
    GenerateDataKeyPairWithoutPlaintext = "GenerateDataKeyPairWithoutPlaintext",
    GenerateDataKeyWithoutPlaintext = "GenerateDataKeyWithoutPlaintext",
    GenerateMac = "GenerateMac",
    ReEncrypt = "ReEncrypt",
    Sign = "Sign",
    Verify = "Verify",
    VerifyMac = "VerifyMac",
}

M.KeyLastUsageData = {
    type = "structure",
    members = {
        Operation = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
        CloudTrailEventId = {
            type = "string",
        },
        KmsRequestId = {
            type = "string",
        },
    },
}

M.GetKeyLastUsageOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        KeyLastUsage = {
            type = "structure",
        },
        TrackingStartDate = {
            type = "timestamp",
        },
        KeyCreationDate = {
            type = "timestamp",
        },
    },
}

M.GetKeyPolicyInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
        },
    },
}

M.GetKeyPolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
        PolicyName = {
            type = "string",
        },
    },
}

M.GetKeyRotationStatusInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetKeyRotationStatusOutput = {
    type = "structure",
    members = {
        KeyRotationEnabled = {
            type = "boolean",
        },
        KeyId = {
            type = "string",
        },
        RotationPeriodInDays = {
            type = "number",
        },
        NextRotationDate = {
            type = "timestamp",
        },
        OnDemandRotationStartDate = {
            type = "timestamp",
        },
    },
}

M.WrappingKeySpec = {
    RSA_2048 = "RSA_2048",
    RSA_3072 = "RSA_3072",
    RSA_4096 = "RSA_4096",
    SM2 = "SM2",
}

M.GetParametersForImportInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappingAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappingKeySpec = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetParametersForImportOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        ImportToken = {
            type = "blob",
        },
        PublicKey = {
            type = "blob",
        },
        ParametersValidTo = {
            type = "timestamp",
        },
    },
}

M.GetPublicKeyInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetPublicKeyOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        PublicKey = {
            type = "blob",
        },
        CustomerMasterKeySpec = {
            type = "string",
        },
        KeySpec = {
            type = "string",
        },
        KeyUsage = {
            type = "string",
        },
        EncryptionAlgorithms = {
            type = "list",
            member_type = "string",
        },
        SigningAlgorithms = {
            type = "list",
            member_type = "string",
        },
        KeyAgreementAlgorithms = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GrantListEntry = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        GrantId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        GranteePrincipal = {
            type = "string",
        },
        RetiringPrincipal = {
            type = "string",
        },
        IssuingAccount = {
            type = "string",
        },
        Operations = {
            type = "list",
            member_type = "string",
        },
        Constraints = {
            type = "structure",
        },
    },
}

M.ImportType = {
    NEW_KEY_MATERIAL = "NEW_KEY_MATERIAL",
    EXISTING_KEY_MATERIAL = "EXISTING_KEY_MATERIAL",
}

M.ImportKeyMaterialInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImportToken = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        EncryptedKeyMaterial = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        ValidTo = {
            type = "timestamp",
        },
        ExpirationModel = {
            type = "string",
        },
        ImportType = {
            type = "string",
        },
        KeyMaterialDescription = {
            type = "string",
        },
        KeyMaterialId = {
            type = "string",
        },
    },
}

M.ImportKeyMaterialOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        KeyMaterialId = {
            type = "string",
        },
    },
}

M.IncorrectKeyMaterialException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidImportTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImportState = {
    IMPORTED = "IMPORTED",
    PENDING_IMPORT = "PENDING_IMPORT",
}

M.IncludeKeyMaterial = {
    ALL_KEY_MATERIAL = "ALL_KEY_MATERIAL",
    ROTATIONS_ONLY = "ROTATIONS_ONLY",
}

M.InvalidGrantIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KeyListEntry = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        KeyArn = {
            type = "string",
        },
    },
}

M.KeyMaterialState = {
    NON_CURRENT = "NON_CURRENT",
    CURRENT = "CURRENT",
    PENDING_ROTATION = "PENDING_ROTATION",
    PENDING_MULTI_REGION_IMPORT_AND_ROTATION = "PENDING_MULTI_REGION_IMPORT_AND_ROTATION",
}

M.KMSInvalidMacException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInvalidSignatureException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListAliasesInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListAliasesOutput = {
    type = "structure",
    members = {
        Aliases = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.ListGrantsInput = {
    type = "structure",
    members = {
        Limit = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantId = {
            type = "string",
        },
        GranteePrincipal = {
            type = "string",
        },
    },
}

M.ListGrantsOutput = {
    type = "structure",
    members = {
        Grants = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.ListKeyPoliciesInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListKeyPoliciesOutput = {
    type = "structure",
    members = {
        PolicyNames = {
            type = "list",
            member_type = "string",
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.ListKeyRotationsInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeKeyMaterial = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.RotationType = {
    AUTOMATIC = "AUTOMATIC",
    ON_DEMAND = "ON_DEMAND",
}

M.RotationsListEntry = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        KeyMaterialId = {
            type = "string",
        },
        KeyMaterialDescription = {
            type = "string",
        },
        ImportState = {
            type = "string",
        },
        KeyMaterialState = {
            type = "string",
        },
        ExpirationModel = {
            type = "string",
        },
        ValidTo = {
            type = "timestamp",
        },
        RotationDate = {
            type = "timestamp",
        },
        RotationType = {
            type = "string",
        },
    },
}

M.ListKeyRotationsOutput = {
    type = "structure",
    members = {
        Rotations = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.ListKeysInput = {
    type = "structure",
    members = {
        Limit = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListKeysOutput = {
    type = "structure",
    members = {
        Keys = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.ListResourceTagsInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListResourceTagsOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.ListRetirableGrantsInput = {
    type = "structure",
    members = {
        Limit = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
        RetiringPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRetirableGrantsOutput = {
    type = "structure",
    members = {
        Grants = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.MessageType = {
    RAW = "RAW",
    DIGEST = "DIGEST",
    EXTERNAL_MU = "EXTERNAL_MU",
}

M.PutKeyPolicyInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BypassPolicyLockoutSafetyCheck = {
            type = "boolean",
        },
    },
}

M.PutKeyPolicyOutput = {
    type = "structure",
}

M.ReEncryptInput = {
    type = "structure",
    members = {
        CiphertextBlob = {
            type = "blob",
        },
        SourceEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SourceKeyId = {
            type = "string",
        },
        DestinationKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SourceEncryptionAlgorithm = {
            type = "string",
        },
        DestinationEncryptionAlgorithm = {
            type = "string",
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        DryRun = {
            type = "boolean",
        },
        DryRunModifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ReEncryptOutput = {
    type = "structure",
    members = {
        CiphertextBlob = {
            type = "blob",
        },
        SourceKeyId = {
            type = "string",
        },
        KeyId = {
            type = "string",
        },
        SourceEncryptionAlgorithm = {
            type = "string",
        },
        DestinationEncryptionAlgorithm = {
            type = "string",
        },
        SourceKeyMaterialId = {
            type = "string",
        },
        DestinationKeyMaterialId = {
            type = "string",
        },
    },
}

M.ReplicateKeyInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicaRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
        },
        BypassPolicyLockoutSafetyCheck = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ReplicateKeyOutput = {
    type = "structure",
    members = {
        ReplicaKeyMetadata = {
            type = "structure",
        },
        ReplicaPolicy = {
            type = "string",
        },
        ReplicaTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RetireGrantInput = {
    type = "structure",
    members = {
        GrantToken = {
            type = "string",
        },
        KeyId = {
            type = "string",
        },
        GrantId = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.RetireGrantOutput = {
    type = "structure",
}

M.RevokeGrantInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.RevokeGrantOutput = {
    type = "structure",
}

M.RotateKeyOnDemandInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RotateKeyOnDemandOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
    },
}

M.ScheduleKeyDeletionInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PendingWindowInDays = {
            type = "number",
        },
    },
}

M.ScheduleKeyDeletionOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        DeletionDate = {
            type = "timestamp",
        },
        KeyState = {
            type = "string",
        },
        PendingWindowInDays = {
            type = "number",
        },
    },
}

M.SignInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        MessageType = {
            type = "string",
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        SigningAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.SignOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        Signature = {
            type = "blob",
        },
        SigningAlgorithm = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAliasInput = {
    type = "structure",
    members = {
        AliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAliasOutput = {
    type = "structure",
}

M.UpdateCustomKeyStoreInput = {
    type = "structure",
    members = {
        CustomKeyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewCustomKeyStoreName = {
            type = "string",
        },
        KeyStorePassword = {
            type = "string",
        },
        CloudHsmClusterId = {
            type = "string",
        },
        XksProxyUriEndpoint = {
            type = "string",
        },
        XksProxyUriPath = {
            type = "string",
        },
        XksProxyVpcEndpointServiceName = {
            type = "string",
        },
        XksProxyVpcEndpointServiceOwner = {
            type = "string",
        },
        XksProxyAuthenticationCredential = {
            type = "structure",
        },
        XksProxyConnectivity = {
            type = "string",
        },
    },
}

M.UpdateCustomKeyStoreOutput = {
    type = "structure",
}

M.UpdateKeyDescriptionInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateKeyDescriptionOutput = {
    type = "structure",
}

M.UpdatePrimaryRegionInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePrimaryRegionOutput = {
    type = "structure",
}

M.VerifyInput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        MessageType = {
            type = "string",
        },
        Signature = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        SigningAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.VerifyOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        SignatureValid = {
            type = "boolean",
        },
        SigningAlgorithm = {
            type = "string",
        },
    },
}

M.VerifyMacInput = {
    type = "structure",
    members = {
        Message = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MacAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mac = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        GrantTokens = {
            type = "list",
            member_type = "string",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.VerifyMacOutput = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        MacValid = {
            type = "boolean",
        },
        MacAlgorithm = {
            type = "string",
        },
    },
}

return M
