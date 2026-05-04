local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "AmazonMachineImageOperatingSystem",
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
    id = "AmazonMachineImageRecommendation",
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
    id = "AmazonMachineImageFulfillmentOption",
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
            member = M.AmazonMachineImageOperatingSystem,
            traits = {
                required = true,
            },
        },
        recommendation = M.AmazonMachineImageRecommendation,
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
    id = "AwsSupportedService",
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
    id = "ApiFulfillmentOption",
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
            member = M.AwsSupportedService,
            traits = {
                required = true,
            },
        },
    },
}

M.GetListingInput = {
    type = "structure",
    id = "GetListingInput",
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
    id = "SellerInformation",
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
    id = "OfferInformation",
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
        sellerOfRecord = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SellerInformation }),
    },
}

M.ProductInformation = {
    type = "structure",
    id = "ProductInformation",
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
        manufacturer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SellerInformation }),
    },
}

M.ListingAssociatedEntity = {
    type = "structure",
    id = "ListingAssociatedEntity",
    members = {
        product = M.ProductInformation,
        offer = M.OfferInformation,
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
    id = "ListingBadge",
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
    id = "Category",
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
    id = "FulfillmentOptionSummary",
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
    id = "PricingModel",
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
    id = "PricingUnit",
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
    id = "PromotionalEmbeddedImage",
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
    id = "PromotionalEmbeddedVideo",
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
    id = "PromotionalMedia",
    members = {
        embeddedImage = M.PromotionalEmbeddedImage,
        embeddedVideo = M.PromotionalEmbeddedVideo,
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
    id = "Resource",
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
    id = "ReviewSourceSummary",
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
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ReviewSummary = {
    type = "structure",
    id = "ReviewSummary",
    members = {
        reviewSourceSummaries = {
            type = "list",
            member = M.ReviewSourceSummary,
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
    id = "SellerEngagement",
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
    id = "UseCase",
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
    id = "UseCaseEntry",
    members = {
        useCase = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UseCase }),
    },
}

M.GetListingOutput = {
    type = "structure",
    id = "GetListingOutput",
    members = {
        associatedEntities = {
            type = "list",
            member = M.ListingAssociatedEntity,
            traits = {
                required = true,
            },
        },
        badges = {
            type = "list",
            member = M.ListingBadge,
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
            member = M.Category,
            traits = {
                required = true,
            },
        },
        fulfillmentOptionSummaries = {
            type = "list",
            member = M.FulfillmentOptionSummary,
            traits = {
                required = true,
            },
        },
        highlights = {
            type = "list",
            member = { type = "string" },
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
            member = M.PricingModel,
            traits = {
                required = true,
            },
        },
        pricingUnits = {
            type = "list",
            member = M.PricingUnit,
            traits = {
                required = true,
            },
        },
        promotionalMedia = {
            type = "list",
            member = M.PromotionalMedia,
            traits = {
                required = true,
            },
        },
        publisher = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SellerInformation }),
        resources = {
            type = "list",
            member = M.Resource,
            traits = {
                required = true,
            },
        },
        reviewSummary = M.ReviewSummary,
        sellerEngagements = {
            type = "list",
            member = M.SellerEngagement,
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
            member = M.UseCaseEntry,
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

M.ValidationExceptionReason = {
    INVALID_PAGINATION_TOKEN = "INVALID_PAGINATION_TOKEN",
    MALFORMED_REQUEST_PARAMETERS = "MALFORMED_REQUEST_PARAMETERS",
    PAGINATION_LIMIT_EXCEEDED = "PAGINATION_LIMIT_EXCEEDED",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
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
    id = "GetOfferInput",
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
    id = "OfferSetInformation",
    members = {
        offerSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sellerOfRecord = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SellerInformation }),
    },
}

M.OfferAssociatedEntity = {
    type = "structure",
    id = "OfferAssociatedEntity",
    members = {
        product = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProductInformation }),
        offerSet = M.OfferSetInformation,
    },
}

M.PurchaseOptionBadgeType = {
    PRIVATE_PRICING = "PRIVATE_PRICING",
    FUTURE_DATED = "FUTURE_DATED",
    REPLACEMENT_OFFER = "REPLACEMENT_OFFER",
}

M.PurchaseOptionBadge = {
    type = "structure",
    id = "PurchaseOptionBadge",
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
    id = "GetOfferOutput",
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
        sellerOfRecord = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SellerInformation }),
        replacementAgreementId = {
            type = "string",
        },
        pricingModel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PricingModel }),
        badges = {
            type = "list",
            member = M.PurchaseOptionBadge,
            traits = {
                required = true,
            },
        },
        associatedEntities = {
            type = "list",
            member = M.OfferAssociatedEntity,
            traits = {
                required = true,
            },
        },
    },
}

M.GetOfferSetInput = {
    type = "structure",
    id = "GetOfferSetInput",
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
    id = "OfferSetAssociatedEntity",
    members = {
        product = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProductInformation }),
        offer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OfferInformation }),
    },
}

M.GetOfferSetOutput = {
    type = "structure",
    id = "GetOfferSetOutput",
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
        sellerOfRecord = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SellerInformation }),
        badges = {
            type = "list",
            member = M.PurchaseOptionBadge,
            traits = {
                required = true,
            },
        },
        associatedEntities = {
            type = "list",
            member = M.OfferSetAssociatedEntity,
            traits = {
                required = true,
            },
        },
    },
}

M.GetOfferTermsInput = {
    type = "structure",
    id = "GetOfferTermsInput",
    members = {
        offerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
            },
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
    id = "ByolPricingTerm",
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
    id = "Constraints",
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
    id = "DimensionLabel",
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
    id = "RateCardItem",
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
            member = M.DimensionLabel,
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
    id = "Selector",
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
    id = "ConfigurableUpfrontRateCardItem",
    members = {
        selector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Selector }),
        constraints = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Constraints }),
        rateCard = {
            type = "list",
            member = M.RateCardItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurableUpfrontPricingTerm = {
    type = "structure",
    id = "ConfigurableUpfrontPricingTerm",
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
            member = M.ConfigurableUpfrontRateCardItem,
        },
    },
}

M.GrantItem = {
    type = "structure",
    id = "GrantItem",
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
            member = M.DimensionLabel,
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxQuantity = {
            type = "integer",
        },
    },
}

M.FixedUpfrontPricingTerm = {
    type = "structure",
    id = "FixedUpfrontPricingTerm",
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
            member = M.GrantItem,
            traits = {
                required = true,
            },
        },
    },
}

M.FreeTrialPricingTerm = {
    type = "structure",
    id = "FreeTrialPricingTerm",
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
            member = M.GrantItem,
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
    id = "DocumentItem",
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
    id = "LegalTerm",
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
            member = M.DocumentItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduleItem = {
    type = "structure",
    id = "ScheduleItem",
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
    id = "PaymentScheduleTerm",
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
            member = M.ScheduleItem,
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
    id = "RecurringPaymentTerm",
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
    id = "RenewalTerm",
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
    id = "SupportTerm",
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
    id = "UsageBasedRateCardItem",
    members = {
        rateCard = {
            type = "list",
            member = M.RateCardItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UsageBasedPricingTerm = {
    type = "structure",
    id = "UsageBasedPricingTerm",
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
            member = M.UsageBasedRateCardItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ValidityTerm = {
    type = "structure",
    id = "ValidityTerm",
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
    id = "VariablePaymentTerm",
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
    id = "OfferTerm",
    members = {
        byolPricingTerm = M.ByolPricingTerm,
        configurableUpfrontPricingTerm = M.ConfigurableUpfrontPricingTerm,
        fixedUpfrontPricingTerm = M.FixedUpfrontPricingTerm,
        freeTrialPricingTerm = M.FreeTrialPricingTerm,
        legalTerm = M.LegalTerm,
        paymentScheduleTerm = M.PaymentScheduleTerm,
        recurringPaymentTerm = M.RecurringPaymentTerm,
        renewalTerm = M.RenewalTerm,
        supportTerm = M.SupportTerm,
        usageBasedPricingTerm = M.UsageBasedPricingTerm,
        validityTerm = M.ValidityTerm,
        variablePaymentTerm = M.VariablePaymentTerm,
    },
}

M.GetOfferTermsOutput = {
    type = "structure",
    id = "GetOfferTermsOutput",
    members = {
        offerTerms = {
            type = "list",
            member = M.OfferTerm,
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
    id = "GetProductInput",
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
    id = "GetProductOutput",
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
        manufacturer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SellerInformation }),
        logoThumbnailUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentOptionSummaries = {
            type = "list",
            member = M.FulfillmentOptionSummary,
            traits = {
                required = true,
            },
        },
        categories = {
            type = "list",
            member = M.Category,
            traits = {
                required = true,
            },
        },
        highlights = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        promotionalMedia = {
            type = "list",
            member = M.PromotionalMedia,
            traits = {
                required = true,
            },
        },
        resources = {
            type = "list",
            member = M.Resource,
            traits = {
                required = true,
            },
        },
        sellerEngagements = {
            type = "list",
            member = M.SellerEngagement,
            traits = {
                required = true,
            },
        },
    },
}

M.ListFulfillmentOptionsInput = {
    type = "structure",
    id = "ListFulfillmentOptionsInput",
    members = {
        productId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 25,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CloudFormationFulfillmentOption = {
    type = "structure",
    id = "CloudFormationFulfillmentOption",
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
    id = "ContainerOperatingSystem",
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
    id = "ContainerFulfillmentOption",
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
            member = M.ContainerOperatingSystem,
        },
        awsSupportedServices = {
            type = "list",
            member = M.AwsSupportedService,
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
    id = "DataArtifact",
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
    id = "DataExchangeFulfillmentOption",
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
            member = M.DataArtifact,
        },
    },
}

M.Ec2ImageBuilderComponentFulfillmentOption = {
    type = "structure",
    id = "Ec2ImageBuilderComponentFulfillmentOption",
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
            member = M.ContainerOperatingSystem,
        },
        awsSupportedServices = {
            type = "list",
            member = M.AwsSupportedService,
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
    id = "EksAddOnOperatingSystem",
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
    id = "EksAddOnFulfillmentOption",
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
            member = M.EksAddOnOperatingSystem,
        },
        releaseNotes = {
            type = "string",
        },
        usageInstructions = {
            type = "string",
        },
        awsSupportedServices = {
            type = "list",
            member = M.AwsSupportedService,
        },
    },
}

M.HelmOperatingSystem = {
    type = "structure",
    id = "HelmOperatingSystem",
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
    id = "HelmFulfillmentOption",
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
            member = M.HelmOperatingSystem,
        },
        releaseNotes = {
            type = "string",
        },
        awsSupportedServices = {
            type = "list",
            member = M.AwsSupportedService,
        },
        usageInstructions = {
            type = "string",
        },
    },
}

M.ProfessionalServicesFulfillmentOption = {
    type = "structure",
    id = "ProfessionalServicesFulfillmentOption",
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
    id = "SaasFulfillmentOption",
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
    id = "SageMakerAlgorithmRecommendation",
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
    id = "SageMakerAlgorithmFulfillmentOption",
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
        recommendation = M.SageMakerAlgorithmRecommendation,
    },
}

M.SageMakerModelRecommendation = {
    type = "structure",
    id = "SageMakerModelRecommendation",
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
    id = "SageMakerModelFulfillmentOption",
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
        recommendation = M.SageMakerModelRecommendation,
    },
}

M.FulfillmentOption = {
    type = "union",
    id = "FulfillmentOption",
    members = {
        amazonMachineImageFulfillmentOption = M.AmazonMachineImageFulfillmentOption,
        apiFulfillmentOption = M.ApiFulfillmentOption,
        cloudFormationFulfillmentOption = M.CloudFormationFulfillmentOption,
        containerFulfillmentOption = M.ContainerFulfillmentOption,
        helmFulfillmentOption = M.HelmFulfillmentOption,
        eksAddOnFulfillmentOption = M.EksAddOnFulfillmentOption,
        ec2ImageBuilderComponentFulfillmentOption = M.Ec2ImageBuilderComponentFulfillmentOption,
        dataExchangeFulfillmentOption = M.DataExchangeFulfillmentOption,
        professionalServicesFulfillmentOption = M.ProfessionalServicesFulfillmentOption,
        saasFulfillmentOption = M.SaasFulfillmentOption,
        sageMakerAlgorithmFulfillmentOption = M.SageMakerAlgorithmFulfillmentOption,
        sageMakerModelFulfillmentOption = M.SageMakerModelFulfillmentOption,
    },
}

M.ListFulfillmentOptionsOutput = {
    type = "structure",
    id = "ListFulfillmentOptionsOutput",
    members = {
        fulfillmentOptions = {
            type = "list",
            member = M.FulfillmentOption,
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
    id = "PurchaseOptionFilter",
    members = {
        filterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListPurchaseOptionsInput = {
    type = "structure",
    id = "ListPurchaseOptionsInput",
    members = {
        filters = {
            type = "list",
            member = M.PurchaseOptionFilter,
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 25,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PurchaseOptionAssociatedEntity = {
    type = "structure",
    id = "PurchaseOptionAssociatedEntity",
    members = {
        product = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProductInformation }),
        offer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OfferInformation }),
        offerSet = M.OfferSetInformation,
    },
}

M.PurchaseOptionType = {
    OFFER = "OFFER",
    OFFERSET = "OFFERSET",
}

M.PurchaseOptionSummary = {
    type = "structure",
    id = "PurchaseOptionSummary",
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
        sellerOfRecord = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SellerInformation }),
        badges = {
            type = "list",
            member = M.PurchaseOptionBadge,
        },
        associatedEntities = {
            type = "list",
            member = M.PurchaseOptionAssociatedEntity,
            traits = {
                required = true,
            },
        },
    },
}

M.ListPurchaseOptionsOutput = {
    type = "structure",
    id = "ListPurchaseOptionsOutput",
    members = {
        purchaseOptions = {
            type = "list",
            member = M.PurchaseOptionSummary,
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
    id = "SearchFilter",
    members = {
        filterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SearchFacetsInput = {
    type = "structure",
    id = "SearchFacetsInput",
    members = {
        searchText = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.SearchFilter,
        },
        facetTypes = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListingFacet = {
    type = "structure",
    id = "ListingFacet",
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
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchFacetsOutput = {
    type = "structure",
    id = "SearchFacetsOutput",
    members = {
        totalResults = {
            type = "long",
            traits = {
                required = true,
            },
        },
        listingFacets = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
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
    id = "SearchListingsInput",
    members = {
        searchText = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.SearchFilter,
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 25,
            },
        },
        sortBy = {
            type = "string",
            traits = {
                default = "RELEVANCE",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                default = "DESCENDING",
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListingSummaryAssociatedEntity = {
    type = "structure",
    id = "ListingSummaryAssociatedEntity",
    members = {
        product = M.ProductInformation,
    },
}

M.ListingSummary = {
    type = "structure",
    id = "ListingSummary",
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
        publisher = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SellerInformation }),
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
            member = M.Category,
            traits = {
                required = true,
            },
        },
        fulfillmentOptionSummaries = {
            type = "list",
            member = M.FulfillmentOptionSummary,
            traits = {
                required = true,
            },
        },
        badges = {
            type = "list",
            member = M.ListingBadge,
            traits = {
                required = true,
            },
        },
        reviewSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReviewSummary }),
        pricingModels = {
            type = "list",
            member = M.PricingModel,
            traits = {
                required = true,
            },
        },
        pricingUnits = {
            type = "list",
            member = M.PricingUnit,
            traits = {
                required = true,
            },
        },
        associatedEntities = {
            type = "list",
            member = M.ListingSummaryAssociatedEntity,
            traits = {
                required = true,
            },
        },
    },
}

M.SearchListingsOutput = {
    type = "structure",
    id = "SearchListingsOutput",
    members = {
        totalResults = {
            type = "long",
            traits = {
                required = true,
            },
        },
        listingSummaries = {
            type = "list",
            member = M.ListingSummary,
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
