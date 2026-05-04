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

M.ActivateSubscriptionInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SubscriptionStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.SubscriptionDescription = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        activatedAt = {
            type = "timestamp",
        },
        deactivatedAt = {
            type = "timestamp",
        },
    },
}

M.ActivateSubscriptionOutput = {
    type = "structure",
    members = {
        subscription = {
            type = "structure",
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PostStreamArtifactGenerationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.ArtifactDetails = {
    type = "structure",
    members = {
        outputLocation = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ClinicalNoteGenerationResult = {
    type = "structure",
    members = {
        noteResult = {
            type = "structure",
        },
        transcriptResult = {
            type = "structure",
        },
        afterVisitSummaryResult = {
            type = "structure",
        },
    },
}

M.TemplateSectionInstruction = {
    type = "structure",
    members = {
        sectionHeader = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sectionInstruction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomTemplateBase = {
    HISTORY_AND_PHYSICAL = "HISTORY_AND_PHYSICAL",
    GIRPP = "GIRPP",
    DAP = "DAP",
    SIRP = "SIRP",
    BIRP = "BIRP",
    BEHAVIORAL_SOAP = "BEHAVIORAL_SOAP",
}

M.CustomTemplate = {
    type = "structure",
    members = {
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateInstructions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedNoteTemplate = {
    HISTORY_AND_PHYSICAL = "HISTORY_AND_PHYSICAL",
    GIRPP = "GIRPP",
    DAP = "DAP",
    SIRP = "SIRP",
    BIRP = "BIRP",
    BEHAVIORAL_SOAP = "BEHAVIORAL_SOAP",
    PHYSICAL_SOAP = "PHYSICAL_SOAP",
}

M.ManagedTemplate = {
    type = "structure",
    members = {
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NoteTemplateSettings = {
    type = "union",
    members = {
        managedTemplate = {
            type = "structure",
        },
        customTemplate = {
            type = "structure",
        },
    },
}

M.ClinicalNoteGenerationSettings = {
    type = "structure",
    members = {
        noteTemplateSettings = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomTemplateResponse = {
    type = "structure",
    members = {
        templateType = {
            type = "string",
        },
    },
}

M.ManagedTemplateResponse = {
    type = "structure",
    members = {
        templateType = {
            type = "string",
        },
    },
}

M.NoteTemplateSettingsResponse = {
    type = "union",
    members = {
        managedTemplate = {
            type = "structure",
        },
        customTemplate = {
            type = "structure",
        },
    },
}

M.ClinicalNoteGenerationSettingsResponse = {
    type = "structure",
    members = {
        noteTemplateSettings = {
            type = "union",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateWebAppConfiguration = {
    type = "structure",
    members = {
        ehrRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDomainInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        webAppSetupConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.EncryptionType = {
    AWS_OWNED_KEY = "AWS_OWNED_KEY",
    CUSTOMER_MANAGED_KEY = "CUSTOMER_MANAGED_KEY",
}

M.EncryptionContext = {
    type = "structure",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.DomainStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.WebAppConfiguration = {
    type = "structure",
    members = {
        ehrRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDomainOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        encryptionContext = {
            type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        webAppUrl = {
            type = "string",
        },
        webAppConfiguration = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateSubscriptionInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateSubscriptionOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        activatedAt = {
            type = "timestamp",
        },
        deactivatedAt = {
            type = "timestamp",
        },
    },
}

M.DeactivateSubscriptionInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeactivateSubscriptionOutput = {
    type = "structure",
    members = {
        subscription = {
            type = "structure",
        },
    },
}

M.DeleteDomainInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
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

M.GetDomainInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDomainOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        encryptionContext = {
            type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        webAppUrl = {
            type = "string",
        },
        webAppConfiguration = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetMedicalScribeListeningSessionInput = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MedicalScribeParticipantRole = {
    PATIENT = "PATIENT",
    CLINICIAN = "CLINICIAN",
}

M.MedicalScribeChannelDefinition = {
    type = "structure",
    members = {
        channelId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        participantRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MedicalScribeLanguageCode = {
    EN_US = "en-US",
}

M.MedicalScribeMediaEncoding = {
    PCM = "pcm",
    FLAC = "flac",
}

M.MedicalScribePostStreamActionsResult = {
    type = "structure",
    members = {
        clinicalNoteGenerationResult = {
            type = "structure",
        },
    },
}

M.MedicalScribePostStreamActionSettingsResponse = {
    type = "structure",
    members = {
        outputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clinicalNoteGenerationSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MedicalScribeStreamStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    PAUSED = "PAUSED",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.MedicalScribeListeningSessionDetails = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
        },
        domainId = {
            type = "string",
        },
        subscriptionId = {
            type = "string",
        },
        languageCode = {
            type = "string",
        },
        mediaSampleRateHertz = {
            type = "number",
        },
        mediaEncoding = {
            type = "string",
        },
        channelDefinitions = {
            type = "list",
            member_type = "structure",
        },
        postStreamActionSettings = {
            type = "structure",
        },
        postStreamActionResult = {
            type = "structure",
        },
        encounterContextProvided = {
            type = "boolean",
        },
        streamStatus = {
            type = "string",
        },
        streamCreationTime = {
            type = "timestamp",
        },
        streamEndTime = {
            type = "timestamp",
        },
    },
}

M.GetMedicalScribeListeningSessionOutput = {
    type = "structure",
    members = {
        medicalScribeListeningSessionDetails = {
            type = "structure",
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

M.GetPatientInsightsJobInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PatientInsightsEncounterContext = {
    type = "structure",
    members = {
        encounterReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FHIRServer = {
    type = "structure",
    members = {
        fhirEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        oauthToken = {
            type = "string",
        },
    },
}

M.S3Source = {
    type = "structure",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputDataConfig = {
    type = "structure",
    members = {
        fhirServer = {
            type = "structure",
        },
        s3Sources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InsightsType = {
    PRE_VISIT = "PRE_VISIT",
}

M.InsightsContext = {
    type = "structure",
    members = {
        insightsType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InsightsOutput = {
    type = "structure",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.OutputDataConfig = {
    type = "structure",
    members = {
        s3OutputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Pronouns = {
    HE_HIM = "HE_HIM",
    SHE_HER = "SHE_HER",
    THEY_THEM = "THEY_THEM",
}

M.PatientInsightsPatientContext = {
    type = "structure",
    members = {
        patientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dateOfBirth = {
            type = "string",
        },
        pronouns = {
            type = "string",
        },
    },
}

M.ProviderRole = {
    CLINICIAN = "CLINICIAN",
}

M.Specialty = {
    PRIMARY_CARE = "PRIMARY_CARE",
}

M.UserContext = {
    type = "structure",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specialty = {
            type = "string",
        },
    },
}

M.GetPatientInsightsJobOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        insightsOutput = {
            type = "structure",
        },
        statusDetails = {
            type = "string",
        },
        patientContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        insightsContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        encounterContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        userContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        inputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        outputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSubscriptionInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSubscriptionOutput = {
    type = "structure",
    members = {
        subscription = {
            type = "structure",
        },
    },
}

M.ListDomainsInput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.DomainSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    members = {
        domains = {
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

M.ListSubscriptionsInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListSubscriptionsOutput = {
    type = "structure",
    members = {
        subscriptions = {
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

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.MedicalScribeAudioEvent = {
    type = "structure",
    members = {
        audioChunk = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.EncounterContext = {
    type = "structure",
    members = {
        unstructuredContext = {
            type = "string",
        },
    },
}

M.MedicalScribePostStreamActionSettings = {
    type = "structure",
    members = {
        outputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clinicalNoteGenerationSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MedicalScribeConfigurationEvent = {
    type = "structure",
    members = {
        postStreamActionSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        channelDefinitions = {
            type = "list",
            member_type = "structure",
        },
        encounterContext = {
            type = "structure",
        },
    },
}

M.MedicalScribeSessionControlEventType = {
    END_OF_SESSION = "END_OF_SESSION",
}

M.MedicalScribeSessionControlEvent = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
    },
}

M.MedicalScribeInputStream = {
    type = "union",
    members = {
        audioEvent = {
            type = "structure",
        },
        sessionControlEvent = {
            type = "structure",
        },
        configurationEvent = {
            type = "structure",
        },
    },
}

M.StartMedicalScribeListeningSessionInput = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-session-id",
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-domain-id",
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-subscription-id",
                required = true,
            },
        },
        languageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-language-code",
                required = true,
            },
        },
        mediaSampleRateHertz = {
            type = "number",
            traits = {
                http_header = "x-amzn-medscribe-sample-rate",
                required = true,
            },
        },
        mediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-media-encoding",
                required = true,
            },
        },
        inputStream = {
            type = "union",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.MedicalScribeTranscriptSegment = {
    type = "structure",
    members = {
        segmentId = {
            type = "string",
        },
        audioBeginOffset = {
            type = "number",
        },
        audioEndOffset = {
            type = "number",
        },
        isPartial = {
            type = "boolean",
        },
        channelId = {
            type = "string",
        },
        content = {
            type = "string",
        },
    },
}

M.MedicalScribeTranscriptEvent = {
    type = "structure",
    members = {
        transcriptSegment = {
            type = "structure",
        },
    },
}

M.MedicalScribeOutputStream = {
    type = "union",
    members = {
        transcriptEvent = {
            type = "structure",
        },
        internalFailureException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
    },
}

M.StartMedicalScribeListeningSessionOutput = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-session-id",
            },
        },
        domainId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-domain-id",
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-subscription-id",
            },
        },
        requestId = {
            type = "string",
            traits = {
                http_header = "x-amzn-request-id",
            },
        },
        languageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-language-code",
            },
        },
        mediaSampleRateHertz = {
            type = "number",
            traits = {
                http_header = "x-amzn-medscribe-sample-rate",
            },
        },
        mediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-media-encoding",
            },
        },
        responseStream = {
            type = "union",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.StartPatientInsightsJobInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patientContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        insightsContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        encounterContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        userContext = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        inputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        outputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartPatientInsightsJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
