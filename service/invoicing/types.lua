local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
    },
}

M.DiscountsBreakdownAmount = {
    type = "structure",
    id = "DiscountsBreakdownAmount",
    members = {
        Description = {
            type = "string",
        },
        Amount = {
            type = "string",
        },
        Rate = {
            type = "string",
        },
    },
}

M.DiscountsBreakdown = {
    type = "structure",
    id = "DiscountsBreakdown",
    members = {
        Breakdown = {
            type = "list",
            member = M.DiscountsBreakdownAmount,
        },
        TotalAmount = {
            type = "string",
        },
    },
}

M.FeesBreakdownAmount = {
    type = "structure",
    id = "FeesBreakdownAmount",
    members = {
        Description = {
            type = "string",
        },
        Amount = {
            type = "string",
        },
        Rate = {
            type = "string",
        },
    },
}

M.FeesBreakdown = {
    type = "structure",
    id = "FeesBreakdown",
    members = {
        Breakdown = {
            type = "list",
            member = M.FeesBreakdownAmount,
        },
        TotalAmount = {
            type = "string",
        },
    },
}

M.TaxesBreakdownAmount = {
    type = "structure",
    id = "TaxesBreakdownAmount",
    members = {
        Description = {
            type = "string",
        },
        Amount = {
            type = "string",
        },
        Rate = {
            type = "string",
        },
    },
}

M.TaxesBreakdown = {
    type = "structure",
    id = "TaxesBreakdown",
    members = {
        Breakdown = {
            type = "list",
            member = M.TaxesBreakdownAmount,
        },
        TotalAmount = {
            type = "string",
        },
    },
}

M.AmountBreakdown = {
    type = "structure",
    id = "AmountBreakdown",
    members = {
        SubTotalAmount = {
            type = "string",
        },
        Discounts = M.DiscountsBreakdown,
        Taxes = M.TaxesBreakdown,
        Fees = M.FeesBreakdown,
    },
}

M.BatchGetInvoiceProfileInput = {
    type = "structure",
    id = "BatchGetInvoiceProfileInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ReceiverAddress = {
    type = "structure",
    id = "ReceiverAddress",
    members = {
        AddressLine1 = {
            type = "string",
        },
        AddressLine2 = {
            type = "string",
        },
        AddressLine3 = {
            type = "string",
        },
        DistrictOrCounty = {
            type = "string",
        },
        City = {
            type = "string",
        },
        StateOrRegion = {
            type = "string",
        },
        CountryCode = {
            type = "string",
        },
        CompanyName = {
            type = "string",
        },
        PostalCode = {
            type = "string",
        },
    },
}

M.InvoiceProfile = {
    type = "structure",
    id = "InvoiceProfile",
    members = {
        AccountId = {
            type = "string",
        },
        ReceiverName = {
            type = "string",
        },
        ReceiverAddress = M.ReceiverAddress,
        ReceiverEmail = {
            type = "string",
        },
        Issuer = {
            type = "string",
        },
        TaxRegistrationNumber = {
            type = "string",
        },
    },
}

M.BatchGetInvoiceProfileOutput = {
    type = "structure",
    id = "BatchGetInvoiceProfileOutput",
    members = {
        Profiles = {
            type = "list",
            member = M.InvoiceProfile,
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
        message = {
            type = "string",
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
        },
        resourceName = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    NON_MEMBERS_PRESENT = "nonMemberPresent",
    MAX_ACCOUNTS_EXCEEDED = "maxAccountsExceeded",
    MAX_INVOICE_UNITS_EXCEEDED = "maxInvoiceUnitsExceeded",
    DUPLICATE_INVOICE_UNIT = "duplicateInvoiceUnit",
    MUTUAL_EXCLUSION_ERROR = "mutualExclusionError",
    ACCOUNT_MEMBERSHIP_ERROR = "accountMembershipError",
    TAX_SETTINGS_ERROR = "taxSettingsError",
    EXPIRED_NEXT_TOKEN = "expiredNextToken",
    INVALID_NEXT_TOKEN = "invalidNextToken",
    INVALID_INPUT = "invalidInput",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    CANNOT_PARSE = "cannotParse",
    UNKNOWN_OPERATION = "unknownOperation",
    OTHER = "other",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.BillingPeriod = {
    type = "structure",
    id = "BillingPeriod",
    members = {
        Month = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Year = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.BuyerDomain = {
    NetworkID = "NetworkID",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ConnectionTestingMethod = {
    PROD_ENV_DOLLAR_TEST = "PROD_ENV_DOLLAR_TEST",
    TEST_ENV_REPLAY_TEST = "TEST_ENV_REPLAY_TEST",
}

M.Contact = {
    type = "structure",
    id = "Contact",
    members = {
        Name = {
            type = "string",
        },
        Email = {
            type = "string",
        },
    },
}

M.ResourceTag = {
    type = "structure",
    id = "ResourceTag",
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

M.InvoiceUnitRule = {
    type = "structure",
    id = "InvoiceUnitRule",
    members = {
        LinkedAccounts = {
            type = "list",
            member = { type = "string" },
        },
        BillSourceAccounts = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateInvoiceUnitInput = {
    type = "structure",
    id = "CreateInvoiceUnitInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvoiceReceiver = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        TaxInheritanceDisabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InvoiceUnitRule }),
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.CreateInvoiceUnitOutput = {
    type = "structure",
    id = "CreateInvoiceUnitOutput",
    members = {
        InvoiceUnitArn = {
            type = "string",
        },
    },
}

M.EinvoiceDeliveryAttachmentType = {
    INVOICE_PDF = "INVOICE_PDF",
    RFP_PDF = "RFP_PDF",
}

M.EinvoiceDeliveryDocumentType = {
    AWS_CLOUD_INVOICE = "AWS_CLOUD_INVOICE",
    AWS_CLOUD_CREDIT_MEMO = "AWS_CLOUD_CREDIT_MEMO",
    AWS_MARKETPLACE_INVOICE = "AWS_MARKETPLACE_INVOICE",
    AWS_MARKETPLACE_CREDIT_MEMO = "AWS_MARKETPLACE_CREDIT_MEMO",
    AWS_REQUEST_FOR_PAYMENT = "AWS_REQUEST_FOR_PAYMENT",
}

M.Protocol = {
    CXML = "CXML",
}

M.PurchaseOrderDataSourceType = {
    ASSOCIATED_PURCHASE_ORDER_REQUIRED = "ASSOCIATED_PURCHASE_ORDER_REQUIRED",
    PURCHASE_ORDER_NOT_REQUIRED = "PURCHASE_ORDER_NOT_REQUIRED",
}

M.PurchaseOrderDataSource = {
    type = "structure",
    id = "PurchaseOrderDataSource",
    members = {
        EinvoiceDeliveryDocumentType = {
            type = "string",
        },
        PurchaseOrderDataSourceType = {
            type = "string",
        },
    },
}

M.EinvoiceDeliveryPreference = {
    type = "structure",
    id = "EinvoiceDeliveryPreference",
    members = {
        EinvoiceDeliveryDocumentTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        EinvoiceDeliveryAttachmentTypes = {
            type = "list",
            member = { type = "string" },
        },
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PurchaseOrderDataSources = {
            type = "list",
            member = M.PurchaseOrderDataSource,
            traits = {
                required = true,
            },
        },
        ConnectionTestingMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EinvoiceDeliveryActivationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ProcurementPortalName = {
    SAP_BUSINESS_NETWORK = "SAP_BUSINESS_NETWORK",
    COUPA = "COUPA",
}

M.ProcurementPortalPreferenceSelector = {
    type = "structure",
    id = "ProcurementPortalPreferenceSelector",
    members = {
        InvoiceUnitArns = {
            type = "list",
            member = { type = "string" },
        },
        SellerOfRecords = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SupplierDomain = {
    NetworkID = "NetworkID",
}

M.TestEnvPreferenceInput = {
    type = "structure",
    id = "TestEnvPreferenceInput",
    members = {
        BuyerDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BuyerIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplierDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplierIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcurementPortalSharedSecret = {
            type = "string",
        },
        ProcurementPortalInstanceEndpoint = {
            type = "string",
        },
    },
}

M.CreateProcurementPortalPreferenceInput = {
    type = "structure",
    id = "CreateProcurementPortalPreferenceInput",
    members = {
        ProcurementPortalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BuyerDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BuyerIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplierDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplierIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Selector = M.ProcurementPortalPreferenceSelector,
        ProcurementPortalSharedSecret = {
            type = "string",
        },
        ProcurementPortalInstanceEndpoint = {
            type = "string",
        },
        TestEnvPreference = M.TestEnvPreferenceInput,
        EinvoiceDeliveryEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        EinvoiceDeliveryPreference = M.EinvoiceDeliveryPreference,
        PurchaseOrderRetrievalEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Contacts = {
            type = "list",
            member = M.Contact,
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateProcurementPortalPreferenceOutput = {
    type = "structure",
    id = "CreateProcurementPortalPreferenceOutput",
    members = {
        ProcurementPortalPreferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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

M.CurrencyExchangeDetails = {
    type = "structure",
    id = "CurrencyExchangeDetails",
    members = {
        SourceCurrencyCode = {
            type = "string",
        },
        TargetCurrencyCode = {
            type = "string",
        },
        Rate = {
            type = "string",
        },
    },
}

M.DateInterval = {
    type = "structure",
    id = "DateInterval",
    members = {
        StartDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInvoiceUnitInput = {
    type = "structure",
    id = "DeleteInvoiceUnitInput",
    members = {
        InvoiceUnitArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInvoiceUnitOutput = {
    type = "structure",
    id = "DeleteInvoiceUnitOutput",
    members = {
        InvoiceUnitArn = {
            type = "string",
        },
    },
}

M.DeleteProcurementPortalPreferenceInput = {
    type = "structure",
    id = "DeleteProcurementPortalPreferenceInput",
    members = {
        ProcurementPortalPreferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProcurementPortalPreferenceOutput = {
    type = "structure",
    id = "DeleteProcurementPortalPreferenceOutput",
    members = {
        ProcurementPortalPreferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Entity = {
    type = "structure",
    id = "Entity",
    members = {
        InvoicingEntity = {
            type = "string",
        },
    },
}

M.Filters = {
    type = "structure",
    id = "Filters",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        InvoiceReceivers = {
            type = "list",
            member = { type = "string" },
        },
        Accounts = {
            type = "list",
            member = { type = "string" },
        },
        BillSourceAccounts = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetInvoicePDFInput = {
    type = "structure",
    id = "GetInvoicePDFInput",
    members = {
        InvoiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SupplementalDocument = {
    type = "structure",
    id = "SupplementalDocument",
    members = {
        DocumentUrl = {
            type = "string",
        },
        DocumentUrlExpirationDate = {
            type = "timestamp",
        },
    },
}

M.InvoicePDF = {
    type = "structure",
    id = "InvoicePDF",
    members = {
        InvoiceId = {
            type = "string",
        },
        DocumentUrl = {
            type = "string",
        },
        DocumentUrlExpirationDate = {
            type = "timestamp",
        },
        SupplementalDocuments = {
            type = "list",
            member = M.SupplementalDocument,
        },
    },
}

M.GetInvoicePDFOutput = {
    type = "structure",
    id = "GetInvoicePDFOutput",
    members = {
        InvoicePDF = M.InvoicePDF,
    },
}

M.GetInvoiceUnitInput = {
    type = "structure",
    id = "GetInvoiceUnitInput",
    members = {
        InvoiceUnitArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AsOf = {
            type = "timestamp",
        },
    },
}

M.GetInvoiceUnitOutput = {
    type = "structure",
    id = "GetInvoiceUnitOutput",
    members = {
        InvoiceUnitArn = {
            type = "string",
        },
        InvoiceReceiver = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        TaxInheritanceDisabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        Rule = M.InvoiceUnitRule,
        LastModified = {
            type = "timestamp",
        },
    },
}

M.GetProcurementPortalPreferenceInput = {
    type = "structure",
    id = "GetProcurementPortalPreferenceInput",
    members = {
        ProcurementPortalPreferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProcurementPortalPreferenceStatus = {
    PENDING_VERIFICATION = "PENDING_VERIFICATION",
    TEST_INITIALIZED = "TEST_INITIALIZED",
    TEST_INITIALIZATION_FAILED = "TEST_INITIALIZATION_FAILED",
    TEST_FAILED = "TEST_FAILED",
    ACTIVE = "ACTIVE",
    SUSPENDED = "SUSPENDED",
}

M.TestEnvPreference = {
    type = "structure",
    id = "TestEnvPreference",
    members = {
        BuyerDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BuyerIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplierDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplierIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcurementPortalSharedSecret = {
            type = "string",
        },
        ProcurementPortalInstanceEndpoint = {
            type = "string",
        },
        PurchaseOrderRetrievalEndpoint = {
            type = "string",
        },
    },
}

M.ProcurementPortalPreference = {
    type = "structure",
    id = "ProcurementPortalPreference",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcurementPortalPreferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcurementPortalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BuyerDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BuyerIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplierDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplierIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Selector = M.ProcurementPortalPreferenceSelector,
        ProcurementPortalSharedSecret = {
            type = "string",
        },
        ProcurementPortalInstanceEndpoint = {
            type = "string",
        },
        PurchaseOrderRetrievalEndpoint = {
            type = "string",
        },
        TestEnvPreference = M.TestEnvPreference,
        EinvoiceDeliveryEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        EinvoiceDeliveryPreference = M.EinvoiceDeliveryPreference,
        PurchaseOrderRetrievalEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Contacts = {
            type = "list",
            member = M.Contact,
        },
        EinvoiceDeliveryPreferenceStatus = {
            type = "string",
        },
        EinvoiceDeliveryPreferenceStatusReason = {
            type = "string",
        },
        PurchaseOrderRetrievalPreferenceStatus = {
            type = "string",
        },
        PurchaseOrderRetrievalPreferenceStatusReason = {
            type = "string",
        },
        Version = {
            type = "long",
            traits = {
                required = true,
            },
        },
        CreateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetProcurementPortalPreferenceOutput = {
    type = "structure",
    id = "GetProcurementPortalPreferenceOutput",
    members = {
        ProcurementPortalPreference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProcurementPortalPreference }),
    },
}

M.InvoiceCurrencyAmount = {
    type = "structure",
    id = "InvoiceCurrencyAmount",
    members = {
        TotalAmount = {
            type = "string",
        },
        TotalAmountBeforeTax = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        AmountBreakdown = M.AmountBreakdown,
        CurrencyExchangeDetails = M.CurrencyExchangeDetails,
    },
}

M.InvoiceType = {
    INVOICE = "INVOICE",
    CREDIT_MEMO = "CREDIT_MEMO",
}

M.InvoiceSummary = {
    type = "structure",
    id = "InvoiceSummary",
    members = {
        AccountId = {
            type = "string",
        },
        InvoiceId = {
            type = "string",
        },
        IssuedDate = {
            type = "timestamp",
        },
        DueDate = {
            type = "timestamp",
        },
        Entity = M.Entity,
        BillingPeriod = M.BillingPeriod,
        InvoiceType = {
            type = "string",
        },
        OriginalInvoiceId = {
            type = "string",
        },
        PurchaseOrderNumber = {
            type = "string",
        },
        BaseCurrencyAmount = M.InvoiceCurrencyAmount,
        TaxCurrencyAmount = M.InvoiceCurrencyAmount,
        PaymentCurrencyAmount = M.InvoiceCurrencyAmount,
    },
}

M.InvoiceSummariesFilter = {
    type = "structure",
    id = "InvoiceSummariesFilter",
    members = {
        TimeInterval = M.DateInterval,
        BillingPeriod = M.BillingPeriod,
        InvoicingEntity = {
            type = "string",
        },
    },
}

M.ListInvoiceSummariesResourceType = {
    ACCOUNT_ID = "ACCOUNT_ID",
    INVOICE_ID = "INVOICE_ID",
}

M.InvoiceSummariesSelector = {
    type = "structure",
    id = "InvoiceSummariesSelector",
    members = {
        ResourceType = {
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

M.InvoiceUnit = {
    type = "structure",
    id = "InvoiceUnit",
    members = {
        InvoiceUnitArn = {
            type = "string",
        },
        InvoiceReceiver = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        TaxInheritanceDisabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        Rule = M.InvoiceUnitRule,
        LastModified = {
            type = "timestamp",
        },
    },
}

M.ListInvoiceSummariesInput = {
    type = "structure",
    id = "ListInvoiceSummariesInput",
    members = {
        Selector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InvoiceSummariesSelector }),
        Filter = M.InvoiceSummariesFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListInvoiceSummariesOutput = {
    type = "structure",
    id = "ListInvoiceSummariesOutput",
    members = {
        InvoiceSummaries = {
            type = "list",
            member = M.InvoiceSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInvoiceUnitsInput = {
    type = "structure",
    id = "ListInvoiceUnitsInput",
    members = {
        Filters = M.Filters,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 500,
            },
        },
        AsOf = {
            type = "timestamp",
        },
    },
}

M.ListInvoiceUnitsOutput = {
    type = "structure",
    id = "ListInvoiceUnitsOutput",
    members = {
        InvoiceUnits = {
            type = "list",
            member = M.InvoiceUnit,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProcurementPortalPreferencesInput = {
    type = "structure",
    id = "ListProcurementPortalPreferencesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
    },
}

M.ProcurementPortalPreferenceSummary = {
    type = "structure",
    id = "ProcurementPortalPreferenceSummary",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcurementPortalPreferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcurementPortalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BuyerDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BuyerIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplierDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplierIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Selector = M.ProcurementPortalPreferenceSelector,
        EinvoiceDeliveryEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        PurchaseOrderRetrievalEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        EinvoiceDeliveryPreferenceStatus = {
            type = "string",
        },
        EinvoiceDeliveryPreferenceStatusReason = {
            type = "string",
        },
        PurchaseOrderRetrievalPreferenceStatus = {
            type = "string",
        },
        PurchaseOrderRetrievalPreferenceStatusReason = {
            type = "string",
        },
        Version = {
            type = "long",
            traits = {
                required = true,
            },
        },
        CreateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProcurementPortalPreferencesOutput = {
    type = "structure",
    id = "ListProcurementPortalPreferencesOutput",
    members = {
        ProcurementPortalPreferences = {
            type = "list",
            member = M.ProcurementPortalPreferenceSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.PutProcurementPortalPreferenceInput = {
    type = "structure",
    id = "PutProcurementPortalPreferenceInput",
    members = {
        ProcurementPortalPreferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Selector = M.ProcurementPortalPreferenceSelector,
        ProcurementPortalSharedSecret = {
            type = "string",
        },
        ProcurementPortalInstanceEndpoint = {
            type = "string",
        },
        TestEnvPreference = M.TestEnvPreferenceInput,
        EinvoiceDeliveryEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        EinvoiceDeliveryPreference = M.EinvoiceDeliveryPreference,
        PurchaseOrderRetrievalEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Contacts = {
            type = "list",
            member = M.Contact,
            traits = {
                required = true,
            },
        },
    },
}

M.PutProcurementPortalPreferenceOutput = {
    type = "structure",
    id = "PutProcurementPortalPreferenceOutput",
    members = {
        ProcurementPortalPreferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
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
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTagKeys = {
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

M.UpdateInvoiceUnitInput = {
    type = "structure",
    id = "UpdateInvoiceUnitInput",
    members = {
        InvoiceUnitArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        TaxInheritanceDisabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        Rule = M.InvoiceUnitRule,
    },
}

M.UpdateInvoiceUnitOutput = {
    type = "structure",
    id = "UpdateInvoiceUnitOutput",
    members = {
        InvoiceUnitArn = {
            type = "string",
        },
    },
}

M.UpdateProcurementPortalPreferenceStatusInput = {
    type = "structure",
    id = "UpdateProcurementPortalPreferenceStatusInput",
    members = {
        ProcurementPortalPreferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EinvoiceDeliveryPreferenceStatus = {
            type = "string",
        },
        EinvoiceDeliveryPreferenceStatusReason = {
            type = "string",
        },
        PurchaseOrderRetrievalPreferenceStatus = {
            type = "string",
        },
        PurchaseOrderRetrievalPreferenceStatusReason = {
            type = "string",
        },
    },
}

M.UpdateProcurementPortalPreferenceStatusOutput = {
    type = "structure",
    id = "UpdateProcurementPortalPreferenceStatusOutput",
    members = {
        ProcurementPortalPreferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
