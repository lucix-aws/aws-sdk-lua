local M = {}

M.AccessDeniedByMetaException = {
    type = "structure",
    id = "AccessDeniedByMetaException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

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

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.WabaPhoneNumberSetupFinalization = {
    type = "structure",
    id = "WabaPhoneNumberSetupFinalization",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        twoFactorPin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataLocalizationRegion = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.WhatsAppBusinessAccountEventDestination = {
    type = "structure",
    id = "WhatsAppBusinessAccountEventDestination",
    members = {
        eventDestinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
    },
}

M.WabaSetupFinalization = {
    type = "structure",
    id = "WabaSetupFinalization",
    members = {
        id = {
            type = "string",
        },
        eventDestinations = {
            type = "list",
            member = M.WhatsAppBusinessAccountEventDestination,
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.WhatsAppSetupFinalization = {
    type = "structure",
    id = "WhatsAppSetupFinalization",
    members = {
        associateInProgressToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        phoneNumbers = {
            type = "list",
            member = M.WabaPhoneNumberSetupFinalization,
            traits = {
                required = true,
            },
        },
        phoneNumberParent = {
            type = "string",
        },
        waba = M.WabaSetupFinalization,
    },
}

M.WhatsAppSignupCallback = {
    type = "structure",
    id = "WhatsAppSignupCallback",
    members = {
        accessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        callbackUrl = {
            type = "string",
        },
    },
}

M.AssociateWhatsAppBusinessAccountInput = {
    type = "structure",
    id = "AssociateWhatsAppBusinessAccountInput",
    members = {
        signupCallback = M.WhatsAppSignupCallback,
        setupFinalization = M.WhatsAppSetupFinalization,
    },
}

M.RegistrationStatus = {
    COMPLETE = "COMPLETE",
    INCOMPLETE = "INCOMPLETE",
}

M.WhatsAppPhoneNumberDetail = {
    type = "structure",
    id = "WhatsAppPhoneNumberDetail",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        phoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        phoneNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metaPhoneNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayPhoneNumberName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        qualityRating = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataLocalizationRegion = {
            type = "string",
        },
    },
}

M.LinkedWhatsAppBusinessAccountIdMetaData = {
    type = "structure",
    id = "LinkedWhatsAppBusinessAccountIdMetaData",
    members = {
        accountName = {
            type = "string",
        },
        registrationStatus = {
            type = "string",
        },
        unregisteredWhatsAppPhoneNumbers = {
            type = "list",
            member = M.WhatsAppPhoneNumberDetail,
        },
        wabaId = {
            type = "string",
        },
    },
}

M.WhatsAppSignupCallbackResult = {
    type = "structure",
    id = "WhatsAppSignupCallbackResult",
    members = {
        associateInProgressToken = {
            type = "string",
        },
        linkedAccountsWithIncompleteSetup = {
            type = "map",
            key = { type = "string" },
            value = M.LinkedWhatsAppBusinessAccountIdMetaData,
        },
    },
}

M.AssociateWhatsAppBusinessAccountOutput = {
    type = "structure",
    id = "AssociateWhatsAppBusinessAccountOutput",
    members = {
        signupCallbackResult = M.WhatsAppSignupCallbackResult,
        statusCode = {
            type = "integer",
        },
    },
}

M.DependencyException = {
    type = "structure",
    id = "DependencyException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParametersException = {
    type = "structure",
    id = "InvalidParametersException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottledRequestException = {
    type = "structure",
    id = "ThrottledRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.CreateWhatsAppMessageTemplateInput = {
    type = "structure",
    id = "CreateWhatsAppMessageTemplateInput",
    members = {
        templateDefinition = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWhatsAppMessageTemplateOutput = {
    type = "structure",
    id = "CreateWhatsAppMessageTemplateOutput",
    members = {
        metaTemplateId = {
            type = "string",
        },
        templateStatus = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
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

M.LibraryTemplateBodyInputs = {
    type = "structure",
    id = "LibraryTemplateBodyInputs",
    members = {
        addContactNumber = {
            type = "boolean",
        },
        addLearnMoreLink = {
            type = "boolean",
        },
        addSecurityRecommendation = {
            type = "boolean",
        },
        addTrackPackageLink = {
            type = "boolean",
        },
        codeExpirationMinutes = {
            type = "integer",
        },
    },
}

M.LibraryTemplateButtonInput = {
    type = "structure",
    id = "LibraryTemplateButtonInput",
    members = {
        type = {
            type = "string",
        },
        phoneNumber = {
            type = "string",
        },
        url = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        otpType = {
            type = "string",
        },
        zeroTapTermsAccepted = {
            type = "boolean",
        },
        supportedApps = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.MetaLibraryTemplate = {
    type = "structure",
    id = "MetaLibraryTemplate",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        libraryTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateCategory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateLanguage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        libraryTemplateButtonInputs = {
            type = "list",
            member = M.LibraryTemplateButtonInput,
        },
        libraryTemplateBodyInputs = M.LibraryTemplateBodyInputs,
    },
}

M.CreateWhatsAppMessageTemplateFromLibraryInput = {
    type = "structure",
    id = "CreateWhatsAppMessageTemplateFromLibraryInput",
    members = {
        metaLibraryTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetaLibraryTemplate }),
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWhatsAppMessageTemplateFromLibraryOutput = {
    type = "structure",
    id = "CreateWhatsAppMessageTemplateFromLibraryOutput",
    members = {
        metaTemplateId = {
            type = "string",
        },
        templateStatus = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.S3File = {
    type = "structure",
    id = "S3File",
    members = {
        bucketName = {
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

M.CreateWhatsAppMessageTemplateMediaInput = {
    type = "structure",
    id = "CreateWhatsAppMessageTemplateMediaInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceS3File = M.S3File,
    },
}

M.CreateWhatsAppMessageTemplateMediaOutput = {
    type = "structure",
    id = "CreateWhatsAppMessageTemplateMediaOutput",
    members = {
        metaHeaderHandle = {
            type = "string",
        },
    },
}

M.DeleteWhatsAppMessageMediaInput = {
    type = "structure",
    id = "DeleteWhatsAppMessageMediaInput",
    members = {
        mediaId = {
            type = "string",
            traits = {
                http_query = "mediaId",
                required = true,
            },
        },
        originationPhoneNumberId = {
            type = "string",
            traits = {
                http_query = "originationPhoneNumberId",
                required = true,
            },
        },
    },
}

M.DeleteWhatsAppMessageMediaOutput = {
    type = "structure",
    id = "DeleteWhatsAppMessageMediaOutput",
    members = {
        success = {
            type = "boolean",
        },
    },
}

M.DeleteWhatsAppMessageTemplateInput = {
    type = "structure",
    id = "DeleteWhatsAppMessageTemplateInput",
    members = {
        metaTemplateId = {
            type = "string",
            traits = {
                http_query = "metaTemplateId",
            },
        },
        deleteAllLanguages = {
            type = "boolean",
            traits = {
                http_query = "deleteAllTemplates",
            },
        },
        id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        templateName = {
            type = "string",
            traits = {
                http_query = "templateName",
                required = true,
            },
        },
    },
}

M.DeleteWhatsAppMessageTemplateOutput = {
    type = "structure",
    id = "DeleteWhatsAppMessageTemplateOutput",
}

M.DisassociateWhatsAppBusinessAccountInput = {
    type = "structure",
    id = "DisassociateWhatsAppBusinessAccountInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
    },
}

M.DisassociateWhatsAppBusinessAccountOutput = {
    type = "structure",
    id = "DisassociateWhatsAppBusinessAccountOutput",
}

M.GetLinkedWhatsAppBusinessAccountInput = {
    type = "structure",
    id = "GetLinkedWhatsAppBusinessAccountInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
    },
}

M.WhatsAppPhoneNumberSummary = {
    type = "structure",
    id = "WhatsAppPhoneNumberSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        phoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        phoneNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metaPhoneNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayPhoneNumberName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        qualityRating = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataLocalizationRegion = {
            type = "string",
        },
    },
}

M.LinkedWhatsAppBusinessAccount = {
    type = "structure",
    id = "LinkedWhatsAppBusinessAccount",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        wabaId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registrationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        linkDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        wabaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventDestinations = {
            type = "list",
            member = M.WhatsAppBusinessAccountEventDestination,
            traits = {
                required = true,
            },
        },
        phoneNumbers = {
            type = "list",
            member = M.WhatsAppPhoneNumberSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.GetLinkedWhatsAppBusinessAccountOutput = {
    type = "structure",
    id = "GetLinkedWhatsAppBusinessAccountOutput",
    members = {
        account = M.LinkedWhatsAppBusinessAccount,
    },
}

M.GetLinkedWhatsAppBusinessAccountPhoneNumberInput = {
    type = "structure",
    id = "GetLinkedWhatsAppBusinessAccountPhoneNumberInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
    },
}

M.GetLinkedWhatsAppBusinessAccountPhoneNumberOutput = {
    type = "structure",
    id = "GetLinkedWhatsAppBusinessAccountPhoneNumberOutput",
    members = {
        phoneNumber = M.WhatsAppPhoneNumberDetail,
        linkedWhatsAppBusinessAccountId = {
            type = "string",
        },
    },
}

M.S3PresignedUrl = {
    type = "structure",
    id = "S3PresignedUrl",
    members = {
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        headers = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetWhatsAppMessageMediaInput = {
    type = "structure",
    id = "GetWhatsAppMessageMediaInput",
    members = {
        mediaId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        originationPhoneNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataOnly = {
            type = "boolean",
        },
        destinationS3PresignedUrl = M.S3PresignedUrl,
        destinationS3File = M.S3File,
    },
}

M.GetWhatsAppMessageMediaOutput = {
    type = "structure",
    id = "GetWhatsAppMessageMediaOutput",
    members = {
        mimeType = {
            type = "string",
        },
        fileSize = {
            type = "long",
        },
    },
}

M.GetWhatsAppMessageTemplateInput = {
    type = "structure",
    id = "GetWhatsAppMessageTemplateInput",
    members = {
        metaTemplateId = {
            type = "string",
            traits = {
                http_query = "metaTemplateId",
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
    },
}

M.GetWhatsAppMessageTemplateOutput = {
    type = "structure",
    id = "GetWhatsAppMessageTemplateOutput",
    members = {
        template = {
            type = "string",
        },
    },
}

M.LibraryTemplateButtonList = {
    type = "structure",
    id = "LibraryTemplateButtonList",
    members = {
        type = {
            type = "string",
        },
        text = {
            type = "string",
        },
        phoneNumber = {
            type = "string",
        },
        url = {
            type = "string",
        },
        otpType = {
            type = "string",
        },
        zeroTapTermsAccepted = {
            type = "boolean",
        },
        supportedApps = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.ListLinkedWhatsAppBusinessAccountsInput = {
    type = "structure",
    id = "ListLinkedWhatsAppBusinessAccountsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.LinkedWhatsAppBusinessAccountSummary = {
    type = "structure",
    id = "LinkedWhatsAppBusinessAccountSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        wabaId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registrationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        linkDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        wabaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventDestinations = {
            type = "list",
            member = M.WhatsAppBusinessAccountEventDestination,
            traits = {
                required = true,
            },
        },
    },
}

M.ListLinkedWhatsAppBusinessAccountsOutput = {
    type = "structure",
    id = "ListLinkedWhatsAppBusinessAccountsOutput",
    members = {
        linkedAccounts = {
            type = "list",
            member = M.LinkedWhatsAppBusinessAccountSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWhatsAppMessageTemplatesInput = {
    type = "structure",
    id = "ListWhatsAppMessageTemplatesInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.TemplateSummary = {
    type = "structure",
    id = "TemplateSummary",
    members = {
        templateName = {
            type = "string",
        },
        metaTemplateId = {
            type = "string",
        },
        templateStatus = {
            type = "string",
        },
        templateQualityScore = {
            type = "string",
        },
        templateLanguage = {
            type = "string",
        },
        templateCategory = {
            type = "string",
        },
    },
}

M.ListWhatsAppMessageTemplatesOutput = {
    type = "structure",
    id = "ListWhatsAppMessageTemplatesOutput",
    members = {
        templates = {
            type = "list",
            member = M.TemplateSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWhatsAppTemplateLibraryInput = {
    type = "structure",
    id = "ListWhatsAppTemplateLibraryInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MetaLibraryTemplateDefinition = {
    type = "structure",
    id = "MetaLibraryTemplateDefinition",
    members = {
        templateName = {
            type = "string",
        },
        templateLanguage = {
            type = "string",
        },
        templateCategory = {
            type = "string",
        },
        templateTopic = {
            type = "string",
        },
        templateUseCase = {
            type = "string",
        },
        templateIndustry = {
            type = "list",
            member = { type = "string" },
        },
        templateHeader = {
            type = "string",
        },
        templateBody = {
            type = "string",
        },
        templateButtons = {
            type = "list",
            member = M.LibraryTemplateButtonList,
        },
        templateId = {
            type = "string",
        },
        templateBodyExampleParams = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListWhatsAppTemplateLibraryOutput = {
    type = "structure",
    id = "ListWhatsAppTemplateLibraryOutput",
    members = {
        metaLibraryTemplates = {
            type = "list",
            member = M.MetaLibraryTemplateDefinition,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutWhatsAppBusinessAccountEventDestinationsInput = {
    type = "structure",
    id = "PutWhatsAppBusinessAccountEventDestinationsInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventDestinations = {
            type = "list",
            member = M.WhatsAppBusinessAccountEventDestination,
            traits = {
                required = true,
            },
        },
    },
}

M.PutWhatsAppBusinessAccountEventDestinationsOutput = {
    type = "structure",
    id = "PutWhatsAppBusinessAccountEventDestinationsOutput",
}

M.UpdateWhatsAppMessageTemplateInput = {
    type = "structure",
    id = "UpdateWhatsAppMessageTemplateInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metaTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameterFormat = {
            type = "string",
        },
        templateCategory = {
            type = "string",
        },
        templateComponents = {
            type = "blob",
        },
        ctaUrlLinkTrackingOptedOut = {
            type = "boolean",
        },
    },
}

M.UpdateWhatsAppMessageTemplateOutput = {
    type = "structure",
    id = "UpdateWhatsAppMessageTemplateOutput",
}

M.PostWhatsAppMessageMediaInput = {
    type = "structure",
    id = "PostWhatsAppMessageMediaInput",
    members = {
        originationPhoneNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceS3PresignedUrl = M.S3PresignedUrl,
        sourceS3File = M.S3File,
    },
}

M.PostWhatsAppMessageMediaOutput = {
    type = "structure",
    id = "PostWhatsAppMessageMediaOutput",
    members = {
        mediaId = {
            type = "string",
        },
    },
}

M.SendWhatsAppMessageInput = {
    type = "structure",
    id = "SendWhatsAppMessageInput",
    members = {
        originationPhoneNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        metaApiVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendWhatsAppMessageOutput = {
    type = "structure",
    id = "SendWhatsAppMessageOutput",
    members = {
        messageId = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        statusCode = {
            type = "integer",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
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
    id = "TagResourceOutput",
    members = {
        statusCode = {
            type = "integer",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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
    members = {
        statusCode = {
            type = "integer",
        },
    },
}

return M
