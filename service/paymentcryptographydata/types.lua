local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CurrentPinAttributes = {
    type = "structure",
    members = {
        CurrentPinPekIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentEncryptedPinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MajorKeyDerivationMode = {
    EMV_OPTION_A = "EMV_OPTION_A",
    EMV_OPTION_B = "EMV_OPTION_B",
}

M.AmexAttributes = {
    type = "structure",
    members = {
        MajorKeyDerivationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationTransactionCounter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizationRequestKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentPinAttributes = {
            type = "structure",
        },
    },
}

M.AmexCardSecurityCodeVersion1 = {
    type = "structure",
    members = {
        CardExpiryDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AmexCardSecurityCodeVersion2 = {
    type = "structure",
    members = {
        CardExpiryDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
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

M.KekValidationRequest = {
    type = "structure",
    members = {
        DeriveKeyAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KekValidationResponse = {
    type = "structure",
    members = {
        RandomKeySend = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.As2805KekValidationType = {
    type = "union",
    members = {
        KekValidationRequest = {
            type = "structure",
        },
        KekValidationResponse = {
            type = "structure",
        },
    },
}

M.As2805PekDerivationAttributes = {
    type = "structure",
    members = {
        SystemTraceAuditNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransactionAmount = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PaddingType = {
    PKCS1 = "PKCS1",
    OAEP_SHA1 = "OAEP_SHA1",
    OAEP_SHA256 = "OAEP_SHA256",
    OAEP_SHA512 = "OAEP_SHA512",
}

M.AsymmetricEncryptionAttributes = {
    type = "structure",
    members = {
        PaddingType = {
            type = "string",
        },
    },
}

M.CardHolderVerificationValue = {
    type = "structure",
    members = {
        UnpredictableNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationTransactionCounter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CardVerificationValue1 = {
    type = "structure",
    members = {
        CardExpiryDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CardVerificationValue2 = {
    type = "structure",
    members = {
        CardExpiryDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DynamicCardVerificationCode = {
    type = "structure",
    members = {
        UnpredictableNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationTransactionCounter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrackData = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DynamicCardVerificationValue = {
    type = "structure",
    members = {
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CardExpiryDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationTransactionCounter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CardGenerationAttributes = {
    type = "union",
    members = {
        AmexCardSecurityCodeVersion1 = {
            type = "structure",
        },
        AmexCardSecurityCodeVersion2 = {
            type = "structure",
        },
        CardVerificationValue1 = {
            type = "structure",
        },
        CardVerificationValue2 = {
            type = "structure",
        },
        CardHolderVerificationValue = {
            type = "structure",
        },
        DynamicCardVerificationCode = {
            type = "structure",
        },
        DynamicCardVerificationValue = {
            type = "structure",
        },
    },
}

M.DiscoverDynamicCardVerificationCode = {
    type = "structure",
    members = {
        CardExpiryDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UnpredictableNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationTransactionCounter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CardVerificationAttributes = {
    type = "union",
    members = {
        AmexCardSecurityCodeVersion1 = {
            type = "structure",
        },
        AmexCardSecurityCodeVersion2 = {
            type = "structure",
        },
        CardVerificationValue1 = {
            type = "structure",
        },
        CardVerificationValue2 = {
            type = "structure",
        },
        CardHolderVerificationValue = {
            type = "structure",
        },
        DynamicCardVerificationCode = {
            type = "structure",
        },
        DynamicCardVerificationValue = {
            type = "structure",
        },
        DiscoverDynamicCardVerificationCode = {
            type = "structure",
        },
    },
}

M.CryptogramVerificationArpcMethod1 = {
    type = "structure",
    members = {
        AuthResponseCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CryptogramVerificationArpcMethod2 = {
    type = "structure",
    members = {
        CardStatusUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProprietaryAuthenticationData = {
            type = "string",
        },
    },
}

M.CryptogramAuthResponse = {
    type = "union",
    members = {
        ArpcMethod1 = {
            type = "structure",
        },
        ArpcMethod2 = {
            type = "structure",
        },
    },
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

M.DukptEncryptionAttributes = {
    type = "structure",
    members = {
        KeySerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mode = {
            type = "string",
        },
        DukptKeyDerivationType = {
            type = "string",
        },
        DukptKeyVariant = {
            type = "string",
        },
        InitializationVector = {
            type = "string",
        },
    },
}

M.EmvMajorKeyDerivationMode = {
    EMV_OPTION_A = "EMV_OPTION_A",
    EMV_OPTION_B = "EMV_OPTION_B",
}

M.EmvEncryptionMode = {
    ECB = "ECB",
    CBC = "CBC",
}

M.EmvEncryptionAttributes = {
    type = "structure",
    members = {
        MajorKeyDerivationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionDerivationData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mode = {
            type = "string",
        },
        InitializationVector = {
            type = "string",
        },
    },
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

M.SymmetricEncryptionAttributes = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InitializationVector = {
            type = "string",
        },
        PaddingType = {
            type = "string",
        },
    },
}

M.EncryptionDecryptionAttributes = {
    type = "union",
    members = {
        Symmetric = {
            type = "structure",
        },
        Asymmetric = {
            type = "structure",
        },
        Dukpt = {
            type = "structure",
        },
        Emv = {
            type = "structure",
        },
    },
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

M.EcdhDerivationAttributes = {
    type = "structure",
    members = {
        CertificateAuthorityPublicKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicKeyCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyDerivationFunction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyDerivationHashAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SharedInformation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WrappedKeyMaterial = {
    type = "union",
    members = {
        Tr31KeyBlock = {
            type = "string",
        },
        DiffieHellmanSymmetricKey = {
            type = "structure",
        },
    },
}

M.WrappedKey = {
    type = "structure",
    members = {
        WrappedKeyMaterial = {
            type = "union",
            traits = {
                required = true,
            },
        },
        KeyCheckValueAlgorithm = {
            type = "string",
        },
    },
}

M.DecryptDataInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CipherText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DecryptionAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        WrappedKey = {
            type = "structure",
        },
    },
}

M.DecryptDataOutput = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlainText = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        ResourceId = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Emv2000Attributes = {
    type = "structure",
    members = {
        MajorKeyDerivationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationTransactionCounter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PinBlockLengthPosition = {
    NONE = "NONE",
    FRONT_OF_PIN_BLOCK = "FRONT_OF_PIN_BLOCK",
}

M.PinBlockPaddingType = {
    NO_PADDING = "NO_PADDING",
    ISO_IEC_7816_4 = "ISO_IEC_7816_4",
}

M.EmvCommonAttributes = {
    type = "structure",
    members = {
        MajorKeyDerivationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationCryptogram = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinBlockPaddingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinBlockLengthPosition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MasterCardAttributes = {
    type = "structure",
    members = {
        MajorKeyDerivationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationCryptogram = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VisaAttributes = {
    type = "structure",
    members = {
        MajorKeyDerivationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationTransactionCounter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizationRequestKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentPinAttributes = {
            type = "structure",
        },
    },
}

M.DerivationMethodAttributes = {
    type = "union",
    members = {
        EmvCommon = {
            type = "structure",
        },
        Amex = {
            type = "structure",
        },
        Visa = {
            type = "structure",
        },
        Emv2000 = {
            type = "structure",
        },
        Mastercard = {
            type = "structure",
        },
    },
}

M.DiffieHellmanDerivationData = {
    type = "union",
    members = {
        SharedInformation = {
            type = "string",
        },
    },
}

M.DukptAttributes = {
    type = "structure",
    members = {
        KeySerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DukptDerivationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DukptDerivationAttributes = {
    type = "structure",
    members = {
        KeySerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DukptKeyDerivationType = {
            type = "string",
        },
        DukptKeyVariant = {
            type = "string",
        },
    },
}

M.EncryptDataInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PlainText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        WrappedKey = {
            type = "structure",
        },
    },
}

M.EncryptDataOutput = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
        },
        CipherText = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RandomKeySendVariantMask = {
    VARIANT_MASK_82C0 = "VARIANT_MASK_82C0",
    VARIANT_MASK_82 = "VARIANT_MASK_82",
}

M.GenerateAs2805KekValidationInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KekValidationType = {
            type = "union",
            traits = {
                required = true,
            },
        },
        RandomKeySendVariantMask = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GenerateAs2805KekValidationOutput = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RandomKeySend = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RandomKeyReceive = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GenerateCardValidationDataInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GenerationAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        ValidationDataLength = {
            type = "number",
        },
    },
}

M.GenerateCardValidationDataOutput = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationData = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
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

M.MacAlgorithmDukpt = {
    type = "structure",
    members = {
        KeySerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DukptKeyVariant = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DukptDerivationType = {
            type = "string",
        },
    },
}

M.SessionKeyDerivationMode = {
    EMV_COMMON_SESSION_KEY = "EMV_COMMON_SESSION_KEY",
    EMV2000 = "EMV2000",
    AMEX = "AMEX",
    MASTERCARD_SESSION_KEY = "MASTERCARD_SESSION_KEY",
    VISA = "VISA",
}

M.SessionKeyDerivationValue = {
    type = "union",
    members = {
        ApplicationCryptogram = {
            type = "string",
        },
        ApplicationTransactionCounter = {
            type = "string",
        },
    },
}

M.MacAlgorithmEmv = {
    type = "structure",
    members = {
        MajorKeyDerivationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionKeyDerivationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionKeyDerivationValue = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.MacAttributes = {
    type = "union",
    members = {
        Algorithm = {
            type = "string",
        },
        EmvMac = {
            type = "structure",
        },
        DukptIso9797Algorithm1 = {
            type = "structure",
        },
        DukptIso9797Algorithm3 = {
            type = "structure",
        },
        DukptCmac = {
            type = "structure",
        },
    },
}

M.GenerateMacInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GenerationAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        MacLength = {
            type = "number",
        },
    },
}

M.GenerateMacOutput = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mac = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PinBlockFormatForEmvPinChange = {
    ISO_FORMAT_0 = "ISO_FORMAT_0",
    ISO_FORMAT_1 = "ISO_FORMAT_1",
    ISO_FORMAT_3 = "ISO_FORMAT_3",
}

M.GenerateMacEmvPinChangeInput = {
    type = "structure",
    members = {
        NewPinPekIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewEncryptedPinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinBlockFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecureMessagingIntegrityKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecureMessagingConfidentialityKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DerivationMethodAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.VisaAmexDerivationOutputs = {
    type = "structure",
    members = {
        AuthorizationRequestKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizationRequestKeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentPinPekArn = {
            type = "string",
        },
        CurrentPinPekKeyCheckValue = {
            type = "string",
        },
    },
}

M.GenerateMacEmvPinChangeOutput = {
    type = "structure",
    members = {
        NewPinPekArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecureMessagingIntegrityKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecureMessagingConfidentialityKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mac = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptedPinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewPinPekKeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecureMessagingIntegrityKeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecureMessagingConfidentialityKeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VisaAmexDerivationOutputs = {
            type = "structure",
        },
    },
}

M.Ibm3624NaturalPin = {
    type = "structure",
    members = {
        DecimalizationTable = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinValidationDataPadCharacter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinValidationData = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Ibm3624PinFromOffset = {
    type = "structure",
    members = {
        DecimalizationTable = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinValidationDataPadCharacter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinValidationData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinOffset = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Ibm3624PinOffset = {
    type = "structure",
    members = {
        EncryptedPinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DecimalizationTable = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinValidationDataPadCharacter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinValidationData = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Ibm3624RandomPin = {
    type = "structure",
    members = {
        DecimalizationTable = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinValidationDataPadCharacter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinValidationData = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VisaPin = {
    type = "structure",
    members = {
        PinVerificationKeyIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.VisaPinVerificationValue = {
    type = "structure",
    members = {
        EncryptedPinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinVerificationKeyIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PinGenerationAttributes = {
    type = "union",
    members = {
        VisaPin = {
            type = "structure",
        },
        VisaPinVerificationValue = {
            type = "structure",
        },
        Ibm3624PinOffset = {
            type = "structure",
        },
        Ibm3624NaturalPin = {
            type = "structure",
        },
        Ibm3624RandomPin = {
            type = "structure",
        },
        Ibm3624PinFromOffset = {
            type = "structure",
        },
    },
}

M.PinBlockFormatForPinData = {
    ISO_FORMAT_0 = "ISO_FORMAT_0",
    ISO_FORMAT_1 = "ISO_FORMAT_1",
    ISO_FORMAT_3 = "ISO_FORMAT_3",
    ISO_FORMAT_4 = "ISO_FORMAT_4",
}

M.GeneratePinDataInput = {
    type = "structure",
    members = {
        GenerationKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GenerationAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        PinDataLength = {
            type = "number",
        },
        PrimaryAccountNumber = {
            type = "string",
        },
        PinBlockFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionWrappedKey = {
            type = "structure",
        },
    },
}

M.PinData = {
    type = "union",
    members = {
        PinOffset = {
            type = "string",
        },
        VerificationValue = {
            type = "string",
        },
    },
}

M.GeneratePinDataOutput = {
    type = "structure",
    members = {
        GenerationKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GenerationKeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptedPinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinData = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.Ibm3624PinVerification = {
    type = "structure",
    members = {
        DecimalizationTable = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinValidationDataPadCharacter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinValidationData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinOffset = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncomingDiffieHellmanTr31KeyBlock = {
    type = "structure",
    members = {
        PrivateKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateAuthorityPublicKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicKeyCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeriveKeyAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyDerivationFunction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyDerivationHashAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DerivationData = {
            type = "union",
            traits = {
                required = true,
            },
        },
        WrappedKeyBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncomingKeyMaterial = {
    type = "union",
    members = {
        DiffieHellmanTr31KeyBlock = {
            type = "structure",
        },
    },
}

M.OutgoingTr31KeyBlock = {
    type = "structure",
    members = {
        WrappingKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutgoingKeyMaterial = {
    type = "union",
    members = {
        Tr31KeyBlock = {
            type = "structure",
        },
    },
}

M.ReEncryptionAttributes = {
    type = "union",
    members = {
        Symmetric = {
            type = "structure",
        },
        Dukpt = {
            type = "structure",
        },
    },
}

M.ReEncryptDataInput = {
    type = "structure",
    members = {
        IncomingKeyIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OutgoingKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CipherText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncomingEncryptionAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        OutgoingEncryptionAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        IncomingWrappedKey = {
            type = "structure",
        },
        OutgoingWrappedKey = {
            type = "structure",
        },
    },
}

M.ReEncryptDataOutput = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CipherText = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TranslateKeyMaterialInput = {
    type = "structure",
    members = {
        IncomingKeyMaterial = {
            type = "union",
            traits = {
                required = true,
            },
        },
        OutgoingKeyMaterial = {
            type = "union",
            traits = {
                required = true,
            },
        },
        KeyCheckValueAlgorithm = {
            type = "string",
        },
    },
}

M.WrappedKeyMaterialFormat = {
    KEY_CRYPTOGRAM = "KEY_CRYPTOGRAM",
    TR31_KEY_BLOCK = "TR31_KEY_BLOCK",
    TR34_KEY_BLOCK = "TR34_KEY_BLOCK",
}

M.WrappedWorkingKey = {
    type = "structure",
    members = {
        WrappedKeyMaterial = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappedKeyMaterialFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TranslateKeyMaterialOutput = {
    type = "structure",
    members = {
        WrappedKey = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TranslationPinDataAs2805Format0 = {
    type = "structure",
    members = {
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TranslationPinDataIsoFormat034 = {
    type = "structure",
    members = {
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TranslationPinDataIsoFormat1 = {
    type = "structure",
}

M.TranslationIsoFormats = {
    type = "union",
    members = {
        IsoFormat0 = {
            type = "structure",
        },
        IsoFormat1 = {
            type = "structure",
        },
        IsoFormat3 = {
            type = "structure",
        },
        IsoFormat4 = {
            type = "structure",
        },
        As2805Format0 = {
            type = "structure",
        },
    },
}

M.TranslatePinDataInput = {
    type = "structure",
    members = {
        IncomingKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutgoingKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncomingTranslationAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        OutgoingTranslationAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        EncryptedPinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncomingDukptAttributes = {
            type = "structure",
        },
        OutgoingDukptAttributes = {
            type = "structure",
        },
        IncomingWrappedKey = {
            type = "structure",
        },
        OutgoingWrappedKey = {
            type = "structure",
        },
        IncomingAs2805Attributes = {
            type = "structure",
        },
    },
}

M.TranslatePinDataOutput = {
    type = "structure",
    members = {
        PinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerificationFailedReason = {
    INVALID_MAC = "INVALID_MAC",
    INVALID_PIN = "INVALID_PIN",
    INVALID_VALIDATION_DATA = "INVALID_VALIDATION_DATA",
    INVALID_AUTH_REQUEST_CRYPTOGRAM = "INVALID_AUTH_REQUEST_CRYPTOGRAM",
}

M.VerificationFailedException = {
    type = "structure",
    error = "client",
    members = {
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionKeyAmex = {
    type = "structure",
    members = {
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionKeyEmv2000 = {
    type = "structure",
    members = {
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationTransactionCounter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionKeyEmvCommon = {
    type = "structure",
    members = {
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationTransactionCounter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionKeyMastercard = {
    type = "structure",
    members = {
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationTransactionCounter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UnpredictableNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionKeyVisa = {
    type = "structure",
    members = {
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PanSequenceNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionKeyDerivation = {
    type = "union",
    members = {
        EmvCommon = {
            type = "structure",
        },
        Mastercard = {
            type = "structure",
        },
        Emv2000 = {
            type = "structure",
        },
        Amex = {
            type = "structure",
        },
        Visa = {
            type = "structure",
        },
    },
}

M.VerifyAuthRequestCryptogramInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransactionData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthRequestCryptogram = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MajorKeyDerivationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionKeyDerivationAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        AuthResponseAttributes = {
            type = "union",
        },
    },
}

M.VerifyAuthRequestCryptogramOutput = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthResponseValue = {
            type = "string",
        },
    },
}

M.VerifyCardValidationDataInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryAccountNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        ValidationData = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyCardValidationDataOutput = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyMacInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mac = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        MacLength = {
            type = "number",
        },
    },
}

M.VerifyMacOutput = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VisaPinVerification = {
    type = "structure",
    members = {
        PinVerificationKeyIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
        VerificationValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PinVerificationAttributes = {
    type = "union",
    members = {
        VisaPin = {
            type = "structure",
        },
        Ibm3624Pin = {
            type = "structure",
        },
    },
}

M.VerifyPinDataInput = {
    type = "structure",
    members = {
        VerificationKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationAttributes = {
            type = "union",
            traits = {
                required = true,
            },
        },
        EncryptedPinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryAccountNumber = {
            type = "string",
        },
        PinBlockFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinDataLength = {
            type = "number",
        },
        DukptAttributes = {
            type = "structure",
        },
        EncryptionWrappedKey = {
            type = "structure",
        },
    },
}

M.VerifyPinDataOutput = {
    type = "structure",
    members = {
        VerificationKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationKeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
