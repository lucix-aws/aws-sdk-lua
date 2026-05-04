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
    id = "AliasListEntry",
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
    id = "AlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelKeyDeletionInput = {
    type = "structure",
    id = "CancelKeyDeletionInput",
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
    id = "CancelKeyDeletionOutput",
    members = {
        KeyId = {
            type = "string",
        },
    },
}

M.DependencyTimeoutException = {
    type = "structure",
    id = "DependencyTimeoutException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidArnException = {
    type = "structure",
    id = "InvalidArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInternalException = {
    type = "structure",
    id = "KMSInternalException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInvalidStateException = {
    type = "structure",
    id = "KMSInvalidStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudHsmClusterInUseException = {
    type = "structure",
    id = "CloudHsmClusterInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudHsmClusterInvalidConfigurationException = {
    type = "structure",
    id = "CloudHsmClusterInvalidConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudHsmClusterNotActiveException = {
    type = "structure",
    id = "CloudHsmClusterNotActiveException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudHsmClusterNotFoundException = {
    type = "structure",
    id = "CloudHsmClusterNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudHsmClusterNotRelatedException = {
    type = "structure",
    id = "CloudHsmClusterNotRelatedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConnectCustomKeyStoreInput = {
    type = "structure",
    id = "ConnectCustomKeyStoreInput",
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
    id = "ConnectCustomKeyStoreOutput",
}

M.CustomKeyStoreInvalidStateException = {
    type = "structure",
    id = "CustomKeyStoreInvalidStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomKeyStoreNotFoundException = {
    type = "structure",
    id = "CustomKeyStoreNotFoundException",
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
    id = "CreateAliasInput",
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
    id = "CreateAliasOutput",
}

M.InvalidAliasNameException = {
    type = "structure",
    id = "InvalidAliasNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
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
    id = "XksProxyAuthenticationCredentialType",
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
    id = "CreateCustomKeyStoreInput",
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
        XksProxyAuthenticationCredential = M.XksProxyAuthenticationCredentialType,
        XksProxyConnectivity = {
            type = "string",
        },
    },
}

M.CreateCustomKeyStoreOutput = {
    type = "structure",
    id = "CreateCustomKeyStoreOutput",
    members = {
        CustomKeyStoreId = {
            type = "string",
        },
    },
}

M.CustomKeyStoreNameInUseException = {
    type = "structure",
    id = "CustomKeyStoreNameInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IncorrectTrustAnchorException = {
    type = "structure",
    id = "IncorrectTrustAnchorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyIncorrectAuthenticationCredentialException = {
    type = "structure",
    id = "XksProxyIncorrectAuthenticationCredentialException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyInvalidConfigurationException = {
    type = "structure",
    id = "XksProxyInvalidConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyInvalidResponseException = {
    type = "structure",
    id = "XksProxyInvalidResponseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyUriEndpointInUseException = {
    type = "structure",
    id = "XksProxyUriEndpointInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyUriInUseException = {
    type = "structure",
    id = "XksProxyUriInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyUriUnreachableException = {
    type = "structure",
    id = "XksProxyUriUnreachableException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyVpcEndpointServiceInUseException = {
    type = "structure",
    id = "XksProxyVpcEndpointServiceInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyVpcEndpointServiceInvalidConfigurationException = {
    type = "structure",
    id = "XksProxyVpcEndpointServiceInvalidConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyVpcEndpointServiceNotFoundException = {
    type = "structure",
    id = "XksProxyVpcEndpointServiceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GrantConstraints = {
    type = "structure",
    id = "GrantConstraints",
    members = {
        EncryptionContextSubset = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EncryptionContextEquals = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateGrantInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Constraints = M.GrantConstraints,
        GrantTokens = {
            type = "list",
            member = { type = "string" },
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
    id = "CreateGrantOutput",
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
    id = "DisabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DryRunOperationException = {
    type = "structure",
    id = "DryRunOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidGrantTokenException = {
    type = "structure",
    id = "InvalidGrantTokenException",
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
    id = "Tag",
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
    id = "CreateKeyInput",
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
            traits = {
                default = false,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
    id = "MultiRegionKey",
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
    id = "MultiRegionConfiguration",
    members = {
        MultiRegionKeyType = {
            type = "string",
        },
        PrimaryKey = M.MultiRegionKey,
        ReplicaKeys = {
            type = "list",
            member = M.MultiRegionKey,
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
    id = "XksKeyConfigurationType",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.KeyMetadata = {
    type = "structure",
    id = "KeyMetadata",
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
            traits = {
                default = false,
            },
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
            member = { type = "string" },
        },
        SigningAlgorithms = {
            type = "list",
            member = { type = "string" },
        },
        KeyAgreementAlgorithms = {
            type = "list",
            member = { type = "string" },
        },
        MultiRegion = {
            type = "boolean",
        },
        MultiRegionConfiguration = M.MultiRegionConfiguration,
        PendingDeletionWindowInDays = {
            type = "integer",
        },
        MacAlgorithms = {
            type = "list",
            member = { type = "string" },
        },
        XksKeyConfiguration = M.XksKeyConfigurationType,
        CurrentKeyMaterialId = {
            type = "string",
        },
    },
}

M.CreateKeyOutput = {
    type = "structure",
    id = "CreateKeyOutput",
    members = {
        KeyMetadata = M.KeyMetadata,
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    id = "MalformedPolicyDocumentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagException = {
    type = "structure",
    id = "TagException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    id = "UnsupportedOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksKeyAlreadyInUseException = {
    type = "structure",
    id = "XksKeyAlreadyInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksKeyInvalidConfigurationException = {
    type = "structure",
    id = "XksKeyInvalidConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksKeyNotFoundException = {
    type = "structure",
    id = "XksKeyNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomKeyStoreHasCMKsException = {
    type = "structure",
    id = "CustomKeyStoreHasCMKsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XksProxyConfigurationType = {
    type = "structure",
    id = "XksProxyConfigurationType",
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
    id = "CustomKeyStoresListEntry",
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
        XksProxyConfiguration = M.XksProxyConfigurationType,
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
    id = "RecipientInfo",
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
    id = "DecryptInput",
    members = {
        CiphertextBlob = {
            type = "blob",
        },
        EncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        GrantTokens = {
            type = "list",
            member = { type = "string" },
        },
        KeyId = {
            type = "string",
        },
        EncryptionAlgorithm = {
            type = "string",
        },
        Recipient = M.RecipientInfo,
        DryRun = {
            type = "boolean",
        },
        DryRunModifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DecryptOutput = {
    type = "structure",
    id = "DecryptOutput",
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
    id = "IncorrectKeyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCiphertextException = {
    type = "structure",
    id = "InvalidCiphertextException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKeyUsageException = {
    type = "structure",
    id = "InvalidKeyUsageException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KeyUnavailableException = {
    type = "structure",
    id = "KeyUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAliasInput = {
    type = "structure",
    id = "DeleteAliasInput",
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
    id = "DeleteAliasOutput",
}

M.DeleteCustomKeyStoreInput = {
    type = "structure",
    id = "DeleteCustomKeyStoreInput",
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
    id = "DeleteCustomKeyStoreOutput",
}

M.DeleteImportedKeyMaterialInput = {
    type = "structure",
    id = "DeleteImportedKeyMaterialInput",
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
    id = "DeleteImportedKeyMaterialOutput",
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
    id = "DeriveSharedSecretInput",
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
            member = { type = "string" },
        },
        DryRun = {
            type = "boolean",
        },
        Recipient = M.RecipientInfo,
    },
}

M.DeriveSharedSecretOutput = {
    type = "structure",
    id = "DeriveSharedSecretOutput",
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
    id = "DescribeCustomKeyStoresInput",
    members = {
        CustomKeyStoreId = {
            type = "string",
        },
        CustomKeyStoreName = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeCustomKeyStoresOutput = {
    type = "structure",
    id = "DescribeCustomKeyStoresOutput",
    members = {
        CustomKeyStores = {
            type = "list",
            member = M.CustomKeyStoresListEntry,
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.InvalidMarkerException = {
    type = "structure",
    id = "InvalidMarkerException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeKeyInput = {
    type = "structure",
    id = "DescribeKeyInput",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantTokens = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeKeyOutput = {
    type = "structure",
    id = "DescribeKeyOutput",
    members = {
        KeyMetadata = M.KeyMetadata,
    },
}

M.DisableKeyInput = {
    type = "structure",
    id = "DisableKeyInput",
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
    id = "DisableKeyOutput",
}

M.DisableKeyRotationInput = {
    type = "structure",
    id = "DisableKeyRotationInput",
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
    id = "DisableKeyRotationOutput",
}

M.DisconnectCustomKeyStoreInput = {
    type = "structure",
    id = "DisconnectCustomKeyStoreInput",
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
    id = "DisconnectCustomKeyStoreOutput",
}

M.EnableKeyInput = {
    type = "structure",
    id = "EnableKeyInput",
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
    id = "EnableKeyOutput",
}

M.EnableKeyRotationInput = {
    type = "structure",
    id = "EnableKeyRotationInput",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RotationPeriodInDays = {
            type = "integer",
        },
    },
}

M.EnableKeyRotationOutput = {
    type = "structure",
    id = "EnableKeyRotationOutput",
}

M.EncryptInput = {
    type = "structure",
    id = "EncryptInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        GrantTokens = {
            type = "list",
            member = { type = "string" },
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
    id = "EncryptOutput",
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
    id = "ExpiredImportTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GenerateDataKeyInput = {
    type = "structure",
    id = "GenerateDataKeyInput",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NumberOfBytes = {
            type = "integer",
        },
        KeySpec = {
            type = "string",
        },
        GrantTokens = {
            type = "list",
            member = { type = "string" },
        },
        Recipient = M.RecipientInfo,
        DryRun = {
            type = "boolean",
        },
    },
}

M.GenerateDataKeyOutput = {
    type = "structure",
    id = "GenerateDataKeyOutput",
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
    id = "GenerateDataKeyPairInput",
    members = {
        EncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
        },
        Recipient = M.RecipientInfo,
        DryRun = {
            type = "boolean",
        },
    },
}

M.GenerateDataKeyPairOutput = {
    type = "structure",
    id = "GenerateDataKeyPairOutput",
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
    id = "GenerateDataKeyPairWithoutPlaintextInput",
    members = {
        EncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.GenerateDataKeyPairWithoutPlaintextOutput = {
    type = "structure",
    id = "GenerateDataKeyPairWithoutPlaintextOutput",
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
    id = "GenerateDataKeyWithoutPlaintextInput",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        KeySpec = {
            type = "string",
        },
        NumberOfBytes = {
            type = "integer",
        },
        GrantTokens = {
            type = "list",
            member = { type = "string" },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.GenerateDataKeyWithoutPlaintextOutput = {
    type = "structure",
    id = "GenerateDataKeyWithoutPlaintextOutput",
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
    id = "GenerateMacInput",
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
            member = { type = "string" },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.GenerateMacOutput = {
    type = "structure",
    id = "GenerateMacOutput",
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
    id = "GenerateRandomInput",
    members = {
        NumberOfBytes = {
            type = "integer",
        },
        CustomKeyStoreId = {
            type = "string",
        },
        Recipient = M.RecipientInfo,
    },
}

M.GenerateRandomOutput = {
    type = "structure",
    id = "GenerateRandomOutput",
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
    id = "GetKeyLastUsageInput",
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
    id = "KeyLastUsageData",
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
    id = "GetKeyLastUsageOutput",
    members = {
        KeyId = {
            type = "string",
        },
        KeyLastUsage = M.KeyLastUsageData,
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
    id = "GetKeyPolicyInput",
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
    id = "GetKeyPolicyOutput",
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
    id = "GetKeyRotationStatusInput",
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
    id = "GetKeyRotationStatusOutput",
    members = {
        KeyRotationEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        KeyId = {
            type = "string",
        },
        RotationPeriodInDays = {
            type = "integer",
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
    id = "GetParametersForImportInput",
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
    id = "GetParametersForImportOutput",
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
    id = "GetPublicKeyInput",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantTokens = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetPublicKeyOutput = {
    type = "structure",
    id = "GetPublicKeyOutput",
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
            member = { type = "string" },
        },
        SigningAlgorithms = {
            type = "list",
            member = { type = "string" },
        },
        KeyAgreementAlgorithms = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GrantListEntry = {
    type = "structure",
    id = "GrantListEntry",
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
            member = { type = "string" },
        },
        Constraints = M.GrantConstraints,
    },
}

M.ImportType = {
    NEW_KEY_MATERIAL = "NEW_KEY_MATERIAL",
    EXISTING_KEY_MATERIAL = "EXISTING_KEY_MATERIAL",
}

M.ImportKeyMaterialInput = {
    type = "structure",
    id = "ImportKeyMaterialInput",
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
    id = "ImportKeyMaterialOutput",
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
    id = "IncorrectKeyMaterialException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidImportTokenException = {
    type = "structure",
    id = "InvalidImportTokenException",
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
    id = "InvalidGrantIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KeyListEntry = {
    type = "structure",
    id = "KeyListEntry",
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
    id = "KMSInvalidMacException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInvalidSignatureException = {
    type = "structure",
    id = "KMSInvalidSignatureException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListAliasesInput = {
    type = "structure",
    id = "ListAliasesInput",
    members = {
        KeyId = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListAliasesOutput = {
    type = "structure",
    id = "ListAliasesOutput",
    members = {
        Aliases = {
            type = "list",
            member = M.AliasListEntry,
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListGrantsInput = {
    type = "structure",
    id = "ListGrantsInput",
    members = {
        Limit = {
            type = "integer",
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
    id = "ListGrantsOutput",
    members = {
        Grants = {
            type = "list",
            member = M.GrantListEntry,
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListKeyPoliciesInput = {
    type = "structure",
    id = "ListKeyPoliciesInput",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListKeyPoliciesOutput = {
    type = "structure",
    id = "ListKeyPoliciesOutput",
    members = {
        PolicyNames = {
            type = "list",
            member = { type = "string" },
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListKeyRotationsInput = {
    type = "structure",
    id = "ListKeyRotationsInput",
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
            type = "integer",
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
    id = "RotationsListEntry",
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
    id = "ListKeyRotationsOutput",
    members = {
        Rotations = {
            type = "list",
            member = M.RotationsListEntry,
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListKeysInput = {
    type = "structure",
    id = "ListKeysInput",
    members = {
        Limit = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListKeysOutput = {
    type = "structure",
    id = "ListKeysOutput",
    members = {
        Keys = {
            type = "list",
            member = M.KeyListEntry,
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListResourceTagsInput = {
    type = "structure",
    id = "ListResourceTagsInput",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListResourceTagsOutput = {
    type = "structure",
    id = "ListResourceTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListRetirableGrantsInput = {
    type = "structure",
    id = "ListRetirableGrantsInput",
    members = {
        Limit = {
            type = "integer",
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
    id = "ListRetirableGrantsOutput",
    members = {
        Grants = {
            type = "list",
            member = M.GrantListEntry,
        },
        NextMarker = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "PutKeyPolicyInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.PutKeyPolicyOutput = {
    type = "structure",
    id = "PutKeyPolicyOutput",
}

M.ReEncryptInput = {
    type = "structure",
    id = "ReEncryptInput",
    members = {
        CiphertextBlob = {
            type = "blob",
        },
        SourceEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        SourceEncryptionAlgorithm = {
            type = "string",
        },
        DestinationEncryptionAlgorithm = {
            type = "string",
        },
        GrantTokens = {
            type = "list",
            member = { type = "string" },
        },
        DryRun = {
            type = "boolean",
        },
        DryRunModifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReEncryptOutput = {
    type = "structure",
    id = "ReEncryptOutput",
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
    id = "ReplicateKeyInput",
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
            traits = {
                default = false,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ReplicateKeyOutput = {
    type = "structure",
    id = "ReplicateKeyOutput",
    members = {
        ReplicaKeyMetadata = M.KeyMetadata,
        ReplicaPolicy = {
            type = "string",
        },
        ReplicaTags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.RetireGrantInput = {
    type = "structure",
    id = "RetireGrantInput",
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
    id = "RetireGrantOutput",
}

M.RevokeGrantInput = {
    type = "structure",
    id = "RevokeGrantInput",
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
    id = "RevokeGrantOutput",
}

M.RotateKeyOnDemandInput = {
    type = "structure",
    id = "RotateKeyOnDemandInput",
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
    id = "RotateKeyOnDemandOutput",
    members = {
        KeyId = {
            type = "string",
        },
    },
}

M.ScheduleKeyDeletionInput = {
    type = "structure",
    id = "ScheduleKeyDeletionInput",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PendingWindowInDays = {
            type = "integer",
        },
    },
}

M.ScheduleKeyDeletionOutput = {
    type = "structure",
    id = "ScheduleKeyDeletionOutput",
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
            type = "integer",
        },
    },
}

M.SignInput = {
    type = "structure",
    id = "SignInput",
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
            member = { type = "string" },
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
    id = "SignOutput",
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
    id = "TagResourceInput",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateAliasInput = {
    type = "structure",
    id = "UpdateAliasInput",
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
    id = "UpdateAliasOutput",
}

M.UpdateCustomKeyStoreInput = {
    type = "structure",
    id = "UpdateCustomKeyStoreInput",
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
        XksProxyAuthenticationCredential = M.XksProxyAuthenticationCredentialType,
        XksProxyConnectivity = {
            type = "string",
        },
    },
}

M.UpdateCustomKeyStoreOutput = {
    type = "structure",
    id = "UpdateCustomKeyStoreOutput",
}

M.UpdateKeyDescriptionInput = {
    type = "structure",
    id = "UpdateKeyDescriptionInput",
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
    id = "UpdateKeyDescriptionOutput",
}

M.UpdatePrimaryRegionInput = {
    type = "structure",
    id = "UpdatePrimaryRegionInput",
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
    id = "UpdatePrimaryRegionOutput",
}

M.VerifyInput = {
    type = "structure",
    id = "VerifyInput",
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
            member = { type = "string" },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.VerifyOutput = {
    type = "structure",
    id = "VerifyOutput",
    members = {
        KeyId = {
            type = "string",
        },
        SignatureValid = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SigningAlgorithm = {
            type = "string",
        },
    },
}

M.VerifyMacInput = {
    type = "structure",
    id = "VerifyMacInput",
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
            member = { type = "string" },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.VerifyMacOutput = {
    type = "structure",
    id = "VerifyMacOutput",
    members = {
        KeyId = {
            type = "string",
        },
        MacValid = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        MacAlgorithm = {
            type = "string",
        },
    },
}

return M
