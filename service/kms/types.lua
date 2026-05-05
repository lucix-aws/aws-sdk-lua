local M = {}

M.AlgorithmSpec = {
    RSAES_PKCS1_V1_5 = "RSAES_PKCS1_V1_5",
    RSAES_OAEP_SHA_1 = "RSAES_OAEP_SHA_1",
    RSAES_OAEP_SHA_256 = "RSAES_OAEP_SHA_256",
    RSA_AES_KEY_WRAP_SHA_1 = "RSA_AES_KEY_WRAP_SHA_1",
    RSA_AES_KEY_WRAP_SHA_256 = "RSA_AES_KEY_WRAP_SHA_256",
    SM2PKE = "SM2PKE",
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

M.CustomKeyStoreType = {
    AWS_CLOUDHSM = "AWS_CLOUDHSM",
    EXTERNAL_KEY_STORE = "EXTERNAL_KEY_STORE",
}

M.XksProxyConnectivityType = {
    PUBLIC_ENDPOINT = "PUBLIC_ENDPOINT",
    VPC_ENDPOINT_SERVICE = "VPC_ENDPOINT_SERVICE",
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

M.WrappingKeySpec = {
    RSA_2048 = "RSA_2048",
    RSA_3072 = "RSA_3072",
    RSA_4096 = "RSA_4096",
    SM2 = "SM2",
}

M.ImportType = {
    NEW_KEY_MATERIAL = "NEW_KEY_MATERIAL",
    EXISTING_KEY_MATERIAL = "EXISTING_KEY_MATERIAL",
}

M.ImportState = {
    IMPORTED = "IMPORTED",
    PENDING_IMPORT = "PENDING_IMPORT",
}

M.IncludeKeyMaterial = {
    ALL_KEY_MATERIAL = "ALL_KEY_MATERIAL",
    ROTATIONS_ONLY = "ROTATIONS_ONLY",
}

M.KeyMaterialState = {
    NON_CURRENT = "NON_CURRENT",
    CURRENT = "CURRENT",
    PENDING_ROTATION = "PENDING_ROTATION",
    PENDING_MULTI_REGION_IMPORT_AND_ROTATION = "PENDING_MULTI_REGION_IMPORT_AND_ROTATION",
}

M.RotationType = {
    AUTOMATIC = "AUTOMATIC",
    ON_DEMAND = "ON_DEMAND",
}

M.MessageType = {
    RAW = "RAW",
    DIGEST = "DIGEST",
    EXTERNAL_MU = "EXTERNAL_MU",
}

return M
