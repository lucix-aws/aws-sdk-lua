local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CurrentPinAttributes = {
    type = "structure",
    id = "CurrentPinAttributes",
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
    id = "AmexAttributes",
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
        CurrentPinAttributes = M.CurrentPinAttributes,
    },
}

M.AmexCardSecurityCodeVersion1 = {
    type = "structure",
    id = "AmexCardSecurityCodeVersion1",
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
    id = "AmexCardSecurityCodeVersion2",
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
    id = "KekValidationRequest",
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
    id = "KekValidationResponse",
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
    id = "As2805KekValidationType",
    members = {
        KekValidationRequest = M.KekValidationRequest,
        KekValidationResponse = M.KekValidationResponse,
    },
}

M.As2805PekDerivationAttributes = {
    type = "structure",
    id = "As2805PekDerivationAttributes",
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
    id = "AsymmetricEncryptionAttributes",
    members = {
        PaddingType = {
            type = "string",
        },
    },
}

M.CardHolderVerificationValue = {
    type = "structure",
    id = "CardHolderVerificationValue",
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
    id = "CardVerificationValue1",
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
    id = "CardVerificationValue2",
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
    id = "DynamicCardVerificationCode",
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
    id = "DynamicCardVerificationValue",
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
    id = "CardGenerationAttributes",
    members = {
        AmexCardSecurityCodeVersion1 = M.AmexCardSecurityCodeVersion1,
        AmexCardSecurityCodeVersion2 = M.AmexCardSecurityCodeVersion2,
        CardVerificationValue1 = M.CardVerificationValue1,
        CardVerificationValue2 = M.CardVerificationValue2,
        CardHolderVerificationValue = M.CardHolderVerificationValue,
        DynamicCardVerificationCode = M.DynamicCardVerificationCode,
        DynamicCardVerificationValue = M.DynamicCardVerificationValue,
    },
}

M.DiscoverDynamicCardVerificationCode = {
    type = "structure",
    id = "DiscoverDynamicCardVerificationCode",
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
    id = "CardVerificationAttributes",
    members = {
        AmexCardSecurityCodeVersion1 = M.AmexCardSecurityCodeVersion1,
        AmexCardSecurityCodeVersion2 = M.AmexCardSecurityCodeVersion2,
        CardVerificationValue1 = M.CardVerificationValue1,
        CardVerificationValue2 = M.CardVerificationValue2,
        CardHolderVerificationValue = M.CardHolderVerificationValue,
        DynamicCardVerificationCode = M.DynamicCardVerificationCode,
        DynamicCardVerificationValue = M.DynamicCardVerificationValue,
        DiscoverDynamicCardVerificationCode = M.DiscoverDynamicCardVerificationCode,
    },
}

M.CryptogramVerificationArpcMethod1 = {
    type = "structure",
    id = "CryptogramVerificationArpcMethod1",
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
    id = "CryptogramVerificationArpcMethod2",
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
    id = "CryptogramAuthResponse",
    members = {
        ArpcMethod1 = M.CryptogramVerificationArpcMethod1,
        ArpcMethod2 = M.CryptogramVerificationArpcMethod2,
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
    id = "DukptEncryptionAttributes",
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
    id = "EmvEncryptionAttributes",
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
    id = "SymmetricEncryptionAttributes",
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
    id = "EncryptionDecryptionAttributes",
    members = {
        Symmetric = M.SymmetricEncryptionAttributes,
        Asymmetric = M.AsymmetricEncryptionAttributes,
        Dukpt = M.DukptEncryptionAttributes,
        Emv = M.EmvEncryptionAttributes,
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
    id = "EcdhDerivationAttributes",
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
    id = "WrappedKeyMaterial",
    members = {
        Tr31KeyBlock = {
            type = "string",
        },
        DiffieHellmanSymmetricKey = M.EcdhDerivationAttributes,
    },
}

M.WrappedKey = {
    type = "structure",
    id = "WrappedKey",
    members = {
        WrappedKeyMaterial = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WrappedKeyMaterial }),
        KeyCheckValueAlgorithm = {
            type = "string",
        },
    },
}

M.DecryptDataInput = {
    type = "structure",
    id = "DecryptDataInput",
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
        DecryptionAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionDecryptionAttributes }),
        WrappedKey = M.WrappedKey,
    },
}

M.DecryptDataOutput = {
    type = "structure",
    id = "DecryptDataOutput",
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
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        ResourceId = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
            member = M.ValidationExceptionField,
        },
    },
}

M.Emv2000Attributes = {
    type = "structure",
    id = "Emv2000Attributes",
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
    id = "EmvCommonAttributes",
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
    id = "MasterCardAttributes",
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
    id = "VisaAttributes",
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
        CurrentPinAttributes = M.CurrentPinAttributes,
    },
}

M.DerivationMethodAttributes = {
    type = "union",
    id = "DerivationMethodAttributes",
    members = {
        EmvCommon = M.EmvCommonAttributes,
        Amex = M.AmexAttributes,
        Visa = M.VisaAttributes,
        Emv2000 = M.Emv2000Attributes,
        Mastercard = M.MasterCardAttributes,
    },
}

M.DiffieHellmanDerivationData = {
    type = "union",
    id = "DiffieHellmanDerivationData",
    members = {
        SharedInformation = {
            type = "string",
        },
    },
}

M.DukptAttributes = {
    type = "structure",
    id = "DukptAttributes",
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
    id = "DukptDerivationAttributes",
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
    id = "EncryptDataInput",
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
        EncryptionAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionDecryptionAttributes }),
        WrappedKey = M.WrappedKey,
    },
}

M.EncryptDataOutput = {
    type = "structure",
    id = "EncryptDataOutput",
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
    id = "GenerateAs2805KekValidationInput",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KekValidationType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.As2805KekValidationType }),
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
    id = "GenerateAs2805KekValidationOutput",
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
    id = "GenerateCardValidationDataInput",
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
        GenerationAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CardGenerationAttributes }),
        ValidationDataLength = {
            type = "integer",
        },
    },
}

M.GenerateCardValidationDataOutput = {
    type = "structure",
    id = "GenerateCardValidationDataOutput",
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
    id = "MacAlgorithmDukpt",
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
    id = "SessionKeyDerivationValue",
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
    id = "MacAlgorithmEmv",
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
        SessionKeyDerivationValue = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionKeyDerivationValue }),
    },
}

M.MacAttributes = {
    type = "union",
    id = "MacAttributes",
    members = {
        Algorithm = {
            type = "string",
        },
        EmvMac = M.MacAlgorithmEmv,
        DukptIso9797Algorithm1 = M.MacAlgorithmDukpt,
        DukptIso9797Algorithm3 = M.MacAlgorithmDukpt,
        DukptCmac = M.MacAlgorithmDukpt,
    },
}

M.GenerateMacInput = {
    type = "structure",
    id = "GenerateMacInput",
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
        GenerationAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MacAttributes }),
        MacLength = {
            type = "integer",
        },
    },
}

M.GenerateMacOutput = {
    type = "structure",
    id = "GenerateMacOutput",
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
    id = "GenerateMacEmvPinChangeInput",
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
        DerivationMethodAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DerivationMethodAttributes }),
    },
}

M.VisaAmexDerivationOutputs = {
    type = "structure",
    id = "VisaAmexDerivationOutputs",
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
    id = "GenerateMacEmvPinChangeOutput",
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
        VisaAmexDerivationOutputs = M.VisaAmexDerivationOutputs,
    },
}

M.Ibm3624NaturalPin = {
    type = "structure",
    id = "Ibm3624NaturalPin",
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
    id = "Ibm3624PinFromOffset",
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
    id = "Ibm3624PinOffset",
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
    id = "Ibm3624RandomPin",
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
    id = "VisaPin",
    members = {
        PinVerificationKeyIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.VisaPinVerificationValue = {
    type = "structure",
    id = "VisaPinVerificationValue",
    members = {
        EncryptedPinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PinVerificationKeyIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PinGenerationAttributes = {
    type = "union",
    id = "PinGenerationAttributes",
    members = {
        VisaPin = M.VisaPin,
        VisaPinVerificationValue = M.VisaPinVerificationValue,
        Ibm3624PinOffset = M.Ibm3624PinOffset,
        Ibm3624NaturalPin = M.Ibm3624NaturalPin,
        Ibm3624RandomPin = M.Ibm3624RandomPin,
        Ibm3624PinFromOffset = M.Ibm3624PinFromOffset,
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
    id = "GeneratePinDataInput",
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
        GenerationAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PinGenerationAttributes }),
        PinDataLength = {
            type = "integer",
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
        EncryptionWrappedKey = M.WrappedKey,
    },
}

M.PinData = {
    type = "union",
    id = "PinData",
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
    id = "GeneratePinDataOutput",
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
        PinData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PinData }),
    },
}

M.Ibm3624PinVerification = {
    type = "structure",
    id = "Ibm3624PinVerification",
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
    id = "IncomingDiffieHellmanTr31KeyBlock",
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
        DerivationData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DiffieHellmanDerivationData }),
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
    id = "IncomingKeyMaterial",
    members = {
        DiffieHellmanTr31KeyBlock = M.IncomingDiffieHellmanTr31KeyBlock,
    },
}

M.OutgoingTr31KeyBlock = {
    type = "structure",
    id = "OutgoingTr31KeyBlock",
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
    id = "OutgoingKeyMaterial",
    members = {
        Tr31KeyBlock = M.OutgoingTr31KeyBlock,
    },
}

M.ReEncryptionAttributes = {
    type = "union",
    id = "ReEncryptionAttributes",
    members = {
        Symmetric = M.SymmetricEncryptionAttributes,
        Dukpt = M.DukptEncryptionAttributes,
    },
}

M.ReEncryptDataInput = {
    type = "structure",
    id = "ReEncryptDataInput",
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
        IncomingEncryptionAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReEncryptionAttributes }),
        OutgoingEncryptionAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReEncryptionAttributes }),
        IncomingWrappedKey = M.WrappedKey,
        OutgoingWrappedKey = M.WrappedKey,
    },
}

M.ReEncryptDataOutput = {
    type = "structure",
    id = "ReEncryptDataOutput",
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
    id = "TranslateKeyMaterialInput",
    members = {
        IncomingKeyMaterial = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IncomingKeyMaterial }),
        OutgoingKeyMaterial = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutgoingKeyMaterial }),
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
    id = "WrappedWorkingKey",
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
    id = "TranslateKeyMaterialOutput",
    members = {
        WrappedKey = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WrappedWorkingKey }),
    },
}

M.TranslationPinDataAs2805Format0 = {
    type = "structure",
    id = "TranslationPinDataAs2805Format0",
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
    id = "TranslationPinDataIsoFormat034",
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
    id = "TranslationPinDataIsoFormat1",
}

M.TranslationIsoFormats = {
    type = "union",
    id = "TranslationIsoFormats",
    members = {
        IsoFormat0 = M.TranslationPinDataIsoFormat034,
        IsoFormat1 = M.TranslationPinDataIsoFormat1,
        IsoFormat3 = M.TranslationPinDataIsoFormat034,
        IsoFormat4 = M.TranslationPinDataIsoFormat034,
        As2805Format0 = M.TranslationPinDataAs2805Format0,
    },
}

M.TranslatePinDataInput = {
    type = "structure",
    id = "TranslatePinDataInput",
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
        IncomingTranslationAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TranslationIsoFormats }),
        OutgoingTranslationAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TranslationIsoFormats }),
        EncryptedPinBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncomingDukptAttributes = M.DukptDerivationAttributes,
        OutgoingDukptAttributes = M.DukptDerivationAttributes,
        IncomingWrappedKey = M.WrappedKey,
        OutgoingWrappedKey = M.WrappedKey,
        IncomingAs2805Attributes = M.As2805PekDerivationAttributes,
    },
}

M.TranslatePinDataOutput = {
    type = "structure",
    id = "TranslatePinDataOutput",
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
    id = "VerificationFailedException",
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
    id = "SessionKeyAmex",
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
    id = "SessionKeyEmv2000",
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
    id = "SessionKeyEmvCommon",
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
    id = "SessionKeyMastercard",
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
    id = "SessionKeyVisa",
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
    id = "SessionKeyDerivation",
    members = {
        EmvCommon = M.SessionKeyEmvCommon,
        Mastercard = M.SessionKeyMastercard,
        Emv2000 = M.SessionKeyEmv2000,
        Amex = M.SessionKeyAmex,
        Visa = M.SessionKeyVisa,
    },
}

M.VerifyAuthRequestCryptogramInput = {
    type = "structure",
    id = "VerifyAuthRequestCryptogramInput",
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
        SessionKeyDerivationAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionKeyDerivation }),
        AuthResponseAttributes = M.CryptogramAuthResponse,
    },
}

M.VerifyAuthRequestCryptogramOutput = {
    type = "structure",
    id = "VerifyAuthRequestCryptogramOutput",
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
    id = "VerifyCardValidationDataInput",
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
        VerificationAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CardVerificationAttributes }),
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
    id = "VerifyCardValidationDataOutput",
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
    id = "VerifyMacInput",
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
        VerificationAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MacAttributes }),
        MacLength = {
            type = "integer",
        },
    },
}

M.VerifyMacOutput = {
    type = "structure",
    id = "VerifyMacOutput",
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
    id = "VisaPinVerification",
    members = {
        PinVerificationKeyIndex = {
            type = "integer",
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
    id = "PinVerificationAttributes",
    members = {
        VisaPin = M.VisaPinVerification,
        Ibm3624Pin = M.Ibm3624PinVerification,
    },
}

M.VerifyPinDataInput = {
    type = "structure",
    id = "VerifyPinDataInput",
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
        VerificationAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PinVerificationAttributes }),
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
            type = "integer",
        },
        DukptAttributes = M.DukptAttributes,
        EncryptionWrappedKey = M.WrappedKey,
    },
}

M.VerifyPinDataOutput = {
    type = "structure",
    id = "VerifyPinDataOutput",
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
