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
            member_type = "structure",
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
            member_type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        phoneNumberParent = {
            type = "string",
        },
        waba = {
            type = "structure",
        },
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
        signupCallback = {
            type = "structure",
        },
        setupFinalization = {
            type = "structure",
        },
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.AssociateWhatsAppBusinessAccountOutput = {
    type = "structure",
    members = {
        signupCallbackResult = {
            type = "structure",
        },
        statusCode = {
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        otpType = {
            type = "string",
        },
        zeroTapTermsAccepted = {
            type = "boolean",
        },
        supportedApps = {
            type = "list",
            member_type = "map",
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
            member_type = "structure",
        },
        libraryTemplateBodyInputs = {
            type = "structure",
        },
    },
}

M.CreateWhatsAppMessageTemplateFromLibraryInput = {
    type = "structure",
    members = {
        metaLibraryTemplate = {
            type = "structure",
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
        sourceS3File = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        phoneNumbers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLinkedWhatsAppBusinessAccountOutput = {
    type = "structure",
    members = {
        account = {
            type = "structure",
        },
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
        phoneNumber = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        destinationS3PresignedUrl = {
            type = "structure",
        },
        destinationS3File = {
            type = "structure",
        },
    },
}

M.GetWhatsAppMessageMediaOutput = {
    type = "structure",
    members = {
        mimeType = {
            type = "string",
        },
        fileSize = {
            type = "number",
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
            member_type = "map",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        templateHeader = {
            type = "string",
        },
        templateBody = {
            type = "string",
        },
        templateButtons = {
            type = "list",
            member_type = "structure",
        },
        templateId = {
            type = "string",
        },
        templateBodyExampleParams = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListWhatsAppTemplateLibraryOutput = {
    type = "structure",
    members = {
        metaLibraryTemplates = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        sourceS3PresignedUrl = {
            type = "structure",
        },
        sourceS3File = {
            type = "structure",
        },
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
            type = "number",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
    },
}

return M
