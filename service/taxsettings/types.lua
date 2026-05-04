local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Address = {
    type = "structure",
    id = "Address",
    members = {
        addressLine1 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        addressLine2 = {
            type = "string",
        },
        addressLine3 = {
            type = "string",
        },
        districtOrCounty = {
            type = "string",
        },
        city = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateOrRegion = {
            type = "string",
        },
        postalCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        countryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddressRoleType = {
    TAX_ADDRESS = "TaxAddress",
    BILLING_ADDRESS = "BillingAddress",
    CONTACT_ADDRESS = "ContactAddress",
}

M.Jurisdiction = {
    type = "structure",
    id = "Jurisdiction",
    members = {
        stateOrRegion = {
            type = "string",
        },
        countryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccountMetaData = {
    type = "structure",
    id = "AccountMetaData",
    members = {
        accountName = {
            type = "string",
        },
        seller = {
            type = "string",
        },
        address = M.Address,
        addressType = {
            type = "string",
        },
        addressRoleMap = {
            type = "map",
            key = { type = "string" },
            value = M.Jurisdiction,
        },
    },
}

M.TaxInheritanceDetails = {
    type = "structure",
    id = "TaxInheritanceDetails",
    members = {
        parentEntityId = {
            type = "string",
        },
        inheritanceObtainedReason = {
            type = "string",
        },
    },
}

M.BrazilAdditionalInfo = {
    type = "structure",
    id = "BrazilAdditionalInfo",
    members = {
        ccmCode = {
            type = "string",
        },
        legalNatureCode = {
            type = "string",
        },
    },
}

M.CanadaAdditionalInfo = {
    type = "structure",
    id = "CanadaAdditionalInfo",
    members = {
        provincialSalesTaxId = {
            type = "string",
        },
        canadaQuebecSalesTaxNumber = {
            type = "string",
        },
        canadaRetailSalesTaxNumber = {
            type = "string",
        },
        isResellerAccount = {
            type = "boolean",
        },
    },
}

M.EgyptAdditionalInfo = {
    type = "structure",
    id = "EgyptAdditionalInfo",
    members = {
        uniqueIdentificationNumber = {
            type = "string",
        },
        uniqueIdentificationNumberExpirationDate = {
            type = "string",
        },
    },
}

M.EstoniaAdditionalInfo = {
    type = "structure",
    id = "EstoniaAdditionalInfo",
    members = {
        registryCommercialCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PersonType = {
    LEGAL_PERSON = "Legal Person",
    PHYSICAL_PERSON = "Physical Person",
    BUSINESS = "Business",
}

M.GeorgiaAdditionalInfo = {
    type = "structure",
    id = "GeorgiaAdditionalInfo",
    members = {
        personType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GreeceAdditionalInfo = {
    type = "structure",
    id = "GreeceAdditionalInfo",
    members = {
        contractingAuthorityCode = {
            type = "string",
        },
    },
}

M.IndiaAdditionalInfo = {
    type = "structure",
    id = "IndiaAdditionalInfo",
    members = {
        pan = {
            type = "string",
        },
    },
}

M.IndonesiaTaxRegistrationNumberType = {
    NIK = "NIK",
    PASSPORT_NUMBER = "PassportNumber",
    NPWP = "NPWP",
    NITKU = "NITKU",
}

M.IndonesiaAdditionalInfo = {
    type = "structure",
    id = "IndonesiaAdditionalInfo",
    members = {
        taxRegistrationNumberType = {
            type = "string",
        },
        ppnExceptionDesignationCode = {
            type = "string",
        },
        decisionNumber = {
            type = "string",
        },
    },
}

M.IsraelCustomerType = {
    BUSINESS = "Business",
    INDIVIDUAL = "Individual",
}

M.IsraelDealerType = {
    AUTHORIZED = "Authorized",
    NON_AUTHORIZED = "Non-authorized",
}

M.IsraelAdditionalInfo = {
    type = "structure",
    id = "IsraelAdditionalInfo",
    members = {
        dealerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ItalyAdditionalInfo = {
    type = "structure",
    id = "ItalyAdditionalInfo",
    members = {
        sdiAccountId = {
            type = "string",
        },
        cigNumber = {
            type = "string",
        },
        cupNumber = {
            type = "string",
        },
        taxCode = {
            type = "string",
        },
    },
}

M.KenyaAdditionalInfo = {
    type = "structure",
    id = "KenyaAdditionalInfo",
    members = {
        personType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MalaysiaServiceTaxCode = {
    CONSULTANCY = "Consultancy",
    DIGITAL_SVC_ELECTRONIC_MEDIUM = "Digital Service And Electronic Medium",
    IT_SERVICES = "IT Services",
    TRAINING_OR_COACHING = "Training Or Coaching",
}

M.MalaysiaAdditionalInfo = {
    type = "structure",
    id = "MalaysiaAdditionalInfo",
    members = {
        serviceTaxCodes = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
            },
        },
        taxInformationNumber = {
            type = "string",
        },
        businessRegistrationNumber = {
            type = "string",
        },
    },
}

M.PolandAdditionalInfo = {
    type = "structure",
    id = "PolandAdditionalInfo",
    members = {
        individualRegistrationNumber = {
            type = "string",
        },
        isGroupVatEnabled = {
            type = "boolean",
        },
    },
}

M.TaxRegistrationNumberType = {
    TAX_REGISTRATION_NUMBER = "TaxRegistrationNumber",
    LOCAL_REGISTRATION_NUMBER = "LocalRegistrationNumber",
}

M.RomaniaAdditionalInfo = {
    type = "structure",
    id = "RomaniaAdditionalInfo",
    members = {
        taxRegistrationNumberType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SaudiArabiaTaxRegistrationNumberType = {
    TAX_REGISTRATION_NUMBER = "TaxRegistrationNumber",
    TAX_IDENTIFICATION_NUMBER = "TaxIdentificationNumber",
    COMMERCIAL_REGISTRATION_NUMBER = "CommercialRegistrationNumber",
}

M.SaudiArabiaAdditionalInfo = {
    type = "structure",
    id = "SaudiArabiaAdditionalInfo",
    members = {
        taxRegistrationNumberType = {
            type = "string",
        },
    },
}

M.SouthKoreaAdditionalInfo = {
    type = "structure",
    id = "SouthKoreaAdditionalInfo",
    members = {
        businessRepresentativeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lineOfBusiness = {
            type = "string",
            traits = {
                required = true,
            },
        },
        itemOfBusiness = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegistrationType = {
    INTRA_EU = "Intra-EU",
    LOCAL = "Local",
}

M.SpainAdditionalInfo = {
    type = "structure",
    id = "SpainAdditionalInfo",
    members = {
        registrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Industries = {
    CIRCULATING_ORG = "CirculatingOrg",
    PROFESSIONAL_ORG = "ProfessionalOrg",
    BANKS = "Banks",
    INSURANCE = "Insurance",
    PENSION_AND_BENEFIT_FUNDS = "PensionAndBenefitFunds",
    DEVELOPMENT_AGENCIES = "DevelopmentAgencies",
}

M.TurkeyAdditionalInfo = {
    type = "structure",
    id = "TurkeyAdditionalInfo",
    members = {
        taxOffice = {
            type = "string",
        },
        kepEmailId = {
            type = "string",
        },
        secondaryTaxId = {
            type = "string",
        },
        industries = {
            type = "string",
        },
    },
}

M.UkraineTrnType = {
    BUSINESS = "Business",
    INDIVIDUAL = "Individual",
}

M.UkraineAdditionalInfo = {
    type = "structure",
    id = "UkraineAdditionalInfo",
    members = {
        ukraineTrnType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UzbekistanTaxRegistrationNumberType = {
    BUSINESS = "Business",
    INDIVIDUAL = "Individual",
}

M.UzbekistanAdditionalInfo = {
    type = "structure",
    id = "UzbekistanAdditionalInfo",
    members = {
        taxRegistrationNumberType = {
            type = "string",
        },
        vatRegistrationNumber = {
            type = "string",
        },
    },
}

M.VietnamAdditionalInfo = {
    type = "structure",
    id = "VietnamAdditionalInfo",
    members = {
        enterpriseIdentificationNumber = {
            type = "string",
        },
        electronicTransactionCodeNumber = {
            type = "string",
        },
        paymentVoucherNumber = {
            type = "string",
        },
        paymentVoucherNumberDate = {
            type = "string",
        },
    },
}

M.AdditionalInfoResponse = {
    type = "structure",
    id = "AdditionalInfoResponse",
    members = {
        malaysiaAdditionalInfo = M.MalaysiaAdditionalInfo,
        israelAdditionalInfo = M.IsraelAdditionalInfo,
        estoniaAdditionalInfo = M.EstoniaAdditionalInfo,
        canadaAdditionalInfo = M.CanadaAdditionalInfo,
        brazilAdditionalInfo = M.BrazilAdditionalInfo,
        spainAdditionalInfo = M.SpainAdditionalInfo,
        kenyaAdditionalInfo = M.KenyaAdditionalInfo,
        southKoreaAdditionalInfo = M.SouthKoreaAdditionalInfo,
        turkeyAdditionalInfo = M.TurkeyAdditionalInfo,
        georgiaAdditionalInfo = M.GeorgiaAdditionalInfo,
        italyAdditionalInfo = M.ItalyAdditionalInfo,
        romaniaAdditionalInfo = M.RomaniaAdditionalInfo,
        ukraineAdditionalInfo = M.UkraineAdditionalInfo,
        polandAdditionalInfo = M.PolandAdditionalInfo,
        saudiArabiaAdditionalInfo = M.SaudiArabiaAdditionalInfo,
        indiaAdditionalInfo = M.IndiaAdditionalInfo,
        indonesiaAdditionalInfo = M.IndonesiaAdditionalInfo,
        vietnamAdditionalInfo = M.VietnamAdditionalInfo,
        egyptAdditionalInfo = M.EgyptAdditionalInfo,
        greeceAdditionalInfo = M.GreeceAdditionalInfo,
        uzbekistanAdditionalInfo = M.UzbekistanAdditionalInfo,
    },
}

M.TaxRegistrationType = {
    VAT = "VAT",
    GST = "GST",
    CPF = "CPF",
    CNPJ = "CNPJ",
    SST = "SST",
    TIN = "TIN",
    NRIC = "NRIC",
}

M.Sector = {
    BUSINESS = "Business",
    INDIVIDUAL = "Individual",
    PUBLIC_INSTITUTIONS = "Government",
}

M.TaxRegistrationStatus = {
    VERIFIED = "Verified",
    PENDING = "Pending",
    DELETED = "Deleted",
    REJECTED = "Rejected",
}

M.TaxDocumentMetadata = {
    type = "structure",
    id = "TaxDocumentMetadata",
    members = {
        taxDocumentAccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taxDocumentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaxRegistrationWithJurisdiction = {
    type = "structure",
    id = "TaxRegistrationWithJurisdiction",
    members = {
        registrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        legalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sector = {
            type = "string",
        },
        taxDocumentMetadatas = {
            type = "list",
            member = M.TaxDocumentMetadata,
        },
        certifiedEmailId = {
            type = "string",
        },
        additionalTaxInformation = M.AdditionalInfoResponse,
        jurisdiction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Jurisdiction }),
    },
}

M.AccountDetails = {
    type = "structure",
    id = "AccountDetails",
    members = {
        accountId = {
            type = "string",
        },
        taxRegistration = M.TaxRegistrationWithJurisdiction,
        taxInheritanceDetails = M.TaxInheritanceDetails,
        accountMetaData = M.AccountMetaData,
    },
}

M.AdditionalInfoRequest = {
    type = "structure",
    id = "AdditionalInfoRequest",
    members = {
        malaysiaAdditionalInfo = M.MalaysiaAdditionalInfo,
        israelAdditionalInfo = M.IsraelAdditionalInfo,
        estoniaAdditionalInfo = M.EstoniaAdditionalInfo,
        canadaAdditionalInfo = M.CanadaAdditionalInfo,
        spainAdditionalInfo = M.SpainAdditionalInfo,
        kenyaAdditionalInfo = M.KenyaAdditionalInfo,
        southKoreaAdditionalInfo = M.SouthKoreaAdditionalInfo,
        turkeyAdditionalInfo = M.TurkeyAdditionalInfo,
        georgiaAdditionalInfo = M.GeorgiaAdditionalInfo,
        italyAdditionalInfo = M.ItalyAdditionalInfo,
        romaniaAdditionalInfo = M.RomaniaAdditionalInfo,
        ukraineAdditionalInfo = M.UkraineAdditionalInfo,
        polandAdditionalInfo = M.PolandAdditionalInfo,
        saudiArabiaAdditionalInfo = M.SaudiArabiaAdditionalInfo,
        indonesiaAdditionalInfo = M.IndonesiaAdditionalInfo,
        vietnamAdditionalInfo = M.VietnamAdditionalInfo,
        egyptAdditionalInfo = M.EgyptAdditionalInfo,
        greeceAdditionalInfo = M.GreeceAdditionalInfo,
        uzbekistanAdditionalInfo = M.UzbekistanAdditionalInfo,
    },
}

M.AttachmentUploadException = {
    type = "structure",
    id = "AttachmentUploadException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Authority = {
    type = "structure",
    id = "Authority",
    members = {
        country = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
        },
    },
}

M.BatchDeleteTaxRegistrationInput = {
    type = "structure",
    id = "BatchDeleteTaxRegistrationInput",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteTaxRegistrationError = {
    type = "structure",
    id = "BatchDeleteTaxRegistrationError",
    members = {
        accountId = {
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
        code = {
            type = "string",
        },
    },
}

M.BatchDeleteTaxRegistrationOutput = {
    type = "structure",
    id = "BatchDeleteTaxRegistrationOutput",
    members = {
        errors = {
            type = "list",
            member = M.BatchDeleteTaxRegistrationError,
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
        errorCode = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionErrorCode = {
    MALFORMED_TOKEN = "MalformedToken",
    EXPIRED_TOKEN = "ExpiredToken",
    INVALID_TOKEN = "InvalidToken",
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    MISSING_INPUT = "MissingInput",
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
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
        errorCode = {
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

M.BatchGetTaxExemptionsInput = {
    type = "structure",
    id = "BatchGetTaxExemptionsInput",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EntityExemptionAccountStatus = {
    None = "None",
    Valid = "Valid",
    Expired = "Expired",
    Pending = "Pending",
}

M.TaxExemptionType = {
    type = "structure",
    id = "TaxExemptionType",
    members = {
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        applicableJurisdictions = {
            type = "list",
            member = M.Authority,
        },
    },
}

M.TaxExemption = {
    type = "structure",
    id = "TaxExemption",
    members = {
        authority = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Authority }),
        taxExemptionType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaxExemptionType }),
        effectiveDate = {
            type = "timestamp",
        },
        expirationDate = {
            type = "timestamp",
        },
        systemEffectiveDate = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.TaxExemptionDetails = {
    type = "structure",
    id = "TaxExemptionDetails",
    members = {
        taxExemptions = {
            type = "list",
            member = M.TaxExemption,
        },
        heritageObtainedDetails = {
            type = "boolean",
        },
        heritageObtainedParentEntity = {
            type = "string",
        },
        heritageObtainedReason = {
            type = "string",
        },
    },
}

M.BatchGetTaxExemptionsOutput = {
    type = "structure",
    id = "BatchGetTaxExemptionsOutput",
    members = {
        taxExemptionDetailsMap = {
            type = "map",
            key = { type = "string" },
            value = M.TaxExemptionDetails,
        },
        failedAccounts = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaxRegistrationDocFile = {
    type = "structure",
    id = "TaxRegistrationDocFile",
    members = {
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileContent = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceS3Location = {
    type = "structure",
    id = "SourceS3Location",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaxRegistrationDocument = {
    type = "structure",
    id = "TaxRegistrationDocument",
    members = {
        s3Location = M.SourceS3Location,
        file = M.TaxRegistrationDocFile,
    },
}

M.VerificationDetails = {
    type = "structure",
    id = "VerificationDetails",
    members = {
        dateOfBirth = {
            type = "string",
        },
        taxRegistrationDocuments = {
            type = "list",
            member = M.TaxRegistrationDocument,
        },
    },
}

M.TaxRegistrationEntry = {
    type = "structure",
    id = "TaxRegistrationEntry",
    members = {
        registrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        legalName = {
            type = "string",
        },
        legalAddress = M.Address,
        sector = {
            type = "string",
        },
        additionalTaxInformation = M.AdditionalInfoRequest,
        verificationDetails = M.VerificationDetails,
        certifiedEmailId = {
            type = "string",
        },
    },
}

M.BatchPutTaxRegistrationInput = {
    type = "structure",
    id = "BatchPutTaxRegistrationInput",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        taxRegistrationEntry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaxRegistrationEntry }),
    },
}

M.BatchPutTaxRegistrationError = {
    type = "structure",
    id = "BatchPutTaxRegistrationError",
    members = {
        accountId = {
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
        code = {
            type = "string",
        },
    },
}

M.BatchPutTaxRegistrationOutput = {
    type = "structure",
    id = "BatchPutTaxRegistrationOutput",
    members = {
        status = {
            type = "string",
        },
        errors = {
            type = "list",
            member = M.BatchPutTaxRegistrationError,
            traits = {
                required = true,
            },
        },
    },
}

M.CaseCreationLimitExceededException = {
    type = "structure",
    id = "CaseCreationLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSupplementalTaxRegistrationInput = {
    type = "structure",
    id = "DeleteSupplementalTaxRegistrationInput",
    members = {
        authorityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSupplementalTaxRegistrationOutput = {
    type = "structure",
    id = "DeleteSupplementalTaxRegistrationOutput",
}

M.DeleteTaxRegistrationInput = {
    type = "structure",
    id = "DeleteTaxRegistrationInput",
    members = {
        accountId = {
            type = "string",
        },
    },
}

M.DeleteTaxRegistrationOutput = {
    type = "structure",
    id = "DeleteTaxRegistrationOutput",
}

M.DestinationS3Location = {
    type = "structure",
    id = "DestinationS3Location",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
        },
    },
}

M.ExemptionCertificate = {
    type = "structure",
    id = "ExemptionCertificate",
    members = {
        documentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentFile = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTaxExemptionTypesInput = {
    type = "structure",
    id = "GetTaxExemptionTypesInput",
}

M.GetTaxExemptionTypesOutput = {
    type = "structure",
    id = "GetTaxExemptionTypesOutput",
    members = {
        taxExemptionTypes = {
            type = "list",
            member = M.TaxExemptionType,
        },
    },
}

M.GetTaxInheritanceInput = {
    type = "structure",
    id = "GetTaxInheritanceInput",
}

M.HeritageStatus = {
    OptIn = "OptIn",
    OptOut = "OptOut",
}

M.GetTaxInheritanceOutput = {
    type = "structure",
    id = "GetTaxInheritanceOutput",
    members = {
        heritageStatus = {
            type = "string",
        },
    },
}

M.GetTaxRegistrationInput = {
    type = "structure",
    id = "GetTaxRegistrationInput",
    members = {
        accountId = {
            type = "string",
        },
    },
}

M.TaxRegistration = {
    type = "structure",
    id = "TaxRegistration",
    members = {
        registrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        legalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sector = {
            type = "string",
        },
        taxDocumentMetadatas = {
            type = "list",
            member = M.TaxDocumentMetadata,
        },
        certifiedEmailId = {
            type = "string",
        },
        additionalTaxInformation = M.AdditionalInfoResponse,
        legalAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Address }),
    },
}

M.GetTaxRegistrationOutput = {
    type = "structure",
    id = "GetTaxRegistrationOutput",
    members = {
        taxRegistration = M.TaxRegistration,
    },
}

M.GetTaxRegistrationDocumentInput = {
    type = "structure",
    id = "GetTaxRegistrationDocumentInput",
    members = {
        destinationS3Location = M.DestinationS3Location,
        taxDocumentMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaxDocumentMetadata }),
    },
}

M.GetTaxRegistrationDocumentOutput = {
    type = "structure",
    id = "GetTaxRegistrationDocumentOutput",
    members = {
        destinationFilePath = {
            type = "string",
        },
        presignedS3Url = {
            type = "string",
        },
    },
}

M.ListSupplementalTaxRegistrationsInput = {
    type = "structure",
    id = "ListSupplementalTaxRegistrationsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SupplementalTaxRegistrationType = {
    VAT = "VAT",
}

M.SupplementalTaxRegistration = {
    type = "structure",
    id = "SupplementalTaxRegistration",
    members = {
        registrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        legalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        address = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Address }),
        authorityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSupplementalTaxRegistrationsOutput = {
    type = "structure",
    id = "ListSupplementalTaxRegistrationsOutput",
    members = {
        taxRegistrations = {
            type = "list",
            member = M.SupplementalTaxRegistration,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTaxExemptionsInput = {
    type = "structure",
    id = "ListTaxExemptionsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTaxExemptionsOutput = {
    type = "structure",
    id = "ListTaxExemptionsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        taxExemptionDetailsMap = {
            type = "map",
            key = { type = "string" },
            value = M.TaxExemptionDetails,
        },
    },
}

M.ListTaxRegistrationsInput = {
    type = "structure",
    id = "ListTaxRegistrationsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTaxRegistrationsOutput = {
    type = "structure",
    id = "ListTaxRegistrationsOutput",
    members = {
        accountDetails = {
            type = "list",
            member = M.AccountDetails,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SupplementalTaxRegistrationEntry = {
    type = "structure",
    id = "SupplementalTaxRegistrationEntry",
    members = {
        registrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        legalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        address = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Address }),
    },
}

M.PutSupplementalTaxRegistrationInput = {
    type = "structure",
    id = "PutSupplementalTaxRegistrationInput",
    members = {
        taxRegistrationEntry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SupplementalTaxRegistrationEntry }),
    },
}

M.PutSupplementalTaxRegistrationOutput = {
    type = "structure",
    id = "PutSupplementalTaxRegistrationOutput",
    members = {
        authorityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTaxExemptionInput = {
    type = "structure",
    id = "PutTaxExemptionInput",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        authority = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Authority }),
        exemptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exemptionCertificate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExemptionCertificate }),
    },
}

M.PutTaxExemptionOutput = {
    type = "structure",
    id = "PutTaxExemptionOutput",
    members = {
        caseId = {
            type = "string",
        },
    },
}

M.PutTaxInheritanceInput = {
    type = "structure",
    id = "PutTaxInheritanceInput",
    members = {
        heritageStatus = {
            type = "string",
        },
    },
}

M.PutTaxInheritanceOutput = {
    type = "structure",
    id = "PutTaxInheritanceOutput",
}

M.PutTaxRegistrationInput = {
    type = "structure",
    id = "PutTaxRegistrationInput",
    members = {
        accountId = {
            type = "string",
        },
        taxRegistrationEntry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaxRegistrationEntry }),
    },
}

M.PutTaxRegistrationOutput = {
    type = "structure",
    id = "PutTaxRegistrationOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

return M
