local M = {}

M.MajorKeyDerivationMode = {
    EMV_OPTION_A = "EMV_OPTION_A",
    EMV_OPTION_B = "EMV_OPTION_B",
}

M.SymmetricKeyAlgorithm = {
    TDES_2KEY = "TDES_2KEY",
    TDES_3KEY = "TDES_3KEY",
    AES_128 = "AES_128",
    AES_192 = "AES_192",
    AES_256 = "AES_256",
    HMAC_SHA256 = "HMAC_SHA256",
    HMAC_SHA384 = "HMAC_SHA384",
    HMAC_SHA512 = "HMAC_SHA512",
    HMAC_SHA224 = "HMAC_SHA224",
}

M.PaddingType = {
    PKCS1 = "PKCS1",
    OAEP_SHA1 = "OAEP_SHA1",
    OAEP_SHA256 = "OAEP_SHA256",
    OAEP_SHA512 = "OAEP_SHA512",
}

M.DukptDerivationType = {
    TDES_2KEY = "TDES_2KEY",
    TDES_3KEY = "TDES_3KEY",
    AES_128 = "AES_128",
    AES_192 = "AES_192",
    AES_256 = "AES_256",
}

M.DukptKeyVariant = {
    BIDIRECTIONAL = "BIDIRECTIONAL",
    REQUEST = "REQUEST",
    RESPONSE = "RESPONSE",
}

M.DukptEncryptionMode = {
    ECB = "ECB",
    CBC = "CBC",
}

M.EmvMajorKeyDerivationMode = {
    EMV_OPTION_A = "EMV_OPTION_A",
    EMV_OPTION_B = "EMV_OPTION_B",
}

M.EmvEncryptionMode = {
    ECB = "ECB",
    CBC = "CBC",
}

M.EncryptionMode = {
    ECB = "ECB",
    CBC = "CBC",
    CFB = "CFB",
    CFB1 = "CFB1",
    CFB8 = "CFB8",
    CFB64 = "CFB64",
    CFB128 = "CFB128",
    OFB = "OFB",
}

M.KeyCheckValueAlgorithm = {
    CMAC = "CMAC",
    ANSI_X9_24 = "ANSI_X9_24",
    HMAC = "HMAC",
    SHA_1 = "SHA_1",
}

M.KeyDerivationFunction = {
    NIST_SP800 = "NIST_SP800",
    ANSI_X963 = "ANSI_X963",
}

M.KeyDerivationHashAlgorithm = {
    SHA_256 = "SHA_256",
    SHA_384 = "SHA_384",
    SHA_512 = "SHA_512",
}

M.PinBlockLengthPosition = {
    NONE = "NONE",
    FRONT_OF_PIN_BLOCK = "FRONT_OF_PIN_BLOCK",
}

M.PinBlockPaddingType = {
    NO_PADDING = "NO_PADDING",
    ISO_IEC_7816_4 = "ISO_IEC_7816_4",
}

M.RandomKeySendVariantMask = {
    VARIANT_MASK_82C0 = "VARIANT_MASK_82C0",
    VARIANT_MASK_82 = "VARIANT_MASK_82",
}

M.MacAlgorithm = {
    ISO9797_ALGORITHM1 = "ISO9797_ALGORITHM1",
    ISO9797_ALGORITHM3 = "ISO9797_ALGORITHM3",
    CMAC = "CMAC",
    HMAC = "HMAC",
    HMAC_SHA224 = "HMAC_SHA224",
    HMAC_SHA256 = "HMAC_SHA256",
    HMAC_SHA384 = "HMAC_SHA384",
    HMAC_SHA512 = "HMAC_SHA512",
    AS2805_4_1 = "AS2805_4_1",
}

M.SessionKeyDerivationMode = {
    EMV_COMMON_SESSION_KEY = "EMV_COMMON_SESSION_KEY",
    EMV2000 = "EMV2000",
    AMEX = "AMEX",
    MASTERCARD_SESSION_KEY = "MASTERCARD_SESSION_KEY",
    VISA = "VISA",
}

M.PinBlockFormatForEmvPinChange = {
    ISO_FORMAT_0 = "ISO_FORMAT_0",
    ISO_FORMAT_1 = "ISO_FORMAT_1",
    ISO_FORMAT_3 = "ISO_FORMAT_3",
}

M.PinBlockFormatForPinData = {
    ISO_FORMAT_0 = "ISO_FORMAT_0",
    ISO_FORMAT_1 = "ISO_FORMAT_1",
    ISO_FORMAT_3 = "ISO_FORMAT_3",
    ISO_FORMAT_4 = "ISO_FORMAT_4",
}

M.WrappedKeyMaterialFormat = {
    KEY_CRYPTOGRAM = "KEY_CRYPTOGRAM",
    TR31_KEY_BLOCK = "TR31_KEY_BLOCK",
    TR34_KEY_BLOCK = "TR34_KEY_BLOCK",
}

M.VerificationFailedReason = {
    INVALID_MAC = "INVALID_MAC",
    INVALID_PIN = "INVALID_PIN",
    INVALID_VALIDATION_DATA = "INVALID_VALIDATION_DATA",
    INVALID_AUTH_REQUEST_CRYPTOGRAM = "INVALID_AUTH_REQUEST_CRYPTOGRAM",
}

return M
