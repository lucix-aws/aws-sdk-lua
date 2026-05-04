local M = {}

M.AccessDeniedByMetaException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
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
    members = {
        signupCallbackResult = M.WhatsAppSignupCallbackResult,
        statusCode = {
            type = "integer",
        },
    },
}

M.DependencyException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParametersException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottledRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateWhatsAppMessageTemplateInput = {
    type = "structure",
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

M.LibraryTemplateBodyInputs = {
    type = "structure",
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
    members = {
        metaHeaderHandle = {
            type = "string",
        },
    },
}

M.DeleteWhatsAppMessageMediaInput = {
    type = "structure",
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
    members = {
        success = {
            type = "boolean",
        },
    },
}

M.DeleteWhatsAppMessageTemplateInput = {
    type = "structure",
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
}

M.DisassociateWhatsAppBusinessAccountInput = {
    type = "structure",
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
}

M.GetLinkedWhatsAppBusinessAccountInput = {
    type = "structure",
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
    members = {
        account = M.LinkedWhatsAppBusinessAccount,
    },
}

M.GetLinkedWhatsAppBusinessAccountPhoneNumberInput = {
    type = "structure",
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
    members = {
        phoneNumber = M.WhatsAppPhoneNumberDetail,
        linkedWhatsAppBusinessAccountId = {
            type = "string",
        },
    },
}

M.S3PresignedUrl = {
    type = "structure",
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
    members = {
        template = {
            type = "string",
        },
    },
}

M.LibraryTemplateButtonList = {
    type = "structure",
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
}

M.UpdateWhatsAppMessageTemplateInput = {
    type = "structure",
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
}

M.PostWhatsAppMessageMediaInput = {
    type = "structure",
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
    members = {
        mediaId = {
            type = "string",
        },
    },
}

M.SendWhatsAppMessageInput = {
    type = "structure",
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
    members = {
        messageId = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        statusCode = {
            type = "integer",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
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
    members = {
        statusCode = {
            type = "integer",
        },
    },
}

return M
