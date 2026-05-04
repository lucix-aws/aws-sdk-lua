local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        accountName = {
            type = "string",
        },
        seller = {
            type = "string",
        },
        address = {
            type = "structure",
        },
        addressType = {
            type = "string",
        },
        addressRoleMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.TaxInheritanceDetails = {
    type = "structure",
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
    members = {
        contractingAuthorityCode = {
            type = "string",
        },
    },
}

M.IndiaAdditionalInfo = {
    type = "structure",
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
    members = {
        serviceTaxCodes = {
            type = "list",
            member_type = "string",
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
    members = {
        taxRegistrationNumberType = {
            type = "string",
        },
    },
}

M.SouthKoreaAdditionalInfo = {
    type = "structure",
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
    members = {
        malaysiaAdditionalInfo = {
            type = "structure",
        },
        israelAdditionalInfo = {
            type = "structure",
        },
        estoniaAdditionalInfo = {
            type = "structure",
        },
        canadaAdditionalInfo = {
            type = "structure",
        },
        brazilAdditionalInfo = {
            type = "structure",
        },
        spainAdditionalInfo = {
            type = "structure",
        },
        kenyaAdditionalInfo = {
            type = "structure",
        },
        southKoreaAdditionalInfo = {
            type = "structure",
        },
        turkeyAdditionalInfo = {
            type = "structure",
        },
        georgiaAdditionalInfo = {
            type = "structure",
        },
        italyAdditionalInfo = {
            type = "structure",
        },
        romaniaAdditionalInfo = {
            type = "structure",
        },
        ukraineAdditionalInfo = {
            type = "structure",
        },
        polandAdditionalInfo = {
            type = "structure",
        },
        saudiArabiaAdditionalInfo = {
            type = "structure",
        },
        indiaAdditionalInfo = {
            type = "structure",
        },
        indonesiaAdditionalInfo = {
            type = "structure",
        },
        vietnamAdditionalInfo = {
            type = "structure",
        },
        egyptAdditionalInfo = {
            type = "structure",
        },
        greeceAdditionalInfo = {
            type = "structure",
        },
        uzbekistanAdditionalInfo = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        certifiedEmailId = {
            type = "string",
        },
        additionalTaxInformation = {
            type = "structure",
        },
        jurisdiction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AccountDetails = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        taxRegistration = {
            type = "structure",
        },
        taxInheritanceDetails = {
            type = "structure",
        },
        accountMetaData = {
            type = "structure",
        },
    },
}

M.AdditionalInfoRequest = {
    type = "structure",
    members = {
        malaysiaAdditionalInfo = {
            type = "structure",
        },
        israelAdditionalInfo = {
            type = "structure",
        },
        estoniaAdditionalInfo = {
            type = "structure",
        },
        canadaAdditionalInfo = {
            type = "structure",
        },
        spainAdditionalInfo = {
            type = "structure",
        },
        kenyaAdditionalInfo = {
            type = "structure",
        },
        southKoreaAdditionalInfo = {
            type = "structure",
        },
        turkeyAdditionalInfo = {
            type = "structure",
        },
        georgiaAdditionalInfo = {
            type = "structure",
        },
        italyAdditionalInfo = {
            type = "structure",
        },
        romaniaAdditionalInfo = {
            type = "structure",
        },
        ukraineAdditionalInfo = {
            type = "structure",
        },
        polandAdditionalInfo = {
            type = "structure",
        },
        saudiArabiaAdditionalInfo = {
            type = "structure",
        },
        indonesiaAdditionalInfo = {
            type = "structure",
        },
        vietnamAdditionalInfo = {
            type = "structure",
        },
        egyptAdditionalInfo = {
            type = "structure",
        },
        greeceAdditionalInfo = {
            type = "structure",
        },
        uzbekistanAdditionalInfo = {
            type = "structure",
        },
    },
}

M.AttachmentUploadException = {
    type = "structure",
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
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteTaxRegistrationError = {
    type = "structure",
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
    members = {
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.BatchGetTaxExemptionsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
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
    members = {
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        applicableJurisdictions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TaxExemption = {
    type = "structure",
    members = {
        authority = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        taxExemptionType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        taxExemptions = {
            type = "list",
            member_type = "structure",
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
    members = {
        taxExemptionDetailsMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        failedAccounts = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
    members = {
        s3Location = {
            type = "structure",
        },
        file = {
            type = "structure",
        },
    },
}

M.VerificationDetails = {
    type = "structure",
    members = {
        dateOfBirth = {
            type = "string",
        },
        taxRegistrationDocuments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TaxRegistrationEntry = {
    type = "structure",
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
        legalAddress = {
            type = "structure",
        },
        sector = {
            type = "string",
        },
        additionalTaxInformation = {
            type = "structure",
        },
        verificationDetails = {
            type = "structure",
        },
        certifiedEmailId = {
            type = "string",
        },
    },
}

M.BatchPutTaxRegistrationInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        taxRegistrationEntry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutTaxRegistrationError = {
    type = "structure",
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
    members = {
        status = {
            type = "string",
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CaseCreationLimitExceededException = {
    type = "structure",
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
}

M.DeleteTaxRegistrationInput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
    },
}

M.DeleteTaxRegistrationOutput = {
    type = "structure",
}

M.DestinationS3Location = {
    type = "structure",
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
}

M.GetTaxExemptionTypesOutput = {
    type = "structure",
    members = {
        taxExemptionTypes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetTaxInheritanceInput = {
    type = "structure",
}

M.HeritageStatus = {
    OptIn = "OptIn",
    OptOut = "OptOut",
}

M.GetTaxInheritanceOutput = {
    type = "structure",
    members = {
        heritageStatus = {
            type = "string",
        },
    },
}

M.GetTaxRegistrationInput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
    },
}

M.TaxRegistration = {
    type = "structure",
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
            member_type = "structure",
        },
        certifiedEmailId = {
            type = "string",
        },
        additionalTaxInformation = {
            type = "structure",
        },
        legalAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTaxRegistrationOutput = {
    type = "structure",
    members = {
        taxRegistration = {
            type = "structure",
        },
    },
}

M.GetTaxRegistrationDocumentInput = {
    type = "structure",
    members = {
        destinationS3Location = {
            type = "structure",
        },
        taxDocumentMetadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTaxRegistrationDocumentOutput = {
    type = "structure",
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
    members = {
        maxResults = {
            type = "number",
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
        address = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        taxRegistrations = {
            type = "list",
            member_type = "structure",
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
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTaxExemptionsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        taxExemptionDetailsMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ListTaxRegistrationsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTaxRegistrationsOutput = {
    type = "structure",
    members = {
        accountDetails = {
            type = "list",
            member_type = "structure",
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
        address = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutSupplementalTaxRegistrationInput = {
    type = "structure",
    members = {
        taxRegistrationEntry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutSupplementalTaxRegistrationOutput = {
    type = "structure",
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
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        authority = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        exemptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exemptionCertificate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTaxExemptionOutput = {
    type = "structure",
    members = {
        caseId = {
            type = "string",
        },
    },
}

M.PutTaxInheritanceInput = {
    type = "structure",
    members = {
        heritageStatus = {
            type = "string",
        },
    },
}

M.PutTaxInheritanceOutput = {
    type = "structure",
}

M.PutTaxRegistrationInput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        taxRegistrationEntry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTaxRegistrationOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

return M
