local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FulfillmentOptionType = {
    AMAZON_MACHINE_IMAGE = "AMAZON_MACHINE_IMAGE",
    API = "API",
    CLOUDFORMATION_TEMPLATE = "CLOUDFORMATION_TEMPLATE",
    CONTAINER = "CONTAINER",
    HELM = "HELM",
    EKS_ADD_ON = "EKS_ADD_ON",
    EC2_IMAGE_BUILDER_COMPONENT = "EC2_IMAGE_BUILDER_COMPONENT",
    DATA_EXCHANGE = "DATA_EXCHANGE",
    PROFESSIONAL_SERVICES = "PROFESSIONAL_SERVICES",
    SAAS = "SAAS",
    SAGEMAKER_ALGORITHM = "SAGEMAKER_ALGORITHM",
    SAGEMAKER_MODEL = "SAGEMAKER_MODEL",
}

M.AmazonMachineImageOperatingSystem = {
    type = "structure",
    members = {
        operatingSystemFamilyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operatingSystemName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operatingSystemVersion = {
            type = "string",
        },
    },
}

M.AmazonMachineImageRecommendation = {
    type = "structure",
    members = {
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AmazonMachineImageFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionVersion = {
            type = "string",
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operatingSystems = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        recommendation = {
            type = "structure",
        },
        releaseNotes = {
            type = "string",
        },
        usageInstructions = {
            type = "string",
        },
    },
}

M.AwsSupportedService = {
    type = "structure",
    members = {
        supportedServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApiFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageInstructions = {
            type = "string",
        },
        awsSupportedServices = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetListingInput = {
    type = "structure",
    members = {
        listingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SellerInformation = {
    type = "structure",
    members = {
        sellerProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OfferInformation = {
    type = "structure",
    members = {
        offerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        offerName = {
            type = "string",
        },
        sellerOfRecord = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ProductInformation = {
    type = "structure",
    members = {
        productId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        productName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        manufacturer = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListingAssociatedEntity = {
    type = "structure",
    members = {
        product = {
            type = "structure",
        },
        offer = {
            type = "structure",
        },
    },
}

M.ListingBadgeType = {
    AWS_FREE_TIER = "AWS_FREE_TIER",
    FREE_TRIAL = "FREE_TRIAL",
    DEPLOYED_ON_AWS = "DEPLOYED_ON_AWS",
    QUICK_LAUNCH = "QUICK_LAUNCH",
    MULTI_PRODUCT = "MULTI_PRODUCT",
}

M.ListingBadge = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        badgeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Category = {
    type = "structure",
    members = {
        categoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FulfillmentOptionSummary = {
    type = "structure",
    members = {
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PricingModelType = {
    USAGE = "USAGE",
    CONTRACT = "CONTRACT",
    BYOL = "BYOL",
    FREE = "FREE",
}

M.PricingModel = {
    type = "structure",
    members = {
        pricingModelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PricingUnitType = {
    USERS = "USERS",
    HOSTS = "HOSTS",
    BANDWIDTH = "BANDWIDTH",
    DATA = "DATA",
    TIERS = "TIERS",
    REQUESTS = "REQUESTS",
    UNITS = "UNITS",
}

M.PricingUnit = {
    type = "structure",
    members = {
        pricingUnitType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PromotionalEmbeddedImage = {
    type = "structure",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.PromotionalEmbeddedVideo = {
    type = "structure",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        preview = {
            type = "string",
            traits = {
                required = true,
            },
        },
        thumbnail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.PromotionalMedia = {
    type = "union",
    members = {
        embeddedImage = {
            type = "structure",
        },
        embeddedVideo = {
            type = "structure",
        },
    },
}

M.ResourceContentType = {
    EMAIL = "EMAIL",
    PHONE_NUMBER = "PHONE_NUMBER",
    LINK = "LINK",
    OTHER = "OTHER",
}

M.ResourceType = {
    MANUFACTURER_SUPPORT = "MANUFACTURER_SUPPORT",
    MANUFACTURER_INSTRUCTIONS = "MANUFACTURER_INSTRUCTIONS",
}

M.Resource = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
    },
}

M.ReviewSourceId = {
    AWS_MARKETPLACE = "AWS_MARKETPLACE",
}

M.ReviewSourceSummary = {
    type = "structure",
    members = {
        sourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceUrl = {
            type = "string",
        },
        averageRating = {
            type = "string",
            traits = {
                required = true,
            },
        },
        totalReviews = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ReviewSummary = {
    type = "structure",
    members = {
        reviewSourceSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SellerEngagementContentType = {
    LINK = "LINK",
}

M.SellerEngagementType = {
    REQUEST_FOR_PRIVATE_OFFER = "REQUEST_FOR_PRIVATE_OFFER",
    REQUEST_FOR_DEMO = "REQUEST_FOR_DEMO",
}

M.SellerEngagement = {
    type = "structure",
    members = {
        engagementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UseCase = {
    type = "structure",
    members = {
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UseCaseEntry = {
    type = "structure",
    members = {
        useCase = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetListingOutput = {
    type = "structure",
    members = {
        associatedEntities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        badges = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        categories = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        highlights = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        integrationGuide = {
            type = "string",
        },
        listingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        listingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logoThumbnailUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        longDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pricingModels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        pricingUnits = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        promotionalMedia = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        publisher = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        resources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        reviewSummary = {
            type = "structure",
        },
        sellerEngagements = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        shortDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        useCases = {
            type = "list",
            member_type = "structure",
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
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionReason = {
    INVALID_PAGINATION_TOKEN = "INVALID_PAGINATION_TOKEN",
    MALFORMED_REQUEST_PARAMETERS = "MALFORMED_REQUEST_PARAMETERS",
    PAGINATION_LIMIT_EXCEEDED = "PAGINATION_LIMIT_EXCEEDED",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.GetOfferInput = {
    type = "structure",
    members = {
        offerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OfferSetInformation = {
    type = "structure",
    members = {
        offerSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sellerOfRecord = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.OfferAssociatedEntity = {
    type = "structure",
    members = {
        product = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        offerSet = {
            type = "structure",
        },
    },
}

M.PurchaseOptionBadgeType = {
    PRIVATE_PRICING = "PRIVATE_PRICING",
    FUTURE_DATED = "FUTURE_DATED",
    REPLACEMENT_OFFER = "REPLACEMENT_OFFER",
}

M.PurchaseOptionBadge = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        badgeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOfferOutput = {
    type = "structure",
    members = {
        offerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        offerName = {
            type = "string",
        },
        agreementProposalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expirationTime = {
            type = "timestamp",
        },
        availableFromTime = {
            type = "timestamp",
        },
        sellerOfRecord = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        replacementAgreementId = {
            type = "string",
        },
        pricingModel = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        badges = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        associatedEntities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOfferSetInput = {
    type = "structure",
    members = {
        offerSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OfferSetAssociatedEntity = {
    type = "structure",
    members = {
        product = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        offer = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOfferSetOutput = {
    type = "structure",
    members = {
        offerSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        offerSetName = {
            type = "string",
        },
        availableFromTime = {
            type = "timestamp",
        },
        expirationTime = {
            type = "timestamp",
        },
        buyerNotes = {
            type = "string",
        },
        sellerOfRecord = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        badges = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        associatedEntities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOfferTermsInput = {
    type = "structure",
    members = {
        offerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TermType = {
    BYOL_PRICING_TERM = "ByolPricingTerm",
    CONFIGURABLE_UPFRONT_PRICING_TERM = "ConfigurableUpfrontPricingTerm",
    FIXED_UPFRONT_PRICING_TERM = "FixedUpfrontPricingTerm",
    USAGE_BASED_PRICING_TERM = "UsageBasedPricingTerm",
    FREE_TRIAL_PRICING_TERM = "FreeTrialPricingTerm",
    LEGAL_TERM = "LegalTerm",
    PAYMENT_SCHEDULE_TERM = "PaymentScheduleTerm",
    RECURRING_PAYMENT_TERM = "RecurringPaymentTerm",
    RENEWAL_TERM = "RenewalTerm",
    SUPPORT_TERM = "SupportTerm",
    VALIDITY_TERM = "ValidityTerm",
    VARIABLE_PAYMENT_TERM = "VariablePaymentTerm",
}

M.ByolPricingTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RateCardConstraintType = {
    ALLOWED = "Allowed",
    DISALLOWED = "Disallowed",
}

M.Constraints = {
    type = "structure",
    members = {
        multipleDimensionSelection = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quantityConfiguration = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DimensionLabelType = {
    REGION = "Region",
    SAGEMAKER_OPTION = "SagemakerOption",
}

M.DimensionLabel = {
    type = "structure",
    members = {
        labelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        labelValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
    },
}

M.RateCardItem = {
    type = "structure",
    members = {
        dimensionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        dimensionLabels = {
            type = "list",
            member_type = "structure",
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        price = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SelectorType = {
    DURATION = "Duration",
}

M.Selector = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurableUpfrontRateCardItem = {
    type = "structure",
    members = {
        selector = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        constraints = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        rateCard = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurableUpfrontPricingTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rateCards = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GrantItem = {
    type = "structure",
    members = {
        dimensionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        dimensionLabels = {
            type = "list",
            member_type = "structure",
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxQuantity = {
            type = "number",
        },
    },
}

M.FixedUpfrontPricingTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        duration = {
            type = "string",
        },
        price = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grants = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FreeTrialPricingTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        duration = {
            type = "string",
        },
        grants = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LegalDocumentType = {
    CUSTOM_EULA = "CustomEula",
    CUSTOM_DSA = "CustomDsa",
    ENTERPRISE_EULA = "EnterpriseEula",
    STANDARD_EULA = "StandardEula",
    STANDARD_DSA = "StandardDsa",
}

M.DocumentItem = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
    },
}

M.LegalTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documents = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduleItem = {
    type = "structure",
    members = {
        chargeDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        chargeAmount = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PaymentScheduleTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schedule = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BillingPeriodType = {
    MONTHLY = "Monthly",
}

M.RecurringPaymentTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        billingPeriod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        price = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RenewalTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SupportTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        refundPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UsageBasedRateCardItem = {
    type = "structure",
    members = {
        rateCard = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UsageBasedPricingTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rateCards = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidityTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agreementDuration = {
            type = "string",
        },
        agreementEndDate = {
            type = "timestamp",
        },
        agreementStartDate = {
            type = "timestamp",
        },
    },
}

M.VariablePaymentTerm = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxTotalChargeAmount = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OfferTerm = {
    type = "union",
    members = {
        byolPricingTerm = {
            type = "structure",
        },
        configurableUpfrontPricingTerm = {
            type = "structure",
        },
        fixedUpfrontPricingTerm = {
            type = "structure",
        },
        freeTrialPricingTerm = {
            type = "structure",
        },
        legalTerm = {
            type = "structure",
        },
        paymentScheduleTerm = {
            type = "structure",
        },
        recurringPaymentTerm = {
            type = "structure",
        },
        renewalTerm = {
            type = "structure",
        },
        supportTerm = {
            type = "structure",
        },
        usageBasedPricingTerm = {
            type = "structure",
        },
        validityTerm = {
            type = "structure",
        },
        variablePaymentTerm = {
            type = "structure",
        },
    },
}

M.GetOfferTermsOutput = {
    type = "structure",
    members = {
        offerTerms = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetProductInput = {
    type = "structure",
    members = {
        productId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeployedOnAwsStatus = {
    DEPLOYED = "DEPLOYED",
    NOT_DEPLOYED = "NOT_DEPLOYED",
    NOT_APPLICABLE = "NOT_APPLICABLE",
}

M.GetProductOutput = {
    type = "structure",
    members = {
        productId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        productName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deployedOnAws = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shortDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        longDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        manufacturer = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        logoThumbnailUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        categories = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        highlights = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        promotionalMedia = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        resources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        sellerEngagements = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFulfillmentOptionsInput = {
    type = "structure",
    members = {
        productId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CloudFormationFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionVersion = {
            type = "string",
        },
        releaseNotes = {
            type = "string",
        },
        usageInstructions = {
            type = "string",
        },
    },
}

M.ContainerOperatingSystem = {
    type = "structure",
    members = {
        operatingSystemFamilyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operatingSystemName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionVersion = {
            type = "string",
        },
        operatingSystems = {
            type = "list",
            member_type = "structure",
        },
        awsSupportedServices = {
            type = "list",
            member_type = "structure",
        },
        releaseNotes = {
            type = "string",
        },
        usageInstructions = {
            type = "string",
        },
    },
}

M.DataArtifact = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataClassification = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataExchangeFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataArtifacts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Ec2ImageBuilderComponentFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionVersion = {
            type = "string",
        },
        operatingSystems = {
            type = "list",
            member_type = "structure",
        },
        awsSupportedServices = {
            type = "list",
            member_type = "structure",
        },
        releaseNotes = {
            type = "string",
        },
        usageInstructions = {
            type = "string",
        },
    },
}

M.EksAddOnOperatingSystem = {
    type = "structure",
    members = {
        operatingSystemFamilyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operatingSystemName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EksAddOnFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionVersion = {
            type = "string",
        },
        operatingSystems = {
            type = "list",
            member_type = "structure",
        },
        releaseNotes = {
            type = "string",
        },
        usageInstructions = {
            type = "string",
        },
        awsSupportedServices = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.HelmOperatingSystem = {
    type = "structure",
    members = {
        operatingSystemFamilyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operatingSystemName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HelmFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionVersion = {
            type = "string",
        },
        operatingSystems = {
            type = "list",
            member_type = "structure",
        },
        releaseNotes = {
            type = "string",
        },
        awsSupportedServices = {
            type = "list",
            member_type = "structure",
        },
        usageInstructions = {
            type = "string",
        },
    },
}

M.ProfessionalServicesFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SaasFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentUrl = {
            type = "string",
        },
        usageInstructions = {
            type = "string",
        },
    },
}

M.SageMakerAlgorithmRecommendation = {
    type = "structure",
    members = {
        recommendedBatchTransformInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendedRealtimeInferenceInstanceType = {
            type = "string",
        },
        recommendedTrainingInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SageMakerAlgorithmFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionVersion = {
            type = "string",
        },
        releaseNotes = {
            type = "string",
        },
        usageInstructions = {
            type = "string",
        },
        recommendation = {
            type = "structure",
        },
    },
}

M.SageMakerModelRecommendation = {
    type = "structure",
    members = {
        recommendedBatchTransformInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendedRealtimeInferenceInstanceType = {
            type = "string",
        },
    },
}

M.SageMakerModelFulfillmentOption = {
    type = "structure",
    members = {
        fulfillmentOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionVersion = {
            type = "string",
        },
        releaseNotes = {
            type = "string",
        },
        usageInstructions = {
            type = "string",
        },
        recommendation = {
            type = "structure",
        },
    },
}

M.FulfillmentOption = {
    type = "union",
    members = {
        amazonMachineImageFulfillmentOption = {
            type = "structure",
        },
        apiFulfillmentOption = {
            type = "structure",
        },
        cloudFormationFulfillmentOption = {
            type = "structure",
        },
        containerFulfillmentOption = {
            type = "structure",
        },
        helmFulfillmentOption = {
            type = "structure",
        },
        eksAddOnFulfillmentOption = {
            type = "structure",
        },
        ec2ImageBuilderComponentFulfillmentOption = {
            type = "structure",
        },
        dataExchangeFulfillmentOption = {
            type = "structure",
        },
        professionalServicesFulfillmentOption = {
            type = "structure",
        },
        saasFulfillmentOption = {
            type = "structure",
        },
        sageMakerAlgorithmFulfillmentOption = {
            type = "structure",
        },
        sageMakerModelFulfillmentOption = {
            type = "structure",
        },
    },
}

M.ListFulfillmentOptionsOutput = {
    type = "structure",
    members = {
        fulfillmentOptions = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PurchaseOptionFilterType = {
    PRODUCT_ID = "PRODUCT_ID",
    SELLER_OF_RECORD_PROFILE_ID = "SELLER_OF_RECORD_PROFILE_ID",
    PURCHASE_OPTION_TYPE = "PURCHASE_OPTION_TYPE",
    VISIBILITY_SCOPE = "VISIBILITY_SCOPE",
    AVAILABILITY_STATUS = "AVAILABILITY_STATUS",
}

M.PurchaseOptionFilter = {
    type = "structure",
    members = {
        filterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPurchaseOptionsInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PurchaseOptionAssociatedEntity = {
    type = "structure",
    members = {
        product = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        offer = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        offerSet = {
            type = "structure",
        },
    },
}

M.PurchaseOptionType = {
    OFFER = "OFFER",
    OFFERSET = "OFFERSET",
}

M.PurchaseOptionSummary = {
    type = "structure",
    members = {
        purchaseOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        purchaseOptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        purchaseOptionName = {
            type = "string",
        },
        availableFromTime = {
            type = "timestamp",
        },
        expirationTime = {
            type = "timestamp",
        },
        sellerOfRecord = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        badges = {
            type = "list",
            member_type = "structure",
        },
        associatedEntities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPurchaseOptionsOutput = {
    type = "structure",
    members = {
        purchaseOptions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchFacetType = {
    AVERAGE_CUSTOMER_RATING = "AVERAGE_CUSTOMER_RATING",
    CATEGORY = "CATEGORY",
    PUBLISHER = "PUBLISHER",
    FULFILLMENT_OPTION_TYPE = "FULFILLMENT_OPTION_TYPE",
    PRICING_MODEL = "PRICING_MODEL",
    PRICING_UNIT = "PRICING_UNIT",
    DEPLOYED_ON_AWS = "DEPLOYED_ON_AWS",
    NUMBER_OF_PRODUCTS = "NUMBER_OF_PRODUCTS",
}

M.SearchFilterType = {
    MIN_AVERAGE_CUSTOMER_RATING = "MIN_AVERAGE_CUSTOMER_RATING",
    MAX_AVERAGE_CUSTOMER_RATING = "MAX_AVERAGE_CUSTOMER_RATING",
    CATEGORY = "CATEGORY",
    PUBLISHER = "PUBLISHER",
    FULFILLMENT_OPTION_TYPE = "FULFILLMENT_OPTION_TYPE",
    PRICING_MODEL = "PRICING_MODEL",
    PRICING_UNIT = "PRICING_UNIT",
    DEPLOYED_ON_AWS = "DEPLOYED_ON_AWS",
    NUMBER_OF_PRODUCTS = "NUMBER_OF_PRODUCTS",
}

M.SearchFilter = {
    type = "structure",
    members = {
        filterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchFacetsInput = {
    type = "structure",
    members = {
        searchText = {
            type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        facetTypes = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListingFacet = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parent = {
            type = "string",
        },
        count = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchFacetsOutput = {
    type = "structure",
    members = {
        totalResults = {
            type = "number",
            traits = {
                required = true,
            },
        },
        listingFacets = {
            type = "map",
            key_type = "string",
            value_type = "list",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchListingsSortBy = {
    RELEVANCE = "RELEVANCE",
    AVERAGE_CUSTOMER_RATING = "AVERAGE_CUSTOMER_RATING",
}

M.SearchListingsSortOrder = {
    DESCENDING = "DESCENDING",
    ASCENDING = "ASCENDING",
}

M.SearchListingsInput = {
    type = "structure",
    members = {
        searchText = {
            type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListingSummaryAssociatedEntity = {
    type = "structure",
    members = {
        product = {
            type = "structure",
        },
    },
}

M.ListingSummary = {
    type = "structure",
    members = {
        listingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        listingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        publisher = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shortDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logoThumbnailUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        categories = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        badges = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        reviewSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        pricingModels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        pricingUnits = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        associatedEntities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchListingsOutput = {
    type = "structure",
    members = {
        totalResults = {
            type = "number",
            traits = {
                required = true,
            },
        },
        listingSummaries = {
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

return M
