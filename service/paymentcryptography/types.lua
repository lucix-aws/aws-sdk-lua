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

M.AddKeyReplicationRegionsInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationRegions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeriveKeyUsage = {
    TR31_B0_BASE_DERIVATION_KEY = "TR31_B0_BASE_DERIVATION_KEY",
    TR31_C0_CARD_VERIFICATION_KEY = "TR31_C0_CARD_VERIFICATION_KEY",
    TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY = "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY",
    TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS = "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS",
    TR31_E1_EMV_MKEY_CONFIDENTIALITY = "TR31_E1_EMV_MKEY_CONFIDENTIALITY",
    TR31_E2_EMV_MKEY_INTEGRITY = "TR31_E2_EMV_MKEY_INTEGRITY",
    TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS = "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS",
    TR31_E5_EMV_MKEY_CARD_PERSONALIZATION = "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION",
    TR31_E6_EMV_MKEY_OTHER = "TR31_E6_EMV_MKEY_OTHER",
    TR31_K0_KEY_ENCRYPTION_KEY = "TR31_K0_KEY_ENCRYPTION_KEY",
    TR31_K1_KEY_BLOCK_PROTECTION_KEY = "TR31_K1_KEY_BLOCK_PROTECTION_KEY",
    TR31_M3_ISO_9797_3_MAC_KEY = "TR31_M3_ISO_9797_3_MAC_KEY",
    TR31_M1_ISO_9797_1_MAC_KEY = "TR31_M1_ISO_9797_1_MAC_KEY",
    TR31_M6_ISO_9797_5_CMAC_KEY = "TR31_M6_ISO_9797_5_CMAC_KEY",
    TR31_M7_HMAC_KEY = "TR31_M7_HMAC_KEY",
    TR31_P0_PIN_ENCRYPTION_KEY = "TR31_P0_PIN_ENCRYPTION_KEY",
    TR31_P1_PIN_GENERATION_KEY = "TR31_P1_PIN_GENERATION_KEY",
    TR31_V1_IBM3624_PIN_VERIFICATION_KEY = "TR31_V1_IBM3624_PIN_VERIFICATION_KEY",
    TR31_V2_VISA_PIN_VERIFICATION_KEY = "TR31_V2_VISA_PIN_VERIFICATION_KEY",
}

M.KeyAlgorithm = {
    TDES_2KEY = "TDES_2KEY",
    TDES_3KEY = "TDES_3KEY",
    AES_128 = "AES_128",
    AES_192 = "AES_192",
    AES_256 = "AES_256",
    HMAC_SHA256 = "HMAC_SHA256",
    HMAC_SHA384 = "HMAC_SHA384",
    HMAC_SHA512 = "HMAC_SHA512",
    HMAC_SHA224 = "HMAC_SHA224",
    RSA_2048 = "RSA_2048",
    RSA_3072 = "RSA_3072",
    RSA_4096 = "RSA_4096",
    ECC_NIST_P256 = "ECC_NIST_P256",
    ECC_NIST_P384 = "ECC_NIST_P384",
    ECC_NIST_P521 = "ECC_NIST_P521",
}

M.KeyClass = {
    SYMMETRIC_KEY = "SYMMETRIC_KEY",
    ASYMMETRIC_KEY_PAIR = "ASYMMETRIC_KEY_PAIR",
    PRIVATE_KEY = "PRIVATE_KEY",
    PUBLIC_KEY = "PUBLIC_KEY",
}

M.KeyModesOfUse = {
    type = "structure",
    members = {
        Encrypt = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Decrypt = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Wrap = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Unwrap = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Generate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Sign = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Verify = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DeriveKey = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        NoRestrictions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.KeyUsage = {
    TR31_B0_BASE_DERIVATION_KEY = "TR31_B0_BASE_DERIVATION_KEY",
    TR31_C0_CARD_VERIFICATION_KEY = "TR31_C0_CARD_VERIFICATION_KEY",
    TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY = "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY",
    TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION = "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION",
    TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS = "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS",
    TR31_E1_EMV_MKEY_CONFIDENTIALITY = "TR31_E1_EMV_MKEY_CONFIDENTIALITY",
    TR31_E2_EMV_MKEY_INTEGRITY = "TR31_E2_EMV_MKEY_INTEGRITY",
    TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS = "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS",
    TR31_E5_EMV_MKEY_CARD_PERSONALIZATION = "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION",
    TR31_E6_EMV_MKEY_OTHER = "TR31_E6_EMV_MKEY_OTHER",
    TR31_K0_KEY_ENCRYPTION_KEY = "TR31_K0_KEY_ENCRYPTION_KEY",
    TR31_K1_KEY_BLOCK_PROTECTION_KEY = "TR31_K1_KEY_BLOCK_PROTECTION_KEY",
    TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT = "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT",
    TR31_M0_ISO_16609_MAC_KEY = "TR31_M0_ISO_16609_MAC_KEY",
    TR31_M3_ISO_9797_3_MAC_KEY = "TR31_M3_ISO_9797_3_MAC_KEY",
    TR31_M1_ISO_9797_1_MAC_KEY = "TR31_M1_ISO_9797_1_MAC_KEY",
    TR31_M6_ISO_9797_5_CMAC_KEY = "TR31_M6_ISO_9797_5_CMAC_KEY",
    TR31_M7_HMAC_KEY = "TR31_M7_HMAC_KEY",
    TR31_P0_PIN_ENCRYPTION_KEY = "TR31_P0_PIN_ENCRYPTION_KEY",
    TR31_P1_PIN_GENERATION_KEY = "TR31_P1_PIN_GENERATION_KEY",
    TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE = "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE",
    TR31_V1_IBM3624_PIN_VERIFICATION_KEY = "TR31_V1_IBM3624_PIN_VERIFICATION_KEY",
    TR31_V2_VISA_PIN_VERIFICATION_KEY = "TR31_V2_VISA_PIN_VERIFICATION_KEY",
    TR31_K2_TR34_ASYMMETRIC_KEY = "TR31_K2_TR34_ASYMMETRIC_KEY",
}

M.KeyAttributes = {
    type = "structure",
    members = {
        KeyUsage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyClass = {
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
        KeyModesOfUse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyModesOfUse }),
    },
}

M.KeyCheckValueAlgorithm = {
    CMAC = "CMAC",
    ANSI_X9_24 = "ANSI_X9_24",
    HMAC = "HMAC",
    SHA_1 = "SHA_1",
}

M.KeyOrigin = {
    EXTERNAL = "EXTERNAL",
    AWS_PAYMENT_CRYPTOGRAPHY = "AWS_PAYMENT_CRYPTOGRAPHY",
}

M.KeyState = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    DELETE_PENDING = "DELETE_PENDING",
    DELETE_COMPLETE = "DELETE_COMPLETE",
}

M.SessionStatus = {
    PENDING = "PENDING",
    APPROVED = "APPROVED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.MpaStatus = {
    type = "structure",
    members = {
        MpaSessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InitiationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.MultiRegionKeyType = {
    PRIMARY = "PRIMARY",
    REPLICA = "REPLICA",
}

M.KeyReplicationState = {
    IN_PROGRESS = "IN_PROGRESS",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    FAILED = "FAILED",
    SYNCHRONIZED = "SYNCHRONIZED",
}

M.ReplicationStatusType = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.Key = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyAttributes }),
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValueAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Exportable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        KeyState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyOrigin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UsageStartTimestamp = {
            type = "timestamp",
        },
        UsageStopTimestamp = {
            type = "timestamp",
        },
        DeletePendingTimestamp = {
            type = "timestamp",
        },
        DeleteTimestamp = {
            type = "timestamp",
        },
        DeriveKeyUsage = {
            type = "string",
        },
        MultiRegionKeyType = {
            type = "string",
        },
        PrimaryRegion = {
            type = "string",
        },
        ReplicationStatus = {
            type = "map",
            key = { type = "string" },
            value = M.ReplicationStatusType,
        },
        UsingDefaultReplicationRegions = {
            type = "boolean",
        },
        MpaStatus = M.MpaStatus,
    },
}

M.AddKeyReplicationRegionsOutput = {
    type = "structure",
    members = {
        Key = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Key }),
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
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

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Alias = {
    type = "structure",
    members = {
        AliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyArn = {
            type = "string",
        },
    },
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
        KeyArn = {
            type = "string",
        },
    },
}

M.CreateAliasOutput = {
    type = "structure",
    members = {
        Alias = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Alias }),
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
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

M.GetAliasInput = {
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

M.GetAliasOutput = {
    type = "structure",
    members = {
        Alias = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Alias }),
    },
}

M.ListAliasesInput = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListAliasesOutput = {
    type = "structure",
    members = {
        Aliases = {
            type = "list",
            member = M.Alias,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
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
        KeyArn = {
            type = "string",
        },
    },
}

M.UpdateAliasOutput = {
    type = "structure",
    members = {
        Alias = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Alias }),
    },
}

M.As2805KeyVariant = {
    TERMINAL_MAJOR_KEY_VARIANT_00 = "TERMINAL_MAJOR_KEY_VARIANT_00",
    PIN_ENCRYPTION_KEY_VARIANT_28 = "PIN_ENCRYPTION_KEY_VARIANT_28",
    MESSAGE_AUTHENTICATION_KEY_VARIANT_24 = "MESSAGE_AUTHENTICATION_KEY_VARIANT_24",
    DATA_ENCRYPTION_KEY_VARIANT_22 = "DATA_ENCRYPTION_KEY_VARIANT_22",
}

M.MpaOperation = {
    IMPORT_ROOT_PUBLIC_KEY_CERTIFICATE = "IMPORT_ROOT_PUBLIC_KEY_CERTIFICATE",
}

M.AssociateMpaTeamInput = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MpaTeamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequesterComment = {
            type = "string",
        },
    },
}

M.AssociationState = {
    ACTIVE = "ACTIVE",
    UPDATE_PENDING = "UPDATE_PENDING",
    DELETE_PENDING = "DELETE_PENDING",
}

M.MpaTeamAssociation = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MpaTeamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MpaStatus = M.MpaStatus,
    },
}

M.AssociateMpaTeamOutput = {
    type = "structure",
    members = {
        MpaTeamAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MpaTeamAssociation }),
    },
}

M.CertificateSubjectType = {
    type = "structure",
    members = {
        CommonName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationUnit = {
            type = "string",
        },
        Organization = {
            type = "string",
        },
        City = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        StateOrProvince = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
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
        KeyAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyAttributes }),
        KeyCheckValueAlgorithm = {
            type = "string",
        },
        Exportable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DeriveKeyUsage = {
            type = "string",
        },
        ReplicationRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateKeyOutput = {
    type = "structure",
    members = {
        Key = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Key }),
    },
}

M.DeleteKeyInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteKeyInDays = {
            type = "integer",
        },
    },
}

M.DeleteKeyOutput = {
    type = "structure",
    members = {
        Key = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Key }),
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.DiffieHellmanDerivationData = {
    type = "union",
    members = {
        SharedInformation = {
            type = "string",
        },
    },
}

M.DisableDefaultKeyReplicationRegionsInput = {
    type = "structure",
    members = {
        ReplicationRegions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisableDefaultKeyReplicationRegionsOutput = {
    type = "structure",
    members = {
        EnabledReplicationRegions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateMpaTeamInput = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequesterComment = {
            type = "string",
        },
    },
}

M.DisassociateMpaTeamOutput = {
    type = "structure",
    members = {
        MpaTeamAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MpaTeamAssociation }),
    },
}

M.EnableDefaultKeyReplicationRegionsInput = {
    type = "structure",
    members = {
        ReplicationRegions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EnableDefaultKeyReplicationRegionsOutput = {
    type = "structure",
    members = {
        EnabledReplicationRegions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ExportAs2805KeyCryptogram = {
    type = "structure",
    members = {
        WrappingKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        As2805KeyVariant = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportDukptInitialKey = {
    type = "structure",
    members = {
        KeySerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportAttributes = {
    type = "structure",
    members = {
        ExportDukptInitialKey = M.ExportDukptInitialKey,
        KeyCheckValueAlgorithm = {
            type = "string",
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

M.KeyExportability = {
    EXPORTABLE = "EXPORTABLE",
    NON_EXPORTABLE = "NON_EXPORTABLE",
    SENSITIVE = "SENSITIVE",
}

M.KeyBlockHeaders = {
    type = "structure",
    members = {
        KeyModesOfUse = M.KeyModesOfUse,
        KeyExportability = {
            type = "string",
        },
        KeyVersion = {
            type = "string",
        },
        OptionalBlocks = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
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

M.ExportDiffieHellmanTr31KeyBlock = {
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
        DerivationData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DiffieHellmanDerivationData }),
        KeyBlockHeaders = M.KeyBlockHeaders,
    },
}

M.WrappingKeySpec = {
    RSA_OAEP_SHA_256 = "RSA_OAEP_SHA_256",
    RSA_OAEP_SHA_512 = "RSA_OAEP_SHA_512",
}

M.ExportKeyCryptogram = {
    type = "structure",
    members = {
        CertificateAuthorityPublicKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappingKeyCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappingSpec = {
            type = "string",
        },
    },
}

M.ExportTr31KeyBlock = {
    type = "structure",
    members = {
        WrappingKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyBlockHeaders = M.KeyBlockHeaders,
    },
}

M.Tr34KeyBlockFormat = {
    X9_TR34_2012 = "X9_TR34_2012",
}

M.ExportTr34KeyBlock = {
    type = "structure",
    members = {
        CertificateAuthorityPublicKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappingKeyCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExportToken = {
            type = "string",
            traits = {
                default = "",
            },
        },
        SigningKeyIdentifier = {
            type = "string",
        },
        SigningKeyCertificate = {
            type = "string",
        },
        KeyBlockFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RandomNonce = {
            type = "string",
        },
        KeyBlockHeaders = M.KeyBlockHeaders,
    },
}

M.ExportKeyMaterial = {
    type = "union",
    members = {
        Tr31KeyBlock = M.ExportTr31KeyBlock,
        Tr34KeyBlock = M.ExportTr34KeyBlock,
        KeyCryptogram = M.ExportKeyCryptogram,
        DiffieHellmanTr31KeyBlock = M.ExportDiffieHellmanTr31KeyBlock,
        As2805KeyCryptogram = M.ExportAs2805KeyCryptogram,
    },
}

M.ExportKeyInput = {
    type = "structure",
    members = {
        KeyMaterial = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportKeyMaterial }),
        ExportKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExportAttributes = M.ExportAttributes,
    },
}

M.WrappedKeyMaterialFormat = {
    KEY_CRYPTOGRAM = "KEY_CRYPTOGRAM",
    TR31_KEY_BLOCK = "TR31_KEY_BLOCK",
    TR34_KEY_BLOCK = "TR34_KEY_BLOCK",
}

M.WrappedKey = {
    type = "structure",
    members = {
        WrappingKeyArn = {
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
        KeyMaterial = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCheckValue = {
            type = "string",
        },
        KeyCheckValueAlgorithm = {
            type = "string",
        },
    },
}

M.ExportKeyOutput = {
    type = "structure",
    members = {
        WrappedKey = M.WrappedKey,
    },
}

M.SigningAlgorithmType = {
    SHA224 = "SHA224",
    SHA256 = "SHA256",
    SHA384 = "SHA384",
    SHA512 = "SHA512",
}

M.GetCertificateSigningRequestInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
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
        CertificateSubject = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CertificateSubjectType }),
    },
}

M.GetCertificateSigningRequestOutput = {
    type = "structure",
    members = {
        CertificateSigningRequest = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDefaultKeyReplicationRegionsInput = {
    type = "structure",
}

M.GetDefaultKeyReplicationRegionsOutput = {
    type = "structure",
    members = {
        EnabledReplicationRegions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetKeyInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetKeyOutput = {
    type = "structure",
    members = {
        Key = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Key }),
    },
}

M.GetMpaTeamAssociationInput = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMpaTeamAssociationOutput = {
    type = "structure",
    members = {
        MpaTeamAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MpaTeamAssociation }),
    },
}

M.KeyMaterialType = {
    TR34_KEY_BLOCK = "TR34_KEY_BLOCK",
    TR31_KEY_BLOCK = "TR31_KEY_BLOCK",
    ROOT_PUBLIC_KEY_CERTIFICATE = "ROOT_PUBLIC_KEY_CERTIFICATE",
    TRUSTED_PUBLIC_KEY_CERTIFICATE = "TRUSTED_PUBLIC_KEY_CERTIFICATE",
    KEY_CRYPTOGRAM = "KEY_CRYPTOGRAM",
}

M.GetParametersForExportInput = {
    type = "structure",
    members = {
        KeyMaterialType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SigningKeyAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReuseLastGeneratedToken = {
            type = "boolean",
        },
    },
}

M.GetParametersForExportOutput = {
    type = "structure",
    members = {
        SigningKeyCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SigningKeyCertificateChain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SigningKeyAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExportToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParametersValidUntilTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetParametersForImportInput = {
    type = "structure",
    members = {
        KeyMaterialType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappingKeyAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReuseLastGeneratedToken = {
            type = "boolean",
        },
    },
}

M.GetParametersForImportOutput = {
    type = "structure",
    members = {
        WrappingKeyCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappingKeyCertificateChain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappingKeyAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImportToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParametersValidUntilTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPublicKeyCertificateInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPublicKeyCertificateOutput = {
    type = "structure",
    members = {
        KeyCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyCertificateChain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportAs2805KeyCryptogram = {
    type = "structure",
    members = {
        As2805KeyVariant = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyModesOfUse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyModesOfUse }),
        KeyAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Exportable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        WrappingKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappedKeyCryptogram = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportDiffieHellmanTr31KeyBlock = {
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

M.ImportKeyCryptogram = {
    type = "structure",
    members = {
        KeyAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyAttributes }),
        Exportable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        WrappedKeyCryptogram = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImportToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WrappingSpec = {
            type = "string",
        },
    },
}

M.RootCertificatePublicKey = {
    type = "structure",
    members = {
        KeyAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyAttributes }),
        PublicKeyCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportTr31KeyBlock = {
    type = "structure",
    members = {
        WrappingKeyIdentifier = {
            type = "string",
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

M.ImportTr34KeyBlock = {
    type = "structure",
    members = {
        CertificateAuthorityPublicKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SigningKeyCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImportToken = {
            type = "string",
            traits = {
                default = "",
            },
        },
        WrappingKeyIdentifier = {
            type = "string",
        },
        WrappingKeyCertificate = {
            type = "string",
        },
        WrappedKeyBlock = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyBlockFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RandomNonce = {
            type = "string",
        },
    },
}

M.TrustedCertificatePublicKey = {
    type = "structure",
    members = {
        KeyAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyAttributes }),
        PublicKeyCertificate = {
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
    },
}

M.ImportKeyMaterial = {
    type = "union",
    members = {
        RootCertificatePublicKey = M.RootCertificatePublicKey,
        TrustedCertificatePublicKey = M.TrustedCertificatePublicKey,
        Tr31KeyBlock = M.ImportTr31KeyBlock,
        Tr34KeyBlock = M.ImportTr34KeyBlock,
        KeyCryptogram = M.ImportKeyCryptogram,
        DiffieHellmanTr31KeyBlock = M.ImportDiffieHellmanTr31KeyBlock,
        As2805KeyCryptogram = M.ImportAs2805KeyCryptogram,
    },
}

M.ImportKeyInput = {
    type = "structure",
    members = {
        KeyMaterial = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportKeyMaterial }),
        KeyCheckValueAlgorithm = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ReplicationRegions = {
            type = "list",
            member = { type = "string" },
        },
        RequesterComment = {
            type = "string",
        },
    },
}

M.ImportKeyOutput = {
    type = "structure",
    members = {
        Key = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Key }),
    },
}

M.ListKeysInput = {
    type = "structure",
    members = {
        KeyState = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.KeySummary = {
    type = "structure",
    members = {
        KeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyAttributes }),
        KeyCheckValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Exportable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        MultiRegionKeyType = {
            type = "string",
        },
        PrimaryRegion = {
            type = "string",
        },
    },
}

M.ListKeysOutput = {
    type = "structure",
    members = {
        Keys = {
            type = "list",
            member = M.KeySummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RemoveKeyReplicationRegionsInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationRegions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveKeyReplicationRegionsOutput = {
    type = "structure",
    members = {
        Key = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Key }),
    },
}

M.RestoreKeyInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreKeyOutput = {
    type = "structure",
    members = {
        Key = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Key }),
    },
}

M.StartKeyUsageInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartKeyUsageOutput = {
    type = "structure",
    members = {
        Key = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Key }),
    },
}

M.StopKeyUsageInput = {
    type = "structure",
    members = {
        KeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopKeyUsageOutput = {
    type = "structure",
    members = {
        Key = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Key }),
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PublicPolicyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
}

return M
